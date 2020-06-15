package mySoot.preprocessor;

import java.util.Vector;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

public class DexTypeIds {

	private Vector<DexTypeIdItem> typeIds;

	public DexTypeIds() {
		this.typeIds = new Vector<DexTypeIdItem>();
	}

	public Vector<DexTypeIdItem> getTypeIds() {
		return this.typeIds;
	}

	public long getDescriptorIdxAt(int index) {
		return this.typeIds.elementAt(index).getDescriptorIdx();
	}

	public long parse(byte[] bytes, long off, long size) {
		long offset = off;
		for (long i = 0; i < size; i++) {
			DexTypeIdItem ti = new DexTypeIdItem();
			offset = ti.parse(bytes, offset);
			typeIds.add(ti);
		}
		return offset;
	}

	private class DexTypeIdItem {

		private long descriptorIdx;

		public DexTypeIdItem() {
			this.descriptorIdx = 0;
		}

		public long getDescriptorIdx() {
			return this.descriptorIdx;
		}

		public long parse(byte[] bytes, long off) {
			long offset = off;
			this.descriptorIdx = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;
			return offset;
		}
	}
}
