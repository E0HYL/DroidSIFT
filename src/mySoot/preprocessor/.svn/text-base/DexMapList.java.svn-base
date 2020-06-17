package mySoot.preprocessor;

import java.util.Vector;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

/*
 * Direct-mapped "map_list".
 */
public class DexMapList {

	private long size; /* #of entries in list */
	private Vector<DexMapItem> list; /* entries */

	public DexMapList() {
		size = 0;
		list = new Vector<DexMapItem>();
	}

	public long getSize() {
		return size;
	}

	public Vector<DexMapItem> getList() {
		return list;
	}

	public long parse(byte[] bytes, long off) {

		long offset = off;

		this.size = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;

		for (int i = 0; i < size; i++) {
			DexMapItem item = new DexMapItem();
			offset = item.parse(bytes, offset);
			list.add(item);
		}

		return offset;
	}

	private class DexMapItem {

		private int type; /* type code (see kDexType* above) */
		private int unused;
		private long size; /* count of items of the indicated type */
		private long offset; /* file offset to the start of data */

		public DexMapItem() {
			type = 0;
			unused = 0;
			size = 0;
			offset = 0;
		}

		public int getType() {
			return type;
		}

		public int getUnused() {
			return unused;
		}

		public long getSize() {
			return size;
		}

		public long getOffset() {
			return offset;
		}

		public long parse(byte[] bytes, long off) {

			long offset = off;

			this.type = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;

			this.unused = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;

			this.size = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;

			this.offset = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;

			return offset;
		}
	}

}