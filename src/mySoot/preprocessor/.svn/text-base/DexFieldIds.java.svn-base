package mySoot.preprocessor;

import java.util.Vector;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

public class DexFieldIds {

	private Vector<DexFieldIdItem> fieldIds;

	public DexFieldIds() {
		this.fieldIds = new Vector<DexFieldIdItem>();
	}

	public Vector<DexFieldIdItem> getFields() {
		return this.fieldIds;
	}

	public long getNameIdAt(int index) {
		return this.fieldIds.elementAt(index).getNameIdx();
	}

	public int getClassIdxAt(int index) {
		return this.fieldIds.elementAt(index).getClassIdx();
	}
	
	public int getTypeIdxAt(int index) {
		return this.fieldIds.elementAt(index).getTypeIdx();
	}

	public long parse(byte[] bytes, long off, long size) {
		long offset = off;
		for (long i = 0; i < size; i++) {
			DexFieldIdItem fii = new DexFieldIdItem();
			offset = fii.parse(bytes, offset);
			if(Debug.DEBUG){
				System.out.println("in DexMethodIds:parse():fieldId#"+i+"\tclassIdx="+fii.getClassIdx()+"\ttypeIdx="+fii.getTypeIdx()+"\tnameIdx="+fii.getNameIdx());
			}
			fieldIds.add(fii);
		}
		return offset;
	}

	private class DexFieldIdItem {
		private int classIdx;
		private int typeIdx;
		private long nameIdx;

		public DexFieldIdItem() {
			this.classIdx = 0;
			this.typeIdx = 0;
			this.nameIdx = 0;
		}

		public int getClassIdx() {
			return this.classIdx;
		}

		public int getTypeIdx() {
			return this.typeIdx;
		}

		public long getNameIdx() {
			return this.nameIdx;
		}

		public long parse(byte[] bytes, long off) {
			long offset = off;
			this.classIdx = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;
			this.typeIdx = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;
			this.nameIdx = DexUtil.readUnsignedInt(bytes, offset, true);
			//if(Debug.DEBUG){
			//	System.out.println("in DexMethodIds:parse():nameIdx="+this.nameIdx);
			//}
			offset += 4;
			return offset;
		}
	}
}