package mySoot.preprocessor;

//import com.android.dx.decoder.*;

public class DexClassDefItem {

	private long classIdx;
	private long accessFlags;
	private long superClassIdx;
	private long interfacesOff;
	private long sourceFileIdx;
	private long annotationsOff;
	private long classDataOff;
	private long staticValuesOff;
	
	private DexTypeList interfaceTypes;

	private DexClassDataItem classDataItem;

	public DexClassDefItem() {
		this.classIdx = 0;
		this.accessFlags = 0;
		this.superClassIdx = 0;
		this.interfacesOff = 0;
		this.sourceFileIdx = 0;
		this.annotationsOff = 0;
		this.classDataOff = 0;
		this.staticValuesOff = 0;
		
		this.interfaceTypes = new DexTypeList();

		this.classDataItem = new DexClassDataItem();
	}

	public long getClassIdx() {
		return this.classIdx;
	}

	public long getAccessFlags() {
		return this.accessFlags;
	}

	public long getSuperClassIdx() {
		return this.superClassIdx;
	}

	public long getInterfacesOff() {
		return this.interfacesOff;
	}

	public long getSourceFileIdx() {
		return this.sourceFileIdx;
	}

	public long getAnnotationsOff() {
		return this.annotationsOff;
	}

	public long getClassDataOff() {
		return this.classDataOff;
	}

	public long getStaticValuesOff() {
		return this.staticValuesOff;
	}
	
	public DexTypeList getInterfaceTypes(){
		return this.interfaceTypes;
	}

	public DexClassDataItem getClassDataItem() {
		return this.classDataItem;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.classIdx = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.accessFlags = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.superClassIdx = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.interfacesOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.sourceFileIdx = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.annotationsOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.classDataOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.staticValuesOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		if (this.interfacesOff != 0)
			interfaceTypes.parse(bytes, this.interfacesOff);
		if (this.classDataOff != 0)
			classDataItem.parse(bytes, this.classDataOff);
		return offset;
	}

}