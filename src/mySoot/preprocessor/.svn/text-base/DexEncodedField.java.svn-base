package mySoot.preprocessor;

//import com.android.dx.decoder.*;

public class DexEncodedField {
	private int fieldIdxDiff;
	private int accessFlags;

	public DexEncodedField() {
		this.fieldIdxDiff = 0;
		this.accessFlags = 0;
	}

	public int getFieldIdxDiff() {
		return this.fieldIdxDiff;
	}

	public int getAccessFlags() {
		return this.accessFlags;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.fieldIdxDiff = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		this.accessFlags = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		return offset;
	}
}