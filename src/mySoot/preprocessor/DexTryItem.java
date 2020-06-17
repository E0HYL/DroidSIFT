package mySoot.preprocessor;

//import com.android.dx.decoder.*;

public class DexTryItem {
	private long startAddr;
	private int insnCount;
	private int handlerOff;
	private DexEncodedCatchHandler handler;//
	//private DexEncodedCatchHandlerList handlers;

	public DexTryItem() {
		this.startAddr = 0;
		this.insnCount = 0;
		this.handlerOff = 0;
		this.handler = new DexEncodedCatchHandler();//
		//this.handlers = new DexEncodedCatchHandlerList();
	}

	public long getStartAddr() {
		return this.startAddr;
	}

	public int getInsnCount() {
		return this.insnCount;
	}

	public int getHandlerOff() {
		return this.handlerOff;
	}
	
	//public DexEncodedCatchHandlerList getHandlers(){
	//	return this.handlers;
	//}

	public DexEncodedCatchHandler getHandler() {
		return this.handler;
	}

	public long parse(byte[] bytes, long off) {
		long offset = off;
		this.startAddr = DexUtil.readUnsignedInt(bytes, offset, true);
		offset += 4;
		this.insnCount = DexUtil.readUnsignedShort(bytes, offset, true);
		offset += 2;
		this.handlerOff = DexUtil.readUnsignedShort(bytes, offset, true);
		offset += 2;
		return offset;
	}

	public void setHandler(byte[] bytes, long base, long off) {
		handler.parse(bytes, (base + off));//
		//handlers.parse(bytes, off)
	}
}
