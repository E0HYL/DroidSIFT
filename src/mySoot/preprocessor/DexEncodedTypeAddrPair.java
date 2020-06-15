package mySoot.preprocessor;

//import com.android.dx.decoder.*;

public class DexEncodedTypeAddrPair {
	private int typeIdx;
	private int addr;

	public DexEncodedTypeAddrPair() {
		this.typeIdx = 0;
		this.addr = 0;
	}

	public int getTypeIdx() {
		return this.typeIdx;
	}

	public int getAddr() {
		return this.addr;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.typeIdx = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		this.addr = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		return offset;
	}
}