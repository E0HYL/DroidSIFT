package mySoot.preprocessor;

import java.util.*;


//import com.android.dx.decoder.*;

public class DexFile {

	private DexHeader header;
	private DexStringIds stringIds;
	private DexTypeIds typeIds;
	private DexProtoIds protoIds;
	private DexFieldIds fieldIds;
	private DexMethodIds methodIds;
	private DexClassDefs classDefs;
	
	public static LinkedHashMap<Integer, String> definedClasses = new LinkedHashMap<Integer, String>();
	public static LinkedHashMap<Integer, String> definedMethods = new LinkedHashMap<Integer, String>();
	
	public static LinkedHashMap<Integer, String> usedClasses = new LinkedHashMap<Integer, String>();
	public static LinkedHashMap<Integer, String> usedMethods = new LinkedHashMap<Integer, String>();
	public static LinkedHashMap<Integer, List<String>> usedHostClasses = new LinkedHashMap<Integer, List<String>>();
	
	public static List<String> removedClasses = new ArrayList<String>();

	public DexFile() {
		this.header = new DexHeader();
		this.stringIds = new DexStringIds();
		this.typeIds = new DexTypeIds();
		this.protoIds = new DexProtoIds();
		this.fieldIds = new DexFieldIds();
		this.methodIds = new DexMethodIds();
		this.classDefs = new DexClassDefs();
	}
	
	public DexHeader getHeader() {
		return this.header;
	}

	public DexStringIds getStringIds() {
		return this.stringIds;
	}

	public DexTypeIds getTypeIds() {
		return this.typeIds;
	}

	public DexProtoIds getProtoIds() {
		return this.protoIds;
	}

	public DexFieldIds getFieldIds() {
		return this.fieldIds;
	}

	public DexMethodIds getMethodIds() {
		return this.methodIds;
	}

	public DexClassDefs getClassDefs() {
		return this.classDefs;
	}

	public void parse(byte[] bytes) {
		long offset = 0;
		offset = this.header.parse(bytes, offset);
		this.stringIds.parse(bytes, header.getStringIdsOff(), header.getStringIdsSize());
		this.typeIds.parse(bytes, header.getTypeIdsOff(), header.getTypeIdsSize());
		this.protoIds.parse(bytes, header.getProtoIdsOff(), header.getProtoIdsSize());
		this.fieldIds.parse(bytes, header.getFieldIdsOff(), header.getFieldIdsSize());
		this.methodIds.parse(bytes, header.getMethodIdsOff(), header.getMethodIdsSize());
		this.classDefs.parse(bytes, header.getClassDefsOff(), header.getClassDefsSize());
	}
	
	//out-dated, do not use
	public void traverse(){
		DexClassDefs classDefs = this.getClassDefs();
		Vector<DexClassDefItem> classDefItems = classDefs.getClassDefs();

		int lastDirectIdx = 0;
		int lastVirtualIdx = 0;

		long sizeOfClasses = this.getHeader().getClassDefsSize();

		for (int i = 0; i < (int) sizeOfClasses; i++) {

			DexClassDefItem classDefItem = (DexClassDefItem) classDefItems.elementAt(i);
			
			long classIdx = classDefItem.getClassIdx();
			String className = getClassNameByClassId((int)classIdx);
			//System.out.println("class = " + className);
			definedClasses.put(new Integer((int)classIdx), className);
			
			DexClassDataItem classDataItem = classDefItem.getClassDataItem();
			int directMethodsSize = classDataItem.getDirectMethodsSize();
			int virtualMethodsSize = classDataItem.getVirtualMethodsSize();
			Vector<DexEncodedMethod> directMethods = classDataItem.getDirectMethods();
			Vector<DexEncodedMethod> virtualMethods = classDataItem.getVirtualMethods();

			lastDirectIdx = 0;
			lastVirtualIdx = 0;

			for (int j = 0; j < directMethodsSize; j++) {

				DexEncodedMethod directMethod = (DexEncodedMethod) directMethods.elementAt(j);				
				
				if (j == 0) {
					lastDirectIdx = directMethod.getMethodIdxDiff();
				} else {
					lastDirectIdx += directMethod.getMethodIdxDiff();
				}
				
				String directMtdProto = getClassNameByMethodId(lastDirectIdx) + getMethodNameByMethodId(lastDirectIdx) 
						+ ";" + getMethodProtoByMethodId(lastDirectIdx);
				//System.out.println("direct method #" + lastDirectIdx + ": " + directMtdProto);
				if(definedMethods.containsKey(new Integer(lastDirectIdx))){
					System.err.println("CONFLICT: #" + lastDirectIdx + " " + definedMethods.get(new Integer(lastDirectIdx)));
				}else{
					definedMethods.put(new Integer(lastDirectIdx), directMtdProto);
				}
				
				DexCodeItem codeItem = directMethod.getCodeItem();
				LinkedHashMap<Integer, DexDecodedInsn> insns = codeItem.getDecodedInsns();
				if(insns!=null){
					Set<Integer> keySet = insns.keySet();
					Iterator<Integer> iter = keySet.iterator();
					while(iter.hasNext()){
						Integer insnIndex = iter.next();
						DexDecodedInsn insn = insns.get(insnIndex);
						if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE){
							int calleeIdx = (int) insn.getVC();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							usedClasses.put(new Integer(calleeClassIdx), callClass);
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}
							
						}else if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE_RANGE){
							int calleeIdx = (int) insn.getVB();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							usedClasses.put(new Integer(calleeClassIdx), callClass);
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}							
						}
					}
				}
			}
			for (int k = 0; k < virtualMethodsSize; k++) {
				
				DexEncodedMethod virtualMethod = (DexEncodedMethod) virtualMethods.elementAt(k);
				
				if (k == 0) {
					lastVirtualIdx = virtualMethod.getMethodIdxDiff();
				} else {
					lastVirtualIdx += virtualMethod.getMethodIdxDiff();
				}

				String virtualMtdProto = getClassNameByMethodId(lastVirtualIdx) + getMethodNameByMethodId(lastVirtualIdx) 
						+ ";" + getMethodProtoByMethodId(lastVirtualIdx);
				//System.out.println("virtual method #" + lastVirtualIdx + ": " + virtualMtdProto);
				if(definedMethods.containsKey(new Integer(lastVirtualIdx))){
					System.err.println("CONFLICT: #" + lastVirtualIdx + " " + definedMethods.get(new Integer(lastVirtualIdx)));
				}else{
					definedMethods.put(new Integer(lastVirtualIdx), virtualMtdProto);
				}
				
				DexCodeItem codeItem = virtualMethod.getCodeItem();
				LinkedHashMap<Integer, DexDecodedInsn> insns = codeItem.getDecodedInsns();
				if(insns!=null){
					Set<Integer> keySet = insns.keySet();
					Iterator<Integer> iter = keySet.iterator();
					while(iter.hasNext()){
						Integer insnIndex = iter.next();
						DexDecodedInsn insn = insns.get(insnIndex);
						if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE){
							int calleeIdx = (int) insn.getVC();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							usedClasses.put(new Integer(calleeClassIdx), callClass);
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}
							
						}else if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE_RANGE){
							int calleeIdx = (int) insn.getVB();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							usedClasses.put(new Integer(calleeClassIdx), callClass);
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}							
						}
					}
				}
			}

		}
	}
	
	public void findMissingClasses(){
		/*
		System.out.println("BEGIN defined classes");
		Set<Integer> idxSet = definedClasses.keySet();
		Iterator<Integer> idxIter = idxSet.iterator();
		while(idxIter.hasNext()){
			Integer idx = idxIter.next();
			String clazz = definedClasses.get(idx);
			System.out.println("defined #" + idx + " " + clazz);
		}
		System.out.println("END defined classes");
		
		System.out.println("BEGIN used classes");
		Set<Integer> uidxSet = usedClasses.keySet();
		Iterator<Integer> uidxIter = uidxSet.iterator();
		while(uidxIter.hasNext()){
			Integer idx = uidxIter.next();
			String clazz = usedClasses.get(idx);
			System.out.println("used #" + idx + " " + clazz);
		}
		System.out.println("END used classes");
		*/
		Set<Integer> usedKeySet = usedClasses.keySet();
		Iterator<Integer> usedIter = usedKeySet.iterator();
		while(usedIter.hasNext()){
			Integer usedIndex = usedIter.next();
			String usedClass = usedClasses.get(usedIndex);
			//if(!definedClasses.containsKey(usedIndex)){
				//System.out.println("index: " + usedIndex);
				//String usedClass = usedClasses.get(usedIndex);
				
				//assert
				//if(definedClasses.containsValue(usedClass)){
				//	System.err.println("ERROR: usedClass " + usedClass + " is there!");
				//}
			
			//handle array
			if(usedClass.startsWith("[")){
				usedClass = usedClass.substring(1);
			}
			if(!definedClasses.containsValue(usedClass)){				
				
				if(usedClass.startsWith("Landroid/")						//android framework classes
						|| usedClass.startsWith("Ljava/")
						|| usedClass.startsWith("Ldalvik/bytecode/")
						|| usedClass.startsWith("Ldalvik/system/")
						|| usedClass.startsWith("Ljavax/")
						|| usedClass.startsWith("Ljunit/framework/")
						|| usedClass.startsWith("Ljunit/runner/")
						|| usedClass.startsWith("Lorg/apache/")
						|| usedClass.startsWith("Lorg/json/")
						|| usedClass.startsWith("Lorg/w3c/dom/")
						|| usedClass.startsWith("Lorg/xml/sax/")
						|| usedClass.startsWith("Lorg/xmlpull/v1/")
						
						|| usedClass.equals("V")							//short descriptor of primitive type
						|| usedClass.equals("Z")
						|| usedClass.equals("B")
						|| usedClass.equals("S")
						|| usedClass.equals("C")
						|| usedClass.equals("I")
						|| usedClass.equals("J")
						|| usedClass.equals("F")
						|| usedClass.equals("D")
						){
					//System.out.println("Defined in Framework: " + usedClass);
				}else{
					System.out.println("Missing: " + usedClass + " [called in " + dumpList(usedHostClasses.get(usedIndex)) + "]");					
				}
			}
		}
	}
	
	public void traverseRemainingClasses(){
		definedClasses.clear();
		definedMethods.clear();
		usedClasses.clear();
		usedMethods.clear();
		usedHostClasses.clear();		
		
		DexClassDefs classDefs = this.getClassDefs();
		Vector<DexClassDefItem> classDefItems = classDefs.getClassDefs();

		int lastDirectIdx = 0;
		int lastVirtualIdx = 0;
		int lastInstanceIdx = 0;
		int lastStaticIdx = 0;

		long sizeOfClasses = this.getHeader().getClassDefsSize();

		for (int i = 0; i < (int) sizeOfClasses; i++) {

			DexClassDefItem classDefItem = (DexClassDefItem) classDefItems.elementAt(i);
			
			long classIdx = classDefItem.getClassIdx();
			String className = getClassNameByClassId((int)classIdx);
			if(removedClasses.contains(className)){
				continue;
			}
			//System.out.println("class = " + className);
			definedClasses.put(new Integer((int)classIdx), className);	
			
			//super classes
			int superIdx = (int) classDefItem.getSuperClassIdx();
			String superName = getClassNameByClassId(superIdx);
			if(!usedClasses.containsKey(new Integer(superIdx))){
				usedClasses.put(new Integer(superIdx), superName);
			}
			if(usedHostClasses.containsKey(new Integer(superIdx))){
				List<String> hostClasses = usedHostClasses.get(new Integer(superIdx));
				if(!hostClasses.contains(className)){
					hostClasses.add(className);
				}
			}else{
				List<String> hostClasses = new ArrayList<String>();
				hostClasses.add(className);
				usedHostClasses.put(new Integer(superIdx), hostClasses);
			}
			
			//interfaces
			DexTypeList interfaceTypes = classDefItem.getInterfaceTypes();
			Vector<DexTypeList.DexTypeItem> list = interfaceTypes.getList();
			for(DexTypeList.DexTypeItem item : list){
				int interfaceId = item.getTypeIdx();
				String interfaze = stringIds.getStringAt((int)typeIds.getDescriptorIdxAt(interfaceId));
				
				if(!usedClasses.containsKey(new Integer(interfaceId))){
					usedClasses.put(new Integer(interfaceId), interfaze);
				}
				if(usedHostClasses.containsKey(new Integer(interfaceId))){
					List<String> hostClasses = usedHostClasses.get(new Integer(interfaceId));
					if(!hostClasses.contains(className)){
						hostClasses.add(className);
					}
				}else{
					List<String> hostClasses = new ArrayList<String>();
					hostClasses.add(className);
					usedHostClasses.put(new Integer(interfaceId), hostClasses);
				}
			}
				
			
			DexClassDataItem classDataItem = classDefItem.getClassDataItem();
			
			int instanceFieldsSize = classDataItem.getInstanceFieldsSize();
			int staticFieldsSize = classDataItem.getStaticFieldsSize();
			Vector<DexEncodedField> instanceFields = classDataItem.getInstanceFields();
			Vector<DexEncodedField> staticFields = classDataItem.getStaticFields();
			
			lastInstanceIdx = 0;
			lastStaticIdx = 0;			
			
			for (int k = 0; k < instanceFieldsSize; k++){
				DexEncodedField instanceField = (DexEncodedField) instanceFields.elementAt(k);
				
				if(k == 0) {
					lastInstanceIdx = instanceField.getFieldIdxDiff();
				} else {
					lastInstanceIdx += instanceField.getFieldIdxDiff();
				}
				
				int idx = getClassIdByFieldId(lastInstanceIdx);
				String type = getClassNameByFieldId(lastInstanceIdx);
				//String fieldName = stringIds.getStringAt((int)fieldIds.getNameIdAt(lastInstanceIdx));
				//System.out.println("ifield #" + lastInstanceIdx + "class #" + idx + " " + (int)fieldIds.getNameIdAt(lastInstanceIdx) + " type: " + type
				//		+ " from: " + className + " " + getHostClassNameByFieldId(lastInstanceIdx)
				//		+ "|" + fieldIds.getTypeIdxAt(lastInstanceIdx) + fieldIds.getClassIdxAt(lastInstanceIdx));
				
				if(!usedClasses.containsKey(new Integer(idx))){
					usedClasses.put(new Integer(idx), type);
				}
				if(usedHostClasses.containsKey(new Integer(idx))){
					List<String> hostClasses = usedHostClasses.get(new Integer(idx));
					if(!hostClasses.contains(className)){
						hostClasses.add(className);
					}
				}else{
					List<String> hostClasses = new ArrayList<String>();
					hostClasses.add(className);
					usedHostClasses.put(new Integer(idx), hostClasses);
				}
			}
			
			for (int k = 0; k < staticFieldsSize; k++){
				DexEncodedField staticField = (DexEncodedField) staticFields.elementAt(k);
				
				if(k == 0) {
					lastStaticIdx = staticField.getFieldIdxDiff();
				} else {
					lastStaticIdx += staticField.getFieldIdxDiff();
				}
				
				int idx = getClassIdByFieldId(lastStaticIdx);
				String type = getClassNameByFieldId(lastStaticIdx);
				//String fieldName = stringIds.getStringAt((int)fieldIds.getNameIdAt(lastStaticIdx));
				//System.out.println("sfield #" + lastStaticIdx + " class #" + idx + " " + (int)fieldIds.getNameIdAt(lastStaticIdx) + " type: " + type
				//		+ " from: " + className + " " + getHostClassNameByFieldId(lastStaticIdx) 
				//		+ "|" + fieldIds.getTypeIdxAt(lastStaticIdx) + fieldIds.getClassIdxAt(lastStaticIdx));
				
				if(!usedClasses.containsKey(new Integer(idx))){
					usedClasses.put(new Integer(idx), type);
				}
				if(usedHostClasses.containsKey(new Integer(idx))){
					List<String> hostClasses = usedHostClasses.get(new Integer(idx));
					if(!hostClasses.contains(className)){
						hostClasses.add(className);
					}
				}else{
					List<String> hostClasses = new ArrayList<String>();
					hostClasses.add(className);
					usedHostClasses.put(new Integer(idx), hostClasses);
				}
			}
			
			
			
			int directMethodsSize = classDataItem.getDirectMethodsSize();
			int virtualMethodsSize = classDataItem.getVirtualMethodsSize();
			Vector<DexEncodedMethod> directMethods = classDataItem.getDirectMethods();
			Vector<DexEncodedMethod> virtualMethods = classDataItem.getVirtualMethods();

			lastDirectIdx = 0;
			lastVirtualIdx = 0;

			for (int j = 0; j < directMethodsSize; j++) {

				DexEncodedMethod directMethod = (DexEncodedMethod) directMethods.elementAt(j);				
				
				if (j == 0) {
					lastDirectIdx = directMethod.getMethodIdxDiff();
				} else {
					lastDirectIdx += directMethod.getMethodIdxDiff();
				}
				
				List<Integer> paramTypeIds = getMethodParamTypeIdsByMethodId(lastDirectIdx);
				for(Integer paramTypeId : paramTypeIds){
					int idx = paramTypeId.intValue();
					String type = getClassNameByClassId(idx);
					if(!usedClasses.containsKey(new Integer(idx))){
						usedClasses.put(new Integer(idx), type);
					}
					if(usedHostClasses.containsKey(new Integer(idx))){
						List<String> hostClasses = usedHostClasses.get(new Integer(idx));
						if(!hostClasses.contains(className)){
							hostClasses.add(className);
						}
					}else{
						List<String> hostClasses = new ArrayList<String>();
						hostClasses.add(className);
						usedHostClasses.put(new Integer(idx), hostClasses);
					}
				}
				
				int returnTypeId = getMethodReturnTypeIdByMethodId(lastDirectIdx);
				String returnType = getClassNameByClassId(returnTypeId);
				if(!usedClasses.containsKey(new Integer(returnTypeId))){
					usedClasses.put(new Integer(returnTypeId), returnType);
				}
				if(usedHostClasses.containsKey(new Integer(returnTypeId))){
					List<String> hostClasses = usedHostClasses.get(new Integer(returnTypeId));
					if(!hostClasses.contains(className)){
						hostClasses.add(className);
					}
				}else{
					List<String> hostClasses = new ArrayList<String>();
					hostClasses.add(className);
					usedHostClasses.put(new Integer(returnTypeId), hostClasses);
				}
				
				String directMtdProto = getClassNameByMethodId(lastDirectIdx) + getMethodNameByMethodId(lastDirectIdx) 
						+ ";" + getMethodProtoByMethodId(lastDirectIdx);
				//System.out.println("direct method #" + lastDirectIdx + ": " + directMtdProto);
				if(definedMethods.containsKey(new Integer(lastDirectIdx))){
					System.err.println("CONFLICT: #" + lastDirectIdx + " " + definedMethods.get(new Integer(lastDirectIdx)));
				}else{
					definedMethods.put(new Integer(lastDirectIdx), directMtdProto);
				}
				
				DexCodeItem codeItem = directMethod.getCodeItem();
				LinkedHashMap<Integer, DexDecodedInsn> insns = codeItem.getDecodedInsns();
				if(insns!=null){
					Set<Integer> keySet = insns.keySet();
					Iterator<Integer> iter = keySet.iterator();
					while(iter.hasNext()){
						Integer insnIndex = iter.next();
						DexDecodedInsn insn = insns.get(insnIndex);
						if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE){
							int calleeIdx = (int) insn.getVC();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							
							List<Integer> calleeParamTypeIds = getMethodParamTypeIdsByMethodId(calleeIdx);
							for(Integer paramTypeId : calleeParamTypeIds){
								int idx = paramTypeId.intValue();
								String type = getClassNameByClassId(idx);
								if(!usedClasses.containsKey(new Integer(idx))){
									usedClasses.put(new Integer(idx), type);
								}
								if(usedHostClasses.containsKey(new Integer(idx))){
									List<String> hostClasses = usedHostClasses.get(new Integer(idx));
									if(!hostClasses.contains(className)){
										hostClasses.add(className);
									}
								}else{
									List<String> hostClasses = new ArrayList<String>();
									hostClasses.add(className);
									usedHostClasses.put(new Integer(idx), hostClasses);
								}
							}
							
							int calleeReturnTypeId = getMethodReturnTypeIdByMethodId(calleeIdx);
							String callReturnType = getClassNameByClassId(calleeReturnTypeId);
							if(!usedClasses.containsKey(new Integer(calleeReturnTypeId))){
								usedClasses.put(new Integer(calleeReturnTypeId), callReturnType);
							}
							if(usedHostClasses.containsKey(new Integer(calleeReturnTypeId))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeReturnTypeId));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeReturnTypeId), hostClasses);
							}
							
							
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							if(!usedClasses.containsKey(new Integer(calleeClassIdx))){
								usedClasses.put(new Integer(calleeClassIdx), callClass);
							}
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}
							
						}else if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE_RANGE){
							int calleeIdx = (int) insn.getVB();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							
							List<Integer> calleeParamTypeIds = getMethodParamTypeIdsByMethodId(calleeIdx);
							for(Integer paramTypeId : calleeParamTypeIds){
								int idx = paramTypeId.intValue();
								String type = getClassNameByClassId(idx);
								if(!usedClasses.containsKey(new Integer(idx))){
									usedClasses.put(new Integer(idx), type);
								}
								if(usedHostClasses.containsKey(new Integer(idx))){
									List<String> hostClasses = usedHostClasses.get(new Integer(idx));
									if(!hostClasses.contains(className)){
										hostClasses.add(className);
									}
								}else{
									List<String> hostClasses = new ArrayList<String>();
									hostClasses.add(className);
									usedHostClasses.put(new Integer(idx), hostClasses);
								}
							}
							
							int calleeReturnTypeId = getMethodReturnTypeIdByMethodId(calleeIdx);
							String callReturnType = getClassNameByClassId(calleeReturnTypeId);
							if(!usedClasses.containsKey(new Integer(calleeReturnTypeId))){
								usedClasses.put(new Integer(calleeReturnTypeId), callReturnType);
							}
							if(usedHostClasses.containsKey(new Integer(calleeReturnTypeId))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeReturnTypeId));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeReturnTypeId), hostClasses);
							}
							
							
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							if(!usedClasses.containsKey(new Integer(calleeClassIdx))){
								usedClasses.put(new Integer(calleeClassIdx), callClass);
							}
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}							
						}else if(insn.getOpCode() == DexInsnConsts.OP_CONST_CLASS
								|| insn.getOpCode() == DexInsnConsts.OP_CHECK_CAST
								|| insn.getOpCode() == DexInsnConsts.OP_NEW_INSTANCE
								|| insn.getOpCode() == DexInsnConsts.OP_FILLED_NEW_ARRAY
								|| insn.getOpCode() == DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE){
							int idx = (int) insn.getVB();
							String type = getClassNameByClassId(idx);
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}else if(insn.getOpCode() == DexInsnConsts.OP_INSTANCE_OF
								|| insn.getOpCode() == DexInsnConsts.OP_NEW_ARRAY){
							int idx = (int) insn.getVC();
							String type = getClassNameByClassId(idx);
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}else if(insn.getOpCode() == DexInsnConsts.OP_IGET
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_SHORT
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_SHORT){
							int fieldIdx = (int) insn.getVC();
							int idx = getClassIdByFieldId(fieldIdx);
							String type = getClassNameByFieldId(fieldIdx);
							
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}else if(insn.getOpCode() == DexInsnConsts.OP_SGET
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_SHORT
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_SHORT){
							int fieldIdx = (int) insn.getVB();
							int idx = getClassIdByFieldId(fieldIdx);
							String type = getClassNameByFieldId(fieldIdx);
							
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}
					}
				}
			}
			for (int k = 0; k < virtualMethodsSize; k++) {
				
				DexEncodedMethod virtualMethod = (DexEncodedMethod) virtualMethods.elementAt(k);
				
				if (k == 0) {
					lastVirtualIdx = virtualMethod.getMethodIdxDiff();
				} else {
					lastVirtualIdx += virtualMethod.getMethodIdxDiff();
				}
				
				List<Integer> paramTypeIds = getMethodParamTypeIdsByMethodId(lastVirtualIdx);
				for(Integer paramTypeId : paramTypeIds){
					int idx = paramTypeId.intValue();
					String type = getClassNameByClassId(idx);
					if(!usedClasses.containsKey(new Integer(idx))){
						usedClasses.put(new Integer(idx), type);
					}
					if(usedHostClasses.containsKey(new Integer(idx))){
						List<String> hostClasses = usedHostClasses.get(new Integer(idx));
						if(!hostClasses.contains(className)){
							hostClasses.add(className);
						}
					}else{
						List<String> hostClasses = new ArrayList<String>();
						hostClasses.add(className);
						usedHostClasses.put(new Integer(idx), hostClasses);
					}
				}
				
				int returnTypeId = getMethodReturnTypeIdByMethodId(lastVirtualIdx);
				String returnType = getClassNameByClassId(returnTypeId);
				if(!usedClasses.containsKey(new Integer(returnTypeId))){
					usedClasses.put(new Integer(returnTypeId), returnType);
				}
				if(usedHostClasses.containsKey(new Integer(returnTypeId))){
					List<String> hostClasses = usedHostClasses.get(new Integer(returnTypeId));
					if(!hostClasses.contains(className)){
						hostClasses.add(className);
					}
				}else{
					List<String> hostClasses = new ArrayList<String>();
					hostClasses.add(className);
					usedHostClasses.put(new Integer(returnTypeId), hostClasses);
				}

				String virtualMtdProto = getClassNameByMethodId(lastVirtualIdx) + getMethodNameByMethodId(lastVirtualIdx) 
						+ ";" + getMethodProtoByMethodId(lastVirtualIdx);
				//System.out.println("virtual method #" + lastVirtualIdx + ": " + virtualMtdProto);
				if(definedMethods.containsKey(new Integer(lastVirtualIdx))){
					System.err.println("CONFLICT: #" + lastVirtualIdx + " " + definedMethods.get(new Integer(lastVirtualIdx)));
				}else{
					definedMethods.put(new Integer(lastVirtualIdx), virtualMtdProto);
				}
				
				DexCodeItem codeItem = virtualMethod.getCodeItem();
				LinkedHashMap<Integer, DexDecodedInsn> insns = codeItem.getDecodedInsns();
				if(insns!=null){
					Set<Integer> keySet = insns.keySet();
					Iterator<Integer> iter = keySet.iterator();
					while(iter.hasNext()){
						Integer insnIndex = iter.next();
						DexDecodedInsn insn = insns.get(insnIndex);
						if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE){
							int calleeIdx = (int) insn.getVC();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							
							List<Integer> calleeParamTypeIds = getMethodParamTypeIdsByMethodId(calleeIdx);
							for(Integer paramTypeId : calleeParamTypeIds){
								int idx = paramTypeId.intValue();
								String type = getClassNameByClassId(idx);
								if(!usedClasses.containsKey(new Integer(idx))){
									usedClasses.put(new Integer(idx), type);
								}
								if(usedHostClasses.containsKey(new Integer(idx))){
									List<String> hostClasses = usedHostClasses.get(new Integer(idx));
									if(!hostClasses.contains(className)){
										hostClasses.add(className);
									}
								}else{
									List<String> hostClasses = new ArrayList<String>();
									hostClasses.add(className);
									usedHostClasses.put(new Integer(idx), hostClasses);
								}
							}
							
							int calleeReturnTypeId = getMethodReturnTypeIdByMethodId(calleeIdx);
							String callReturnType = getClassNameByClassId(calleeReturnTypeId);
							if(!usedClasses.containsKey(new Integer(calleeReturnTypeId))){
								usedClasses.put(new Integer(calleeReturnTypeId), callReturnType);
							}
							if(usedHostClasses.containsKey(new Integer(calleeReturnTypeId))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeReturnTypeId));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeReturnTypeId), hostClasses);
							}
							
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							if(!usedClasses.containsKey(new Integer(calleeClassIdx))){
								usedClasses.put(new Integer(calleeClassIdx), callClass);
							}
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}
							
						}else if(insn.getOpCode() == DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_SUPER_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_DIRECT_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_STATIC_RANGE
								|| insn.getOpCode() == DexInsnConsts.OP_INVOKE_INTERFACE_RANGE){
							int calleeIdx = (int) insn.getVB();
							int calleeClassIdx = getClassIdByMethodId(calleeIdx);
							
							List<Integer> calleeParamTypeIds = getMethodParamTypeIdsByMethodId(calleeIdx);
							for(Integer paramTypeId : calleeParamTypeIds){
								int idx = paramTypeId.intValue();
								String type = getClassNameByClassId(idx);
								if(!usedClasses.containsKey(new Integer(idx))){
									usedClasses.put(new Integer(idx), type);
								}
								if(usedHostClasses.containsKey(new Integer(idx))){
									List<String> hostClasses = usedHostClasses.get(new Integer(idx));
									if(!hostClasses.contains(className)){
										hostClasses.add(className);
									}
								}else{
									List<String> hostClasses = new ArrayList<String>();
									hostClasses.add(className);
									usedHostClasses.put(new Integer(idx), hostClasses);
								}
							}
							
							int calleeReturnTypeId = getMethodReturnTypeIdByMethodId(calleeIdx);
							String callReturnType = getClassNameByClassId(calleeReturnTypeId);
							if(!usedClasses.containsKey(new Integer(calleeReturnTypeId))){
								usedClasses.put(new Integer(calleeReturnTypeId), callReturnType);
							}
							if(usedHostClasses.containsKey(new Integer(calleeReturnTypeId))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeReturnTypeId));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeReturnTypeId), hostClasses);
							}
							
							
							String callProto = getClassNameByMethodId(calleeIdx) + getMethodNameByMethodId(calleeIdx) 
									+ ";" + getMethodProtoByMethodId(calleeIdx);
							String callClass = getClassNameByMethodId(calleeIdx);
							if(!usedClasses.containsKey(new Integer(calleeClassIdx))){
								usedClasses.put(new Integer(calleeClassIdx), callClass);
							}
							usedMethods.put(new Integer(calleeIdx), callProto);
							if(usedHostClasses.containsKey(new Integer(calleeClassIdx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(calleeClassIdx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(calleeClassIdx), hostClasses);
							}							
						}else if(insn.getOpCode() == DexInsnConsts.OP_CONST_CLASS
								|| insn.getOpCode() == DexInsnConsts.OP_CHECK_CAST
								|| insn.getOpCode() == DexInsnConsts.OP_NEW_INSTANCE
								|| insn.getOpCode() == DexInsnConsts.OP_FILLED_NEW_ARRAY
								|| insn.getOpCode() == DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE){
							int idx = (int) insn.getVB();
							String type = getClassNameByClassId(idx);
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}else if(insn.getOpCode() == DexInsnConsts.OP_INSTANCE_OF
								|| insn.getOpCode() == DexInsnConsts.OP_NEW_ARRAY){
							int idx = (int) insn.getVC();
							String type = getClassNameByClassId(idx);
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}else if(insn.getOpCode() == DexInsnConsts.OP_IGET
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_IGET_SHORT
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_IPUT_SHORT){
							int fieldIdx = (int) insn.getVC();
							int idx = getClassIdByFieldId(fieldIdx);
							String type = getClassNameByFieldId(fieldIdx);
							
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}else if(insn.getOpCode() == DexInsnConsts.OP_SGET
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_SGET_SHORT
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_WIDE
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_OBJECT
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_BOOLEAN
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_BYTE
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_CHAR
								|| insn.getOpCode() == DexInsnConsts.OP_SPUT_SHORT){
							int fieldIdx = (int) insn.getVB();
							int idx = getClassIdByFieldId(fieldIdx);
							String type = getClassNameByFieldId(fieldIdx);
							
							if(!usedClasses.containsKey(new Integer(idx))){
								usedClasses.put(new Integer(idx), type);
							}
							if(usedHostClasses.containsKey(new Integer(idx))){
								List<String> hostClasses = usedHostClasses.get(new Integer(idx));
								if(!hostClasses.contains(className)){
									hostClasses.add(className);
								}
							}else{
								List<String> hostClasses = new ArrayList<String>();
								hostClasses.add(className);
								usedHostClasses.put(new Integer(idx), hostClasses);
							}
						}
					}
				}
			}

		}
	}
	
	public void removeUndefinedClasses(List<String> toRemoveClasses){
		Set<Integer> usedKeySet = usedClasses.keySet();
		Iterator<Integer> usedIter = usedKeySet.iterator();
		while(usedIter.hasNext()){
			Integer usedIndex = usedIter.next();
			String usedClass = usedClasses.get(usedIndex);
			
			//handle array
			if(usedClass.startsWith("[")){
				usedClass = usedClass.substring(1);
			}
			if(!definedClasses.containsValue(usedClass)){	
				
				if(usedClass.startsWith("Landroid/")						//android framework classes
						|| usedClass.startsWith("Ljava/")
						|| usedClass.startsWith("Ldalvik/bytecode/")
						|| usedClass.startsWith("Ldalvik/system/")
						|| usedClass.startsWith("Ljavax/")
						|| usedClass.startsWith("Ljunit/framework/")
						|| usedClass.startsWith("Ljunit/runner/")
						//|| usedClass.startsWith("Lorg/apache/")
						|| usedClass.startsWith("Lorg/json/")
						|| usedClass.startsWith("Lorg/w3c/dom/")
						|| usedClass.startsWith("Lorg/xml/sax/")
						|| usedClass.startsWith("Lorg/xmlpull/v1/")
						
						|| usedClass.equals("V")							//short descriptor of primitive type
						|| usedClass.equals("Z")
						|| usedClass.equals("B")
						|| usedClass.equals("S")
						|| usedClass.equals("C")
						|| usedClass.equals("I")
						|| usedClass.equals("J")
						|| usedClass.equals("F")
						|| usedClass.equals("D")
						
						|| usedClass.startsWith("Lorg/jdom/")				//other supported third-party libs
						|| usedClass.startsWith("Loauth/signpost/commonshttp/")
						|| usedClass.startsWith("Lorg/apache/tools/")
						|| usedClass.startsWith("Lcom/google/i18n/phonenumbers/")
						|| usedClass.startsWith("Lorg/slf4j/")
						|| usedClass.startsWith("Lcom/google/gdata/util/common/base/")
						|| usedClass.startsWith("Lorg/joda/")
						|| usedClass.startsWith("Lcom/amazon/device/messaging/")
						|| usedClass.startsWith("Lcom/amazon/geo/maps/")
						){
					//System.out.println("Defined in Framework: " + usedClass);
				}else{
					//System.out.println("Removing: " + dumpList(usedHostClasses.get(usedIndex)) + " because of calling " + usedClass);
					
					List<String> hostClasses = usedHostClasses.get(usedIndex);
										
					for(String hostClass: hostClasses){
						if(!toRemoveClasses.contains(hostClass)){
							toRemoveClasses.add(hostClass);
						}
						
						if(!removedClasses.contains(hostClass)){
							removedClasses.add(hostClass);
						}
						
						//handle inner classes
						String base = hostClass.replace(";", "$");
						for(String definedClass : definedClasses.values()){
							if(definedClass.startsWith(base)){
								if(!toRemoveClasses.contains(definedClass)){
									toRemoveClasses.add(definedClass);
								}
								
								if(!removedClasses.contains(definedClass)){
									removedClasses.add(definedClass);
								}
							}
						}
					}
				}
			}
		}
	}
	
	public void removeAllUndefinedClasses(){
		List<String> delta = null;
		do{
			traverseRemainingClasses();
			delta = new ArrayList<String>();
			removeUndefinedClasses(delta);
			
		}while(!delta.isEmpty());
	}
	
	private String dumpList(List<String> list){
		if(list.isEmpty() || list==null)return "";
		String ret = "";
		for(int i=0;i<list.size()-1;i++){
			ret += list.get(i) + ",";
		}
		ret += list.get(list.size()-1);
		return ret;
	}
	
	public String getMethodNameByMethodId(int index){
		return stringIds.getStringAt((int) methodIds.getNameIdAt(index));
	}
	
	public String getClassNameByMethodId(int index){
		return stringIds.getStringAt((int) typeIds.getDescriptorIdxAt(methodIds.getClassIdxAt(index)));
	}
	
	public int getClassIdByMethodId(int index){
		return (int) methodIds.getClassIdxAt(index);
	}
	
	public String getClassNameByClassId(long index){
		return stringIds.getStringAt((int) typeIds.getDescriptorIdxAt((int)index));
	}	
	
	public String getMethodProtoByMethodId(int index){
		return (stringIds.getStringAt((int) protoIds.getShortyIdAt((int) methodIds.getProtoIdxAt(index))) 
				+ ";" + stringIds.getStringAt((int) typeIds.getDescriptorIdxAt((int) protoIds.getReturnTypeIdAt((int) methodIds.getProtoIdxAt(index)))));
	}
	
	public int getMethodReturnTypeIdByMethodId(int index){
		return (int) protoIds.getReturnTypeIdAt((int) methodIds.getProtoIdxAt(index));
	}
	
	public List<Integer> getMethodParamTypeIdsByMethodId(int index){
		List<Integer> types = new ArrayList<Integer>();
		DexTypeList typeList = protoIds.getTypeListAt((int) methodIds.getProtoIdxAt(index));
		Vector<DexTypeList.DexTypeItem> list = typeList.getList();
		for(DexTypeList.DexTypeItem item : list){
			int typeId = item.getTypeIdx();
			types.add(new Integer(typeId));
		}
		return types;
	}
	
	public int getClassIdByFieldId(int index){
		return (int)fieldIds.getTypeIdxAt(index);
	}	
	
	public String getClassNameByFieldId(int index){
		return stringIds.getStringAt((int) typeIds.getDescriptorIdxAt(fieldIds.getTypeIdxAt(index)));
	}
	
	public String getHostClassNameByFieldId(int index){
		return stringIds.getStringAt((int) typeIds.getDescriptorIdxAt(fieldIds.getClassIdxAt(index)));
	}
}