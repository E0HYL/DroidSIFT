package mySoot.preprocessor;

import java.util.Vector;


//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

public class DexMethodIds {

	private Vector<DexMethodIdItem> methodIds;

	public DexMethodIds() {
		this.methodIds = new Vector<DexMethodIdItem>();
	}

	public Vector<DexMethodIdItem> getMethodIds() {
		return this.methodIds;
	}
	
	public int getMethodIdsSize(){
		return this.methodIds.size();
	}

	public long getNameIdAt(int index) {
		return this.methodIds.elementAt(index).getNameIdx();
	}

	public int getClassIdxAt(int index) {
		return this.methodIds.elementAt(index).getClassIdx();
	}
	
	public int getProtoIdxAt(int index){
		return this.methodIds.elementAt(index).getProtoIdx();
	}

	public long parse(byte[] bytes, long off, long size) {
		long offset = off;
		for (long i = 0; i < size; i++) {
			DexMethodIdItem mii = new DexMethodIdItem();
			offset = mii.parse(bytes, offset);
			methodIds.add(mii);
		}
		return offset;
	}

	private class DexMethodIdItem {
		private int classIdx;
		private int protoIdx;
		private long nameIdx;

		public DexMethodIdItem() {
			this.classIdx = 0;
			this.protoIdx = 0;
			this.nameIdx = 0;
		}

		public int getClassIdx() {
			return this.classIdx;
		}

		public int getProtoIdx() {
			return this.protoIdx;
		}

		public long getNameIdx() {
			return this.nameIdx;
		}

		public long parse(byte[] bytes, long off) {
			long offset = off;
			this.classIdx = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;
			this.protoIdx = DexUtil.readUnsignedShort(bytes, offset, true);
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