package mySoot.preprocessor;

import java.util.Vector;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

public class DexProtoIds {

	private Vector<DexProtoIdItem> protoIds;

	public DexProtoIds() {
		this.protoIds = new Vector<DexProtoIdItem>();
	}

	public Vector<DexProtoIdItem> getProtoIds() {
		return this.protoIds;
	}
	
	public long getShortyIdAt(int index) {
		return this.protoIds.elementAt(index).getShortyIdx();
	}
	
	public long getReturnTypeIdAt(int index) {
		return this.protoIds.elementAt(index).getReturnTypeIdx();
	}
	
	public DexTypeList getTypeListAt(int index){
		return this.protoIds.elementAt(index).getTypeList();
	}
	
	public long parse(byte[] bytes, long off, long size) {
		long offset = off;
		for (long i = 0; i < size; i++) {
			DexProtoIdItem pii = new DexProtoIdItem();
			offset = pii.parse(bytes, offset);
			protoIds.add(pii);
		}
		return offset;
	}

	private class DexProtoIdItem {
		private long shortyIdx;
		private long returnTypeIdx;
		private long parametersOff;
		private DexTypeList typeList;

		public DexProtoIdItem() {
			this.shortyIdx = 0;
			this.returnTypeIdx = 0;
			this.parametersOff = 0;
			this.typeList = new DexTypeList();
		}

		public long getShortyIdx() {
			return this.shortyIdx;
		}

		public long getReturnTypeIdx() {
			return this.returnTypeIdx;
		}

		public long getParameterOff() {
			return this.parametersOff;
		}
		
		public DexTypeList getTypeList(){
			return this.typeList;
		}

		public long parse(byte[] bytes, long off) {
			long offset = off;
			this.shortyIdx = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;
			this.returnTypeIdx = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;
			this.parametersOff = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;
			if (this.parametersOff != 0)
				typeList.parse(bytes, this.parametersOff);
			return offset;
		}
	}
}