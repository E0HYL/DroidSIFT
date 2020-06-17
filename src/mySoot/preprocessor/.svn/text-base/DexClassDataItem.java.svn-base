package mySoot.preprocessor;

import java.util.*;

//import com.android.dx.decoder.*;

public class DexClassDataItem {

	private int staticFieldsSize;
	private int instanceFieldsSize;
	private int directMethodsSize;
	private int virtualMethodsSize;

	private Vector<DexEncodedField> staticFields;
	private Vector<DexEncodedField> instanceFields;
	private Vector<DexEncodedMethod> directMethods;
	private Vector<DexEncodedMethod> virtualMethods;

	public DexClassDataItem() {
		this.staticFieldsSize = 0;
		this.instanceFieldsSize = 0;
		this.directMethodsSize = 0;
		this.virtualMethodsSize = 0;

		this.staticFields = new Vector<DexEncodedField>();
		this.instanceFields = new Vector<DexEncodedField>();
		this.directMethods = new Vector<DexEncodedMethod>();
		this.virtualMethods = new Vector<DexEncodedMethod>();
	}

	public int getStaticFieldsSize() {
		return this.staticFieldsSize;
	}

	public int getInstanceFieldsSize() {
		return this.instanceFieldsSize;
	}

	public int getDirectMethodsSize() {
		return this.directMethodsSize;
	}

	public int getVirtualMethodsSize() {
		return this.virtualMethodsSize;
	}

	public Vector<DexEncodedField> getStaticFields() {
		return this.staticFields;
	}

	public Vector<DexEncodedField> getInstanceFields() {
		return this.instanceFields;
	}

	public Vector<DexEncodedMethod> getDirectMethods() {
		return this.directMethods;
	}

	public Vector<DexEncodedMethod> getVirtualMethods() {
		return this.virtualMethods;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.staticFieldsSize = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		this.instanceFieldsSize = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		this.directMethodsSize = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		this.virtualMethodsSize = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);

		for (int i = 0; i < this.staticFieldsSize; i++) {
			DexEncodedField sef = new DexEncodedField();
			offset = sef.parse(bytes, offset);
			staticFields.add(sef);
		}

		for (int i = 0; i < this.instanceFieldsSize; i++) {
			DexEncodedField ief = new DexEncodedField();
			offset = ief.parse(bytes, offset);
			instanceFields.add(ief);
		}

		for (int i = 0; i < this.directMethodsSize; i++) {
			if(Debug.DUMP_DECODING){
				System.out.println("\nDirect method " + i + ":");
			}
			DexEncodedMethod dem = new DexEncodedMethod();
			offset = dem.parse(bytes, offset);
			directMethods.add(dem);
		}

		for (int i = 0; i < this.virtualMethodsSize; i++) {
			if(Debug.DUMP_DECODING){
				System.out.println("\nVirtual method " + i + ":");
			}
			DexEncodedMethod vem = new DexEncodedMethod();
			offset = vem.parse(bytes, offset);
			virtualMethods.add(vem);
		}

		return offset;
	}

}