package mySoot.preprocessor;

import java.util.*;


//import com.android.dx.decoder.*;

public class DexCodeItem {
	private int registersSize;
	private int insSize;
	private int outsSize;
	private int triesSize;
	private long debugInfoOff;
	private long insnsSize;
	private Vector<Integer> insns;
	// padding omitted, only exists when triesSize != 0
	private Vector<DexTryItem> tries;
	private DexEncodedCatchHandlerList handlers;

	// private Vector<DexDecodedInsn> decodedInsns;
	private LinkedHashMap<Integer, DexDecodedInsn> decodedInsns;

	public DexCodeItem() {
		this.registersSize = 0;
		this.insSize = 0;
		this.outsSize = 0;
		this.triesSize = 0;
		this.debugInfoOff = 0;
		this.insnsSize = 0;
		this.insns = new Vector<Integer>();
		this.tries = new Vector<DexTryItem>();
		this.handlers = new DexEncodedCatchHandlerList();

		this.decodedInsns = null;
	}

	public LinkedHashMap<Integer, DexDecodedInsn> getDecodedInsns() {
		return this.decodedInsns;
	}

	public int getRegistersSize() {
		return this.registersSize;
	}

	public int getInsSize() {
		return this.insSize;
	}

	public int getOutsSize() {
		return this.outsSize;
	}

	public int getTriesSize() {
		return this.triesSize;
	}

	public long getDebugInfoOff() {
		return this.debugInfoOff;
	}

	public long getInsnsSize() {
		return this.insnsSize;
	}

	public Vector<Integer> getInsns() {
		return this.insns;
	}

	public Vector<DexTryItem> getTries() {
		return this.tries;
	}

	public DexEncodedCatchHandlerList getHandlers() {
		return this.handlers;
	}

	public long parse(byte[] bytes, long off) {
		if (off != 0) {
			long offset = off;
			this.registersSize = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;
			this.insSize = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;
			this.outsSize = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;
			this.triesSize = DexUtil.readUnsignedShort(bytes, offset, true);
			offset += 2;
			this.debugInfoOff = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;
			this.insnsSize = DexUtil.readUnsignedInt(bytes, offset, true);
			offset += 4;
			for (long i = 0; i < this.insnsSize; i++) {
				Integer insn = new Integer(DexUtil.readUnsignedShort(bytes,
						offset, true));
				offset += 2;
				insns.add(insn);
			}
			if ((this.triesSize != 0) && (this.insnsSize % 2 != 0)) {
				offset += 2;
			}
			if (this.triesSize != 0) {
				for (int j = 0; j < this.triesSize; j++) {
					DexTryItem ti = new DexTryItem();
					offset = ti.parse(bytes, offset);
					tries.add(ti);
				}
				for (int k = 0; k < this.triesSize; k++) {
					tries.get(k).setHandler(bytes, offset,
							tries.get(k).getHandlerOff());
				}
				offset = handlers.parse(bytes, offset);
			}

			DexInsnsUtil.createInstrWidthTable();
			DexInsnsUtil.createInstrFlagsTable();
			DexInsnsUtil.createInstrFormatTable();
			this.decodedInsns = DexInsnsUtil.decodeInstruction(this.insns,
					this.insnsSize);

			if(Debug.DUMP_DECODING){
			int count = 0;
			// for(Enumeration e = decodedInsns.elements();
			// e.hasMoreElements();){
			Set<Integer> keySet = decodedInsns.keySet();
			Iterator<Integer> keyIterator = keySet.iterator();
			while (keyIterator.hasNext()) {
				count++;
				Integer key = keyIterator.next();
				DexDecodedInsn ins = (DexDecodedInsn) decodedInsns.get(key);
				// Integer key = (Integer)e.nextElement();
				// DexDecodedInsn ins = (DexDecodedInsn)decodedInsns.get(key);

				if (ins.isPackedSwitch()) {
					System.out.print(count + ": offset: "
							+ Integer.toHexString(key.intValue()) + "\t\t"
							+ "packed-switch-data: size = "
							+ (ins.getPackedSwitch()).getSize() + "\t"
							+ "firstkey = "
							+ (ins.getPackedSwitch()).getFirstKey() + "\t"
							+ "targets = ");
					for (int i = 0; i < ins.getPackedSwitch().getSize(); i++) {
						System.out.print((ins.getPackedSwitch()).getTargets()
								.elementAt(i)
								+ "\t");
					}
					System.out.println();

				} else if (ins.isSparseSwitch()) {
					System.out.print(count + ": offset: "
							+ Integer.toHexString(key.intValue()) + "\t\t"
							+ "sparse-switch-data: size = "
							+ (ins.getSparseSwitch()).getSize() + "\t"
							+ "(keys, targets) = ");
					Set<Integer> keySet2 = ins.getSparseSwitch().getTargets()
							.keySet();
					Iterator<Integer> key2Iterator = keySet2.iterator();
					while (key2Iterator.hasNext()) {
						Integer key2 = key2Iterator.next();
						Integer target2 = (Integer) (ins.getSparseSwitch()
								.getTargets().get(key2));
						System.out.print("(" + key2 + "," + target2 + ")\t");
					}
					System.out.println();

				} else {
					System.out.print(count
							+ ": offset: "
							+
							// Integer.toHexString(ins.getOffset()) + "\t\t" +
							Integer.toHexString(key.intValue()) + "\t\t"
							+ "opcode: " + Integer.toHexString(ins.getOpCode())
							+ "\t\t" + "vA = " + Long.toHexString(ins.getVA())
							+ "\t\t" + "vB = " + Long.toHexString(ins.getVB())
							+ "\t\t" + "vC = " + Long.toHexString(ins.getVC())
							+ "\t\targs = [");
					for (int m = 0; m < 4; m++) {
						System.out.print(Long.toHexString(ins.getArg()[m])
								+ ", ");
					}
					System.out.println(Long.toHexString(ins.getArg()[4]) + "]");
				}

			}

			for (Enumeration e1 = tries.elements(); e1.hasMoreElements();) {
				DexTryItem ti = (DexTryItem) e1.nextElement();
				System.out.print("tries:\t");
				System.out.println(Long.toHexString(ti.getStartAddr()) + ", "
						+ Long.toHexString(ti.getStartAddr() + ti.getInsnCount()));
				
				
				int hCount = Math.abs(ti.getHandler().getSize());
				for(int hSize=0; hSize<hCount; hSize++){
					DexEncodedTypeAddrPair pair = ti.getHandler().getHandlers().elementAt(hSize);
					System.out.println("\t" + pair.getTypeIdx() + "\t-\t" + Long.toHexString(pair.getAddr()));
				}
				if(ti.getHandler().getSize()<=0){
					System.out.println("\tany\t-\t" + Long.toHexString(ti.getHandler().getCatchAllAddr()));
				}
				
			}
			}//debug

			// for(int k=0;k<insnsSize;k++){
			// System.out.println("instruction list: " +
			// decodedInsns.elementAt(k).getOpCode());
			// }
			return offset;
		} else {
			// this.decodedInsns = new LinkedHashMap<Integer, DexDecodedInsn>();
			return 0;
		}
	}
}