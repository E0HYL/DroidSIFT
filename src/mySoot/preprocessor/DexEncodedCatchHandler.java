package mySoot.preprocessor;

import java.util.*;

//import com.android.dx.decoder.*;

public class DexEncodedCatchHandler {
	private int size;
	private Vector<DexEncodedTypeAddrPair> handlers;
	private int catchAllAddr;

	public DexEncodedCatchHandler() {
		this.size = 0;
		this.handlers = new Vector<DexEncodedTypeAddrPair>();
		this.catchAllAddr = 0;
	}

	public int getSize() {
		return this.size;
	}

	public Vector<DexEncodedTypeAddrPair> getHandlers() {
		return this.handlers;
	}

	public int getCatchAllAddr() {
		return this.catchAllAddr;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.size = DexUtil.readSignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		for (int i = 0; i < Math.abs(this.size); i++) {
			DexEncodedTypeAddrPair etap = new DexEncodedTypeAddrPair();
			offset = etap.parse(bytes, offset);
			handlers.add(etap);
		}
		if (this.size <= 0) {
			this.catchAllAddr = DexUtil.readUnsignedLeb128(bytes, offset);
			offset += DexUtil.getLeb128Size(bytes, offset);
		}
		return offset;
	}
}