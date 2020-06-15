package mySoot.preprocessor;

//import com.android.dx.decoder.*;

public class DexEncodedMethod {
	private int methodIdxDiff;
	private int accessFlags;
	private int codeOff;

	private DexCodeItem codeItem;

	public DexEncodedMethod() {
		this.methodIdxDiff = 0;
		this.accessFlags = 0;
		this.codeOff = 0;
		this.codeItem = new DexCodeItem();
	}

	public int getMethodIdxDiff() {
		return this.methodIdxDiff;
	}

	public int getAccessFlags() {
		return this.accessFlags;
	}

	public int getCodeOff() {
		return this.codeOff;
	}

	public DexCodeItem getCodeItem() {
		return this.codeItem;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.methodIdxDiff = DexUtil.readUnsignedLeb128(bytes, offset);

		// System.out.println("method_idx_diff: " + this.methodIdxDiff);

		offset += DexUtil.getLeb128Size(bytes, offset);
		this.accessFlags = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		this.codeOff = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);

		// codeOff is 0 if this method is either abstract or native
		// if(this.codeOff != 0){
		codeItem.parse(bytes, this.codeOff);
		// }else{
		// System.out.println("abstract or native method.");
		// }

		return offset;
	}
}