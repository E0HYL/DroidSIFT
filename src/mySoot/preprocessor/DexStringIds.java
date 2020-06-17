package mySoot.preprocessor;

import java.util.Vector;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

public class DexStringIds {

	private Vector<DexStringId> stringIds;
	private Vector<DexStringData> stringData;

	public DexStringIds() {
		stringIds = new Vector<DexStringId>();
		stringData = new Vector<DexStringData>();
	}

	public Vector<DexStringId> getStringIds() {
		return this.stringIds;
	}

	public Vector<DexStringData> getStringData() {
		return this.stringData;
	}

	public String getStringAt(int index) {
		return this.getStringData().elementAt(index).getData();
	}

	// size: got from header->string_ids_size
	public long parse(byte[] bytes, long off, long size) {

		long offset = off;
		for (int i = 0; i < size; i++) {
			DexStringId stringId = new DexStringId();
			offset = stringId.parse(bytes, offset);
			stringIds.add(stringId);

			DexStringData stringDataItem = new DexStringData();
			stringDataItem.parse(bytes, stringId.getStringDataOff());
			stringData.add(stringDataItem);
		}

		return offset;
	}

	/*
	 * Direct-mapped "string_id_item".
	 */
	private class DexStringId {

		private long stringDataOff; /* file offset to string_data_item */

		public DexStringId() {
			stringDataOff = 0;
		}

		public long getStringDataOff() {
			return this.stringDataOff;
		}

		public long parse(byte[] bytes, long off) {
			long offset = off;
			this.stringDataOff = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;
			return offset;
		}
	}

	private class DexStringData {

		private int utf16Size;
		private String data;

		public DexStringData() {
			this.utf16Size = 0;
			this.data = "";
		}

		public int getUtf16Size() {
			return this.utf16Size;
		}

		public String getData() {
			return this.data;
		}

		public long parse(byte[] bytes, long off) {
			long offset = off;
			this.utf16Size = DexUtil.readUnsignedLeb128(bytes, off);
			offset += DexUtil.getLeb128Size(bytes, off);
			this.data = DexUtil.readMUTF8(bytes, off, this.utf16Size);
			offset += DexUtil.getMUTF8Size(bytes, off, this.utf16Size);
			return offset;
		}
	}
}