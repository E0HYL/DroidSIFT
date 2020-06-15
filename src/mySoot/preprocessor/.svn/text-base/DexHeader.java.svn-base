package mySoot.preprocessor;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;
/*
 * Direct-mapped "header_item" struct.
 */
public class DexHeader {
	private String magic; /* includes version number - 8bits long */
	private long checksum; /* adler32 checksum */
	private String signature; /* SHA-1 hash - length:kSHA1DigestLen */
	private long fileSize; /* length of entire file */
	private long headerSize; /* offset to start of next section */
	private long endianTag;
	private long linkSize;
	private long linkOff;
	private long mapOff;
	private long stringIdsSize;
	private long stringIdsOff;
	private long typeIdsSize;
	private long typeIdsOff;
	private long protoIdsSize;
	private long protoIdsOff;
	private long fieldIdsSize;
	private long fieldIdsOff;
	private long methodIdsSize;
	private long methodIdsOff;
	private long classDefsSize;
	private long classDefsOff;
	private long dataSize;
	private long dataOff;

	public DexHeader() {
		magic = "";
		checksum = 0;
		signature = "";
		fileSize = 0;
		headerSize = 0;
		endianTag = 0;
		linkSize = 0;
		linkOff = 0;
		mapOff = 0;
		stringIdsSize = 0;
		stringIdsOff = 0;
		typeIdsSize = 0;
		typeIdsOff = 0;
		protoIdsSize = 0;
		protoIdsOff = 0;
		fieldIdsSize = 0;
		fieldIdsOff = 0;
		methodIdsSize = 0;
		methodIdsOff = 0;
		classDefsSize = 0;
		classDefsOff = 0;
		dataSize = 0;
		dataOff = 0;
	}

	public long parse(byte[] bytes, long off/* , int length */) {

		long offset = off;

		this.magic = DexUtil.readString(bytes, offset, 8);
		offset += 8;

		this.checksum = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.signature = DexUtil.readString(bytes, offset, 20);
		offset += 20;

		this.fileSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.headerSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.endianTag = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.linkSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.linkOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.mapOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.stringIdsSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.stringIdsOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.typeIdsSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.typeIdsOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.protoIdsSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.protoIdsOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.fieldIdsSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.fieldIdsOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.methodIdsSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.methodIdsOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.classDefsSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.classDefsOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.dataSize = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		this.dataOff = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		return offset;

	}

	public String getMagic() {
		/* includes version number - 8bits long */
		return this.magic;
	}

	public long getChecksum() {
		/* adler32 checksum */
		return this.checksum;
	}

	public String getSignature() {
		/* SHA-1 hash - length:kSHA1DigestLen */
		return this.signature;
	}

	public long getFileSize() {
		/* length of entire file */
		return this.fileSize;
	}

	public long getHeaderSize() {
		/* offset to start of next section */
		return this.headerSize;
	}

	public long getEndianTag() {
		return this.endianTag;
	}

	public long getLinkSize() {
		return this.linkSize;
	}

	public long getLinkOff() {
		return this.linkOff;
	}

	public long getMapOff() {
		return this.mapOff;
	}

	public long getStringIdsSize() {
		return this.stringIdsSize;
	}

	public long getStringIdsOff() {
		return this.stringIdsOff;
	}

	public long getTypeIdsSize() {
		return this.typeIdsSize;
	}

	public long getTypeIdsOff() {
		return this.typeIdsOff;
	}

	public long getProtoIdsSize() {
		return this.protoIdsSize;
	}

	public long getProtoIdsOff() {
		return this.protoIdsOff;
	}

	public long getFieldIdsSize() {
		return this.fieldIdsSize;
	}

	public long getFieldIdsOff() {
		return this.fieldIdsOff;
	}

	public long getMethodIdsSize() {
		return this.methodIdsSize;
	}

	public long getMethodIdsOff() {
		return this.methodIdsOff;
	}

	public long getClassDefsSize() {
		return this.classDefsSize;
	}

	public long getClassDefsOff() {
		return this.classDefsOff;
	}

	public long getDataSize() {
		return this.dataSize;
	}

	public long getDataOff() {
		return this.dataOff;
	}
}
