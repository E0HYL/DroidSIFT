package mySoot.preprocessor;

import java.util.*;

//import com.android.dx.decoder.*;

public class DexEncodedCatchHandlerList {
	private int size;
	private Vector<DexEncodedCatchHandler> list;

	public DexEncodedCatchHandlerList() {
		this.size = 0;
		this.list = new Vector<DexEncodedCatchHandler>();
	}

	public int getSize() {
		return this.size;
	}

	public Vector<DexEncodedCatchHandler> getList() {
		return this.list;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.size = DexUtil.readUnsignedLeb128(bytes, offset);
		offset += DexUtil.getLeb128Size(bytes, offset);
		for (int i = 0; i < this.size; i++) {
			DexEncodedCatchHandler echl = new DexEncodedCatchHandler();
			offset = echl.parse(bytes, offset);
		}
		return offset;
	}
}