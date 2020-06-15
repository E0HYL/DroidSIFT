package mySoot.preprocessor;

import java.util.Vector;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

public class DexTypeList {

	private long size;
	private Vector<DexTypeItem> list;

	public DexTypeList() {
		size = 0;
		list = new Vector<DexTypeItem>();
	}

	public long getSize() {
		return this.size;
	}

	public Vector<DexTypeItem> getList() {
		return this.list;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.size = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		for (long i = 0; i < this.size; i++) {
			DexTypeItem dt = new DexTypeItem();
			offset = dt.parse(bytes, offset);
			list.add(dt);
		}
		return offset;
	}

	public class DexTypeItem {
		private int typeIdx;

		public DexTypeItem() {
			this.typeIdx = 0;
		}

		public int getTypeIdx() {
			return this.typeIdx;
		}

		public long parse(byte[] bytes, long off) {
			long offset = off;
			this.typeIdx = DexUtil.readUnsignedShort(bytes, off, true);
			offset += 2;
			return offset;
		}
	}
}