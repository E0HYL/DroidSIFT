package mySoot.preprocessor;

//import com.android.dx.decoder.*;
import java.util.*;

/*
 * Holds the contents of a decoded instruction.
 */
public class DexDecodedInsn {

	private long vA;
	private long vB;
	private long vBWide; /*
						 * u8 for kFmt51l; currently use long instead, need
						 * fixing
						 */
	private long vC;
	private long[] arg; /* arg[5] vC/D/E/F/G in invoke or filled-new-array */
	protected int opCode;

	private int flags;
	private int offset; // offset from the first instruction in a method to the
						// current one

	private boolean isPackedSwitch;
	private boolean isSparseSwitch;
	private DexPackedSwitch packedSwitch;
	private DexSparseSwitch sparseSwitch;

	private long phiName;
	private Vector<Long> phiOperands;
	private int phiOperandsSize;

	private Vector<Long> invokeRangeParameters;
	
	private String permission = "";

	public DexDecodedInsn() {
		this.vA = 0;
		this.vB = 0;
		this.vBWide = 0;
		this.vC = 0;
		this.arg = new long[5];
		for (int i = 0; i < 5; i++) {
			arg[i] = 0;
		}
		this.opCode = 0;

		this.flags = 0;
		this.offset = 0;

		this.isPackedSwitch = false;
		this.isSparseSwitch = false;
		this.packedSwitch = null;
		this.sparseSwitch = null;

		this.phiName = -1;
		this.phiOperands = null;
		this.phiOperandsSize = 0;
		this.invokeRangeParameters = new Vector<Long>();
		this.permission = "";
	}

	public DexDecodedInsn(int opc) {
		this.vA = 0;
		this.vB = 0;
		this.vBWide = 0;
		this.vC = 0;
		this.arg = new long[5];
		for (int i = 0; i < 5; i++) {
			arg[i] = 0;
		}
		this.opCode = opc;

		this.flags = 0;
		this.offset = -1;

		this.isPackedSwitch = false;
		this.isSparseSwitch = false;
		this.packedSwitch = null;
		this.sparseSwitch = null;

		this.phiName = -1;
		this.phiOperands = null;
		this.phiOperandsSize = 0;
		this.invokeRangeParameters = new Vector<Long>();
		this.permission = "";
	}

	public DexDecodedInsn(int opc, long vA) {
		this.vA = vA;
		this.vB = 0;
		this.vBWide = 0;
		this.vC = 0;
		this.arg = new long[5];
		for (int i = 0; i < 5; i++) {
			arg[i] = 0;
		}
		this.opCode = opc;

		this.flags = 0;
		this.offset = -1;

		this.isPackedSwitch = false;
		this.isSparseSwitch = false;
		this.packedSwitch = null;
		this.sparseSwitch = null;

		this.phiName = -1;
		this.phiOperands = null;
		this.phiOperandsSize = 0;
		this.invokeRangeParameters = new Vector<Long>();
		this.permission = "";
	}

	public DexDecodedInsn(int opc, long vA, long vB, long vC, long[] arg) {
		this.vA = vA;
		this.vB = vB;
		this.vBWide = 0;
		this.vC = vC;
		this.arg = new long[5];
		for (int i = 0; i < 5; i++) {
			this.arg[i] = arg[i];
		}
		this.opCode = opc;

		this.flags = 0;
		this.offset = -1;

		this.isPackedSwitch = false;
		this.isSparseSwitch = false;
		this.packedSwitch = null;
		this.sparseSwitch = null;

		this.phiName = -1;
		this.phiOperands = null;
		this.phiOperandsSize = 0;
		this.invokeRangeParameters = new Vector<Long>();
		this.permission = "";
	}

	public DexDecodedInsn(int opc, long vA, long vB) {
		this.vA = vA;
		this.vB = vB;
		this.vBWide = 0;
		this.vC = 0;
		this.arg = new long[5];
		for (int i = 0; i < 5; i++) {
			arg[i] = 0;
		}
		this.opCode = opc;

		this.flags = 0;
		this.offset = -1;

		this.isPackedSwitch = false;
		this.isSparseSwitch = false;
		this.packedSwitch = null;
		this.sparseSwitch = null;

		this.phiName = -1;
		this.phiOperands = null;
		this.phiOperandsSize = 0;
		this.invokeRangeParameters = new Vector<Long>();
		this.permission = "";
	}

	public DexDecodedInsn(int opc, long vA, long vB, long vC) {
		this.vA = vA;
		this.vB = vB;
		this.vBWide = 0;
		this.vC = vC;
		this.arg = new long[5];
		for (int i = 0; i < 5; i++) {
			arg[i] = 0;
		}
		this.opCode = opc;

		this.flags = 0;
		this.offset = -1;

		this.isPackedSwitch = false;
		this.isSparseSwitch = false;
		this.packedSwitch = null;
		this.sparseSwitch = null;

		this.phiName = -1;
		this.phiOperands = null;
		this.phiOperandsSize = 0;
		this.invokeRangeParameters = new Vector<Long>();
		this.permission = "";
	}

	public DexDecodedInsn(long phiName) {
		this.vA = 0;
		this.vB = 0;
		this.vBWide = 0;
		this.vC = 0;
		this.arg = new long[5];
		for (int i = 0; i < 5; i++) {
			arg[i] = 0;
		}
		this.opCode = DexInsnConsts.OP_PHI;

		this.flags = 0;
		this.offset = -1;

		this.isPackedSwitch = false;
		this.isSparseSwitch = false;
		this.packedSwitch = null;
		this.sparseSwitch = null;

		// if(opc==DexInsnConsts.OP_PHI){
		this.phiOperands = new Vector<Long>();
		this.phiName = phiName;
		// }else{
		// this.phiOperands = null;
		// this.phiName = -1;
		// }

		this.phiOperandsSize = 0;
		this.invokeRangeParameters = new Vector<Long>();
		this.permission = "";
	}

	public DexDecodedInsn clone() {
		DexDecodedInsn dInsn = new DexDecodedInsn();
		dInsn.vA = this.vA;
		dInsn.vB = this.vB;
		dInsn.vBWide = this.vBWide;
		dInsn.vC = this.vC;
		for (int i = 0; i < 5; i++) {
			dInsn.arg[i] = this.arg[i];
		}
		dInsn.opCode = this.opCode;
		dInsn.flags = this.flags;
		dInsn.offset = this.offset;

		dInsn.isPackedSwitch = this.isPackedSwitch;
		dInsn.isSparseSwitch = this.isSparseSwitch;

		// dInsn.packedSwitch = new DexPackedSwitch();
		// System.out.println(this.getPackedSwitch().clone());
		if (this.isPackedSwitch()) {
			dInsn.packedSwitch = this.getPackedSwitch().clone();
		}

		// dInsn.sparseSwitch = new DexSparseSwitch();
		if (this.isSparseSwitch()) {
			dInsn.sparseSwitch = this.getSparseSwitch().clone();
		}

		dInsn.phiName = this.phiName;
		dInsn.phiOperandsSize = this.phiOperandsSize;
		if (phiName != -1) {
			dInsn.phiOperands = new Vector<Long>();
			for (int i = 0; i < this.phiOperandsSize; i++) {
				dInsn.phiOperands.add(this.phiOperands.elementAt(i));
			}
		} else {
			dInsn.phiOperands = null;
		}

		if ((opCode >= DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE)
				&& (opCode <= DexInsnConsts.OP_INVOKE_INTERFACE_RANGE)) {
			for (int i = 0; i < this.invokeRangeParameters.size(); i++) {
				dInsn.invokeRangeParameters.add(this.invokeRangeParameters
						.elementAt(i));
			}
		}
		dInsn.permission = this.permission;

		return dInsn;
	}
	
	public void setPermission(String permission){
		this.permission = permission;
	}
	
	public String getPermission(){
		return this.permission;
	}

	public void setInvokeRangeParameters() {
		// this.invokeRangeParameters = new Vector<Long>();
		for (int i = 0; i < (int) this.vA; i++) {
			this.invokeRangeParameters.add(new Long(this.vC + i));
		}
	}

	public void setInvokeRangeParametersAt(long value, int index) {
		this.invokeRangeParameters.setElementAt(new Long(value), index);
	}

	public Vector<Long> getInvokeRangeParameters() {
		return this.invokeRangeParameters;
	}

	public long getPhiName() {
		return this.phiName;
	}

	public Vector<Long> getPhiOperands() {
		return this.phiOperands;
	}

	public long getPhiOperandsAt(int index) {

		// System.out.println("in getPhiOperandsAt: index=" + index);
		return this.phiOperands.elementAt(index);
	}

	public int getPhiOperandsSize() {
		return this.phiOperandsSize;
	}

	public void addPhiOperands(long operand) {
		this.phiOperands.add(new Long(operand));
		this.phiOperandsSize++;
	}

	public void setPhiName(long phiName) {
		this.phiName = phiName;
	}

	public void setPhiOperands(int index, long value) {
		this.phiOperands.setElementAt(new Long(value), index);
	}

	public void createPackedSwitch(Vector<Integer> insns, int off) {
		int offset = off;
		this.isPackedSwitch = true;
		this.packedSwitch = new DexPackedSwitch();
		packedSwitch.parse(insns, offset);
	}

	public void createSparseSwitch(Vector<Integer> insns, int off) {
		int offset = off;
		this.isSparseSwitch = true;
		this.sparseSwitch = new DexSparseSwitch();
		sparseSwitch.parse(insns, offset);
	}

	public boolean isPackedSwitch() {
		return this.isPackedSwitch;
	}

	public boolean isSparseSwitch() {
		return this.isSparseSwitch;
	}

	public long getVA() {
		return this.vA;
	}

	public void setVA(long vA) {
		this.vA = vA;
	}

	public long getVB() {
		return this.vB;
	}

	public void setVB(long vB) {
		this.vB = vB;
	}

	public long getVBWide() {
		return this.vBWide;
	}

	public void setVBWide(long vBWide) {
		this.vBWide = vBWide;
	}

	public long getVC() {
		return this.vC;
	}

	public void setVC(long vC) {
		this.vC = vC;
	}

	public long[] getArg() {
		return this.arg;
	}

	public void setArg(long[] arg) {
		for (int i = 0; i < 5; i++) {
			this.arg[i] = arg[i];
		}
	}

	public void setOneArg(long arg1, long pos) {
		this.arg[(int) pos] = arg1;
	}

	public int getOpCode() {
		return this.opCode;
	}

	public void setOpCode(int opCode) {
		this.opCode = opCode;
	}

	public int getFlags() {
		return this.flags;
	}

	public void setFlags(int flags) {
		this.flags = flags;
	}

	public int getOffset() {
		return this.offset;
	}

	public void setOffset(int off) {
		this.offset = off;
	}

	public DexPackedSwitch getPackedSwitch() {
		return this.packedSwitch;
	}

	public DexSparseSwitch getSparseSwitch() {
		return this.sparseSwitch;
	}

	public int getPackedSwitchSize() {
		return this.packedSwitch.getSize();
	}

	public Vector<Integer> getPackedSwitchTargets() {
		return this.packedSwitch.getTargets();
	}

	public int getSparseSwitchSize() {
		return this.sparseSwitch.getSize();
	}

	public LinkedHashMap<Integer, Integer> getSparseSwitchTargets() {
		return this.sparseSwitch.getTargets();
	}

	public void copyPackedSwitch(DexDecodedInsn source) {
		this.packedSwitch = source.packedSwitch.clone();
	}

	public void copySparseSwitch(DexDecodedInsn source) {
		this.sparseSwitch = source.sparseSwitch.clone();
	}

	public void dumpSSA(int noOfVars, DexFile dFile) {

		DexStringIds stringIds = dFile.getStringIds();
		DexMethodIds methodIds = dFile.getMethodIds();
		DexTypeIds typeIds = dFile.getTypeIds();

		if (this.offset >= 0) {
			System.out.print("|" + Integer.toHexString(this.offset) + "\t");
		} else {
			System.out.print("|INSERTED\t");
		}
		switch (this.opCode) {
		case DexInsnConsts.OP_PHI: {
			System.out.print(this.adjustPhiName(this.getPhiName(), noOfVars)
					+ " := Phi(");
			for (int k = 0; k < this.getPhiOperandsSize() - 1; k++) {
				// System.out.print("v");
				int value = this.getPhiOperands().elementAt(k).intValue();
				System.out.print(this.adjustPhiName(value, noOfVars));
				System.out.print(",");
			}
			long lastValue = this
					.getPhiOperandsAt(this.getPhiOperandsSize() - 1);
			System.out.println(this.adjustPhiName(lastValue, noOfVars) + ")");
		}
			break;

		case DexInsnConsts.OP_MOVE: {
			System.out.println("move "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_FROM16: {
			System.out.println("move/from16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_16: {
			System.out.println("move/16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_WIDE: {
			System.out.println("move-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_WIDE_FROM16: {
			System.out.println("move-wide/from16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_WIDE_16: {
			System.out.println("move-wide/16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_OBJECT: {
			System.out.println("move-object "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_OBJECT_FROM16: {
			System.out.println("move-object/from16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_OBJECT_16: {
			System.out.println("move-object/16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_RESULT: {
			System.out.println("move-result "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_RESULT_WIDE: {
			System.out.println("move-result-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_RESULT_OBJECT: {
			System.out.println("move-result-object "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MOVE_EXCEPTION: {
			System.out.println("move-exception "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_RETURN_VOID: {
			System.out.println("return-void");
		}
			break;

		case DexInsnConsts.OP_RETURN: {
			System.out.println("return "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_RETURN_WIDE: {
			System.out.println("return-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_RETURN_OBJECT: {
			System.out.println("return-object "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_CONST_4: {
			System.out.println("const/4 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_16: {
			System.out.println("const/16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST: {
			System.out.println("const "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_HIGH16: {
			System.out.println("const/high16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_WIDE_16: {
			System.out.println("const-wide/16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_WIDE_32: {
			System.out.println("const-wide/32 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_WIDE: {
			System.out.println("const-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVBWide());
		}
			break;

		case DexInsnConsts.OP_CONST_WIDE_HIGH16: {
			System.out.println("const-wide/high16 "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", #"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_STRING: {
			System.out.println("const-string "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", string@"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_STRING_JUMBO: {
			System.out.println("const-string/jumbo "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", string@"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_CONST_CLASS: {
			System.out.println("const-class "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", type@"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_MONITOR_ENTER: {
			System.out.println("monitor-enter "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MONITOR_EXIT: {
			System.out.println("monitor-exit "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_CHECK_CAST: {
			System.out.println("check-cast "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", type@"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_INSTANCE_OF: {
			System.out.println("instance-of "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", type@"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_ARRAY_LENGTH: {
			System.out.println("array-length "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_NEW_INSTANCE: {
			System.out.println("new-instance "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", type@"
					+ this.getVB());
		}
			break;

		case DexInsnConsts.OP_NEW_ARRAY: {
			System.out.println("new-array "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", type@"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_FILLED_NEW_ARRAY: {
			// need to be modified
			System.out.println("filled-new-array");
		}
			break;

		case DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE: {
			// need to be modified
			System.out.println("filled-new-array/range");
		}
			break;

		case DexInsnConsts.OP_FILL_ARRAY_DATA: {
			System.out.println("fill-array-data "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_THROW: {
			System.out.println("throw "
					+ this.adjustPhiName(this.getVA(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_GOTO: {
			System.out.println("goto "
					+ Integer.toHexString((int) (this.getVA() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_GOTO_16: {
			System.out.println("goto/16 "
					+ Integer.toHexString((int) (this.getVA() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_GOTO_32: {
			System.out.println("goto/32 "
					+ Integer.toHexString((int) (this.getVA() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_PACKED_SWITCH: {
			System.out.println("packed-switch "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_SPARSE_SWITCH: {
			System.out.println("sparse-switch "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_CMPL_FLOAT: {
			System.out.println("cmpl-float "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_CMPG_FLOAT: {
			System.out.println("cmpg-float "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_CMPL_DOUBLE: {
			System.out.println("cmpl-double "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_CMPG_DOUBLE: {
			System.out.println("cmpg-double "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_CMP_LONG: {
			System.out.println("cmp-long "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_IF_EQ: {
			System.out.println("if-eq "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ this.adjustPhiName(this.getVB(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVC() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_NE: {
			System.out.println("if-ne "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ this.adjustPhiName(this.getVB(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVC() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_LT: {
			System.out.println("if-lt "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ this.adjustPhiName(this.getVB(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVC() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_GE: {
			System.out.println("if-ge "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ this.adjustPhiName(this.getVB(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVC() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_GT: {
			System.out.println("if-gt "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ this.adjustPhiName(this.getVB(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVC() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_LE: {
			System.out.println("if-le "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ this.adjustPhiName(this.getVB(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVC() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_EQZ: {
			System.out.println("if-eqz "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_NEZ: {
			System.out.println("if-nez "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_LTZ: {
			System.out.println("if-ltz "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_GEZ: {
			System.out.println("if-gez "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_GTZ: {
			System.out.println("if-gtz "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_IF_LEZ: {
			System.out.println("if-lez "
					+ this.adjustPhiName(this.getVA(), noOfVars)
					+ ", "
					+ Integer.toHexString((int) (this.getVB() + this
							.getOffset())));
		}
			break;

		case DexInsnConsts.OP_AGET: {
			System.out.println("aget "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AGET_WIDE: {
			System.out.println("aget-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AGET_OBJECT: {
			System.out.println("aget-object "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AGET_BOOLEAN: {
			System.out.println("aget-boolean "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AGET_BYTE: {
			System.out.println("aget-byte "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AGET_CHAR: {
			System.out.println("aget-char "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AGET_SHORT: {
			System.out.println("aget-short "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_APUT: {
			System.out.println("aput "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_APUT_WIDE: {
			System.out.println("aput-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_APUT_OBJECT: {
			System.out.println("aput-object "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_APUT_BOOLEAN: {
			System.out.println("aput-boolean "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_APUT_BYTE: {
			System.out.println("aput-byte "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_APUT_CHAR: {
			System.out.println("aput-char "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_APUT_SHORT: {
			System.out.println("aput-short "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_IGET: {
			System.out.println("iget "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IGET_WIDE: {
			System.out.println("iget-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IGET_OBJECT: {
			System.out.println("iget-object "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IGET_BOOLEAN: {
			System.out.println("iget-boolean "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IGET_BYTE: {
			System.out.println("iget-byte "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IGET_CHAR: {
			System.out.println("iget-char "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IGET_SHORT: {
			System.out.println("iget-short "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IPUT: {
			System.out.println("iput "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IPUT_WIDE: {
			System.out.println("iput-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IPUT_OBJECT: {
			System.out.println("iput-object "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IPUT_BOOLEAN: {
			System.out.println("iput-boolean "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IPUT_BYTE: {
			System.out.println("iput-byte "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IPUT_CHAR: {
			System.out.println("iput-char "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_IPUT_SHORT: {
			System.out.println("iput-short "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars) + ", "
					+ "field@" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_SGET: {
			System.out.println("sget "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SGET_WIDE: {
			System.out.println("sget-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SGET_OBJECT: {
			System.out.println("sget-object "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SGET_BOOLEAN: {
			System.out.println("sget-boolean "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SGET_BYTE: {
			System.out.println("sget-byte "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SGET_CHAR: {
			System.out.println("sget-char "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SGET_SHORT: {
			System.out.println("sget-short "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SPUT: {
			System.out.println("sput "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SPUT_WIDE: {
			System.out.println("sput-wide "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SPUT_OBJECT: {
			System.out.println("sput-object "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SPUT_BOOLEAN: {
			System.out.println("sput-boolean "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SPUT_BYTE: {
			System.out.println("sput-byte "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SPUT_CHAR: {
			System.out.println("sput-char "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_SPUT_SHORT: {
			System.out.println("sput-short "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ "field@" + this.getVB());
		}
			break;

		case DexInsnConsts.OP_INVOKE_VIRTUAL: {
			System.out.print("invoke-virtual {");
			if (this.getVB() > 0) {
				if(this.getVB()<5){
					for (int i = 0; i < this.getVB() - 1; i++) {
						System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
					}
					System.out.print(this.adjustPhiName(this.getArg()[(int) this.getVB() - 1], noOfVars));
				}else if(this.getVB()==5){
					for (int i = 0; i < this.getVB() - 1; i++) {
						System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
					}
					System.out.print(this.adjustPhiName(this.getVA(), noOfVars));
				}
			}
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVC())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVC())));
			System.out.println("}, method@" + this.getVC() + ": " + clazz + " "
					+ func);
			// if(func.equals(new String("add"))){
			// System.out.println("This is an add method, matching succeeds.");
			// }
			// if(func.equals(new String("add")) && clazz.equals(new
			// String("Ljava/util/Vector;"))){
			// System.out.println("This is an Vector.add method, matching succeeds.");
			// }
		}
			break;

		case DexInsnConsts.OP_INVOKE_SUPER: {
			System.out.print("invoke-super {");
			if (this.getVB() > 0) {
				if (this.getVB() > 0) {
					if(this.getVB()<5){
						for (int i = 0; i < this.getVB() - 1; i++) {
							System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
						}
						System.out.print(this.adjustPhiName(this.getArg()[(int) this.getVB() - 1], noOfVars));
					}else if(this.getVB()==5){
						for (int i = 0; i < this.getVB() - 1; i++) {
							System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
						}
						System.out.print(this.adjustPhiName(this.getVA(), noOfVars));
					}
				}
			}
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVC())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVC())));
			System.out.println("}, method@" + this.getVC() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_DIRECT: {
			System.out.print("invoke-direct {");
			if (this.getVB() > 0) {
				if(this.getVB()<5){
					for (int i = 0; i < this.getVB() - 1; i++) {
						System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
					}
					System.out.print(this.adjustPhiName(this.getArg()[(int) this.getVB() - 1], noOfVars));
				}else if(this.getVB()==5){
					for (int i = 0; i < this.getVB() - 1; i++) {
						System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
					}
					System.out.print(this.adjustPhiName(this.getVA(), noOfVars));
				}
			}
			
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVC())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVC())));
			System.out.println("}, method@" + this.getVC() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_STATIC: {
			System.out.print("invoke-static {");
			if (this.getVB() > 0) {
				if (this.getVB() > 0) {
					if(this.getVB()<5){
						for (int i = 0; i < this.getVB() - 1; i++) {
							System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
						}
						System.out.print(this.adjustPhiName(this.getArg()[(int) this.getVB() - 1], noOfVars));
					}else if(this.getVB()==5){
						for (int i = 0; i < this.getVB() - 1; i++) {
							System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
						}
						System.out.print(this.adjustPhiName(this.getVA(), noOfVars));
					}
				}
			}
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVC())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVC())));
			System.out.println("}, method@" + this.getVC() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_INTERFACE: {
			System.out.print("invoke-interface {");
			if (this.getVB() > 0) {
				if (this.getVB() > 0) {
					if(this.getVB()<5){
						for (int i = 0; i < this.getVB() - 1; i++) {
							System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
						}
						System.out.print(this.adjustPhiName(this.getArg()[(int) this.getVB() - 1], noOfVars));
					}else if(this.getVB()==5){
						for (int i = 0; i < this.getVB() - 1; i++) {
							System.out.print(this.adjustPhiName(this.getArg()[i], noOfVars) + ", ");
						}
						System.out.print(this.adjustPhiName(this.getVA(), noOfVars));
					}
				}
			}
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVC())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVC())));
			System.out.println("}, method@" + this.getVC() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE: {
			System.out.print("invoke-virtual/range {");
			for (int i = 0; i < this.getInvokeRangeParameters().size() - 1; i++) {
				long x = this.getInvokeRangeParameters().elementAt(i);
				System.out.print(this.adjustPhiName(x, noOfVars) + ", ");
			}
			long last = this.getInvokeRangeParameters().elementAt(
					this.getInvokeRangeParameters().size() - 1);
			System.out.print(this.adjustPhiName(last, noOfVars));
			/*
			 * if(this.getVA()>5){
			 * 
			 * }else if(this.getVA()>0){ for(int i=0;i<this.getVA()-1;i++){
			 * System.out.print(this.adjustPhiName((int)this.getArg()[i]) +
			 * ", "); }
			 * System.out.print(this.adjustPhiName((int)this.getArg()[(int
			 * )this.getVA()-1])); }
			 */
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVB())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVB())));
			System.out.println("}, method@" + this.getVB() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_SUPER_RANGE: {
			System.out.print("invoke-super/range {");
			for (int i = 0; i < this.getInvokeRangeParameters().size() - 1; i++) {
				long x = this.getInvokeRangeParameters().elementAt(i);
				System.out.print(this.adjustPhiName(x, noOfVars) + ", ");
			}
			long last = this.getInvokeRangeParameters().elementAt(
					this.getInvokeRangeParameters().size() - 1);
			System.out.print(this.adjustPhiName(last, noOfVars));
			/*
			 * if(this.getVA()>5){
			 * 
			 * }else if(this.getVA()>0){ for(int i=0;i<this.getVA()-1;i++){
			 * System.out.print(this.adjustPhiName((int)this.getArg()[i]) +
			 * ", "); }
			 * System.out.print(this.adjustPhiName((int)this.getArg()[(int
			 * )this.getVA()-1])); }
			 */
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVB())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVB())));
			System.out.println("}, method@" + this.getVB() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_DIRECT_RANGE: {
			System.out.print("invoke-direct/range {");
			for (int i = 0; i < this.getInvokeRangeParameters().size() - 1; i++) {
				long x = this.getInvokeRangeParameters().elementAt(i);
				System.out.print(this.adjustPhiName(x, noOfVars) + ", ");
			}
			long last = this.getInvokeRangeParameters().elementAt(
					this.getInvokeRangeParameters().size() - 1);
			System.out.print(this.adjustPhiName(last, noOfVars));
			/*
			 * if(this.getVA()>5){
			 * 
			 * }else if(this.getVA()>0){ for(int i=0;i<this.getVA()-1;i++){
			 * System.out.print(this.adjustPhiName((int)this.getArg()[i]) +
			 * ", "); }
			 * System.out.print(this.adjustPhiName((int)this.getArg()[(int
			 * )this.getVA()-1])); }
			 */
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVB())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVB())));
			System.out.println("}, method@" + this.getVB() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_STATIC_RANGE: {
			System.out.print("invoke-static/range {");
			for (int i = 0; i < this.getInvokeRangeParameters().size() - 1; i++) {
				long x = this.getInvokeRangeParameters().elementAt(i);
				System.out.print(this.adjustPhiName(x, noOfVars) + ", ");
			}
			long last = this.getInvokeRangeParameters().elementAt(
					this.getInvokeRangeParameters().size() - 1);
			System.out.print(this.adjustPhiName(last, noOfVars));
			/*
			 * if(this.getVA()>5){
			 * 
			 * }else if(this.getVA()>0){ for(int i=0;i<this.getVA()-1;i++){
			 * System.out.print(this.adjustPhiName((int)this.getArg()[i]) +
			 * ", "); }
			 * System.out.print(this.adjustPhiName((int)this.getArg()[(int
			 * )this.getVA()-1]));ܣ }
			 */
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVB())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVB())));
			System.out.println("}, method@" + this.getVB() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_INVOKE_INTERFACE_RANGE: {
			System.out.print("invoke-interface/range {");
			for (int i = 0; i < this.getInvokeRangeParameters().size() - 1; i++) {
				long x = this.getInvokeRangeParameters().elementAt(i);
				System.out.print(this.adjustPhiName(x, noOfVars) + ", ");
			}
			long last = this.getInvokeRangeParameters().elementAt(
					this.getInvokeRangeParameters().size() - 1);
			System.out.print(this.adjustPhiName(last, noOfVars));
			/*
			 * if(this.getVA()>5){
			 * 
			 * }else if(this.getVA()>0){ for(int i=0;i<this.getVA()-1;i++){
			 * System.out.print(this.adjustPhiName((int)this.getArg()[i]) +
			 * ", "); }
			 * System.out.print(this.adjustPhiName((int)this.getArg()[(int
			 * )this.getVA()-1])); }
			 */
			String func = stringIds.getStringAt(
					(int) methodIds.getNameIdAt((int) this.getVB())).toString();
			String clazz = stringIds.getStringAt((int) typeIds
					.getDescriptorIdxAt(methodIds.getClassIdxAt((int) this
							.getVB())));
			System.out.println("}, method@" + this.getVB() + ": " + clazz + " "
					+ func);
		}
			break;

		case DexInsnConsts.OP_NEG_INT: {
			System.out.println("neg-int "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_NOT_INT: {
			System.out.println("not-int "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_NEG_LONG: {
			System.out.println("neg-long "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_NOT_LONG: {
			System.out.println("not-long "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_NEG_FLOAT: {
			System.out.println("neg-float "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_NEG_DOUBLE: {
			System.out.println("neg-double "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_INT_TO_LONG: {
			System.out.println("int-to-long "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_INT_TO_FLOAT: {
			System.out.println("int-to-float "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_INT_TO_DOUBLE: {
			System.out.println("int-to-double "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_LONG_TO_INT: {
			System.out.println("long-to-int "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_LONG_TO_FLOAT: {
			System.out.println("long-to-float "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_LONG_TO_DOUBLE: {
			System.out.println("long-to-double "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_FLOAT_TO_INT: {
			System.out.println("float-to-int "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_FLOAT_TO_LONG: {
			System.out.println("float-to-long "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_FLOAT_TO_DOUBLE: {
			System.out.println("float-to-double "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_DOUBLE_TO_INT: {
			System.out.println("double-to-int "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_DOUBLE_TO_LONG: {
			System.out.println("double-to-long "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_DOUBLE_TO_FLOAT: {
			System.out.println("double-to-float "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_INT_TO_BYTE: {
			System.out.println("int-to-byte "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_INT_TO_CHAR: {
			System.out.println("int-to-char "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_INT_TO_SHORT: {
			System.out.println("int-to-short "
					+ this.adjustPhiName(this.getVA(), noOfVars) + ", "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_ADD_INT: {
			System.out.println("add-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " + "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_SUB_INT: {
			System.out.println("sub-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " - "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MUL_INT: {
			System.out.println("mul-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " * "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_DIV_INT: {
			System.out.println("div-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " / "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_REM_INT: {
			System.out.println("rem-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " % "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AND_INT: {
			System.out.println("and-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " & "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_OR_INT: {
			System.out.println("or-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " | "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_XOR_INT: {
			System.out.println("xor-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " ^ "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_SHL_INT: {
			System.out.println("shl-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " << ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_SHR_INT: {
			System.out.println("shr-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " >> ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_USHR_INT: {
			System.out.println("ushr-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " >> ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_ADD_LONG: {
			System.out.println("add-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " + "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_SUB_LONG: {
			System.out.println("sub-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " - "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MUL_LONG: {
			System.out.println("mul-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " * "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_DIV_LONG: {
			System.out.println("div-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " / "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_REM_LONG: {
			System.out.println("rem-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " % "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_AND_LONG: {
			System.out.println("and-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " & "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_OR_LONG: {
			System.out.println("or-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " | "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_XOR_LONG: {
			System.out.println("xor-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " ^ "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_SHL_LONG: {
			System.out.println("shl-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " << ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_SHR_LONG: {
			System.out.println("shr-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " >> ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_USHR_LONG: {
			System.out.println("ushr-long: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " >> ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_ADD_FLOAT: {
			System.out.println("add-float: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " + "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_SUB_FLOAT: {
			System.out.println("sub-float: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " - "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MUL_FLOAT: {
			System.out.println("mul-float: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " * "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_DIV_FLOAT: {
			System.out.println("div-float: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " / "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_REM_FLOAT: {
			System.out.println("rem-float: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " % "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_ADD_DOUBLE: {
			System.out.println("add-double: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " + "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_SUB_DOUBLE: {
			System.out.println("sub-double: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " - "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MUL_DOUBLE: {
			System.out.println("mul-double: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " * "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_DIV_DOUBLE: {
			System.out.println("div-double: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " / "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_REM_DOUBLE: {
			System.out.println("rem-double: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " % "
					+ this.adjustPhiName(this.getVC(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_ADD_INT_2ADDR: {
			// System.out.println("add-int/2addr " +
			// this.adjustPhiName(this.getVA(), noOfVars) + ", " +
			// this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;
		case DexInsnConsts.OP_SUB_INT_2ADDR:
		case DexInsnConsts.OP_MUL_INT_2ADDR:
		case DexInsnConsts.OP_DIV_INT_2ADDR:
		case DexInsnConsts.OP_REM_INT_2ADDR:
		case DexInsnConsts.OP_AND_INT_2ADDR:
		case DexInsnConsts.OP_OR_INT_2ADDR:
		case DexInsnConsts.OP_XOR_INT_2ADDR:
		case DexInsnConsts.OP_SHL_INT_2ADDR:
		case DexInsnConsts.OP_SHR_INT_2ADDR:
		case DexInsnConsts.OP_USHR_INT_2ADDR:

		case DexInsnConsts.OP_ADD_LONG_2ADDR:
		case DexInsnConsts.OP_SUB_LONG_2ADDR:
		case DexInsnConsts.OP_MUL_LONG_2ADDR:
		case DexInsnConsts.OP_DIV_LONG_2ADDR:
		case DexInsnConsts.OP_REM_LONG_2ADDR:
		case DexInsnConsts.OP_AND_LONG_2ADDR:
		case DexInsnConsts.OP_OR_LONG_2ADDR:
		case DexInsnConsts.OP_XOR_LONG_2ADDR:
		case DexInsnConsts.OP_SHL_LONG_2ADDR:
		case DexInsnConsts.OP_SHR_LONG_2ADDR:
		case DexInsnConsts.OP_USHR_LONG_2ADDR:

		case DexInsnConsts.OP_ADD_FLOAT_2ADDR:
		case DexInsnConsts.OP_SUB_FLOAT_2ADDR:
		case DexInsnConsts.OP_MUL_FLOAT_2ADDR:
		case DexInsnConsts.OP_DIV_FLOAT_2ADDR:
		case DexInsnConsts.OP_REM_FLOAT_2ADDR:

		case DexInsnConsts.OP_ADD_DOUBLE_2ADDR:
		case DexInsnConsts.OP_SUB_DOUBLE_2ADDR:
		case DexInsnConsts.OP_MUL_DOUBLE_2ADDR:
		case DexInsnConsts.OP_DIV_DOUBLE_2ADDR:
		case DexInsnConsts.OP_REM_DOUBLE_2ADDR:
			break;

		case DexInsnConsts.OP_ADD_INT_LIT16: {
			System.out.println("add-int/lit16: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " + " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_RSUB_INT: {
			System.out.println("rsub-int: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := " + "#"
					+ this.getVC() + " - "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MUL_INT_LIT16: {
			System.out.println("mul-int/lit16: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " * " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_DIV_INT_LIT16: {
			System.out.println("div-int/lit16: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " / " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_REM_INT_LIT16: {
			System.out.println("rem-int/lit16: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " % " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_AND_INT_LIT16: {
			System.out.println("and-int/lit16: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " & " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_OR_INT_LIT16: {
			System.out.println("or-int/lit16: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " | " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_XOR_INT_LIT16: {
			System.out.println("add-int/lit16: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " ^ " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_ADD_INT_LIT8: {
			System.out.println(this.adjustPhiName(this.getVA(), noOfVars)
					+ " := " + this.adjustPhiName(this.getVB(), noOfVars)
					+ " + " + "#" + this.getVC());
		}
			break;

		case DexInsnConsts.OP_RSUB_INT_LIT8: {
			System.out.println("rsub-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := " + "#"
					+ this.getVC() + " - "
					+ this.adjustPhiName(this.getVB(), noOfVars));
		}
			break;

		case DexInsnConsts.OP_MUL_INT_LIT8: {
			System.out.println("mul-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " * " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_DIV_INT_LIT8: {
			System.out.println("div-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " / " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_REM_INT_LIT8: {
			System.out.println("rem-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " % " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_AND_INT_LIT8: {
			System.out.println("and-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " & " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_OR_INT_LIT8: {
			System.out.println("or-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " | " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_XOR_INT_LIT8: {
			System.out.println("add-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " ^ " + "#"
					+ this.getVC());
		}
			break;

		case DexInsnConsts.OP_SHL_INT_LIT8: {
			System.out.println("shl-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " << ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_SHR_INT_LIT8: {
			System.out.println("shr-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " >> ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		case DexInsnConsts.OP_USHR_INT_LIT8: {
			System.out.println("ushr-int/lit8: "
					+ this.adjustPhiName(this.getVA(), noOfVars) + " := "
					+ this.adjustPhiName(this.getVB(), noOfVars) + " >> ("
					+ this.adjustPhiName(this.getVC(), noOfVars) + " & 0x1f)");
		}
			break;

		default:
			break;
		}
	}

	private String adjustPhiName(long value, int noOfVars) {
		long result = value % noOfVars;
		long index = (value - result) / noOfVars;
		return new String("v" + result + "_" + index);
	}

	class DexPackedSwitch {
		private int ident;
		private int size;
		private int firstKey;
		private Vector<Integer> targets;

		public DexPackedSwitch() {
			this.ident = 0;
			this.size = 0;
			this.firstKey = 0;
			this.targets = new Vector<Integer>();
		}

		public DexPackedSwitch clone() {
			DexPackedSwitch dps = new DexPackedSwitch();
			dps.ident = this.ident;
			dps.size = this.size;
			dps.firstKey = this.firstKey;
			for (int i = 0; i < this.targets.size(); i++) {
				int target = this.targets.elementAt(i).intValue();
				dps.targets.add(new Integer(target));
			}
			return dps;
		}

		public int getIdent() {
			return this.ident;
		}

		public void setIdent(int ident) {
			this.ident = ident;
		}

		public int getSize() {
			return this.size;
		}

		public void setSize(int size) {
			this.size = size;
		}

		public int getFirstKey() {
			return this.firstKey;
		}

		public void setFirstKey(int firstKey) {
			this.firstKey = firstKey;
		}

		public Vector<Integer> getTargets() {
			return this.targets;
		}

		/*
		 * public void parse(byte[] bytes, long off){ long offset = off;
		 * this.ident = DexUtil.readUnsignedShort(bytes, offset, true); offset
		 * += 2; this.size = DexUtil.readUnsignedShort(bytes, offset, true);
		 * offset += 2; this.firstKey = DexUtil.readSignedInt(bytes, offset,
		 * true); offset += 4; for(int i=0;i<this.size;i++){
		 * this.targets.add(new Integer(DexUtil.readSignedInt(bytes, offset,
		 * true))); offset += 4; } }
		 */
		public void parse(Vector<Integer> insns, int off) {
			int offset = off;
			this.ident = this.getUShort(insns, offset);
			offset++;
			// System.out.println(this.ident);

			this.size = this.getUShort(insns, offset);
			offset++;
			// System.out.println(this.size);

			this.firstKey = this.getInt(insns, offset);
			offset += 2;
			for (int i = 0; i < this.size; i++) {
				this.targets.add(new Integer(this.getInt(insns, offset)));
				offset += 2;
			}

		}

		private int getUShort(Vector<Integer> insns, int off) {
			// System.out.println(off);
			int offset = off;
			int temp = insns.elementAt(offset).intValue();
			// return (temp >> 8) | ((temp & 0xff) << 8);
			return temp;
		}

		private int getInt(Vector<Integer> insns, int off) {
			int offset = off;
			int lo = this.getUShort(insns, offset);
			int hi = this.getUShort(insns, (offset + 1));
			return (lo | (hi << 16));
		}
	}

	class DexSparseSwitch {
		private int ident;
		private int size;
		private LinkedHashMap<Integer, Integer> targets;

		public DexSparseSwitch() {
			this.ident = 0;
			this.size = 0;
			this.targets = new LinkedHashMap<Integer, Integer>();
		}

		public DexSparseSwitch clone() {
			DexSparseSwitch dss = new DexSparseSwitch();
			dss.ident = this.ident;
			dss.size = this.size;

			Set<Integer> keySet = this.targets.keySet();
			Iterator<Integer> keyIterator = keySet.iterator();
			while (keyIterator.hasNext()) {

				Integer key = keyIterator.next();
				Integer value = this.targets.get(key);
				dss.targets.put(new Integer(key.intValue()), new Integer(value
						.intValue()));
			}

			return dss;
		}

		public int getIdent() {
			return this.ident;
		}

		public void setIdent(int ident) {
			this.ident = ident;
		}

		public int getSize() {
			return this.size;
		}

		public void setSize(int size) {
			this.size = size;
		}

		public LinkedHashMap<Integer, Integer> getTargets() {
			return this.targets;
		}

		/*
		 * public void parse(byte[] bytes, long off){ long offset = off;
		 * this.ident = DexUtil.readUnsignedShort(bytes, offset, true); offset
		 * += 2; this.size = DexUtil.readUnsignedShort(bytes, offset, true);
		 * offset += 2; int[] keys = new int[this.size]; int[] targets = new
		 * int[this.size]; for(int i=0;i<this.size;i++){ keys[i] =
		 * DexUtil.readSignedInt(bytes, offset, true); offset += 4; } for(int
		 * j=0;j<this.size;j++){ targets[j] = DexUtil.readSignedInt(bytes,
		 * offset, true); offset += 4; } for(int k=0;k<this.size;k++){
		 * this.targets.put(new Integer(keys[k]), new Integer(targets[k])); }
		 * 
		 * }
		 */
		public void parse(Vector<Integer> insns, int off) {
			int offset = off;
			this.ident = this.getUShort(insns, offset);
			offset++;
			this.size = this.getUShort(insns, offset);
			offset++;
			int[] keys = new int[this.size];
			int[] targets = new int[this.size];
			for (int i = 0; i < this.size; i++) {
				keys[i] = this.getInt(insns, offset);
				offset += 2;
			}
			for (int j = 0; j < this.size; j++) {
				targets[j] = this.getInt(insns, offset);
				offset += 2;
			}
			for (int k = 0; k < this.size; k++) {
				this.targets.put(new Integer(keys[k]), new Integer(targets[k]));
			}
		}

		private int getUShort(Vector<Integer> insns, int off) {
			int offset = off;
			int temp = insns.elementAt(offset).intValue();
			// return (temp >> 8) | ((temp & 0xff) << 8);
			return temp;
		}

		private int getInt(Vector<Integer> insns, int off) {
			int offset = off;
			int lo = this.getUShort(insns, offset);
			int hi = this.getUShort(insns, (offset + 1));
			return (lo | (hi << 16));
		}
	}

	// handle later
	private class DexFillArrayData {
		private int ident;
		private int elementWidth;
		private long size;
		private Vector<Integer> data;
	}

	public boolean isUsed(long vr) {
		switch (this.opCode) {
		case DexInsnConsts.OP_PHI: {
			for (int i = 0; i < this.phiOperandsSize; i++) {
				long phiOperand = this.phiOperands.elementAt(i);
				if (vr == phiOperand) {
					return true;
				}
			}
		}
			break;

		// no operand
		case DexInsnConsts.OP_NOP: /*
									 * note data for e.g. switch-* encoded
									 * "inside" a NOP
									 */
		case DexInsnConsts.OP_RETURN_VOID:
		case DexInsnConsts.OP_GOTO:
		case DexInsnConsts.OP_GOTO_16:
		case DexInsnConsts.OP_GOTO_32:

			/*
			 * Optimized instructions. Not handled right now
			 */
		case DexInsnConsts.OP_IGET_QUICK:
		case DexInsnConsts.OP_IGET_WIDE_QUICK:
		case DexInsnConsts.OP_IGET_OBJECT_QUICK:
		case DexInsnConsts.OP_IPUT_QUICK:
		case DexInsnConsts.OP_IPUT_WIDE_QUICK:
		case DexInsnConsts.OP_IPUT_OBJECT_QUICK:
		case DexInsnConsts.OP_IGET_VOLATILE:
		case DexInsnConsts.OP_IPUT_VOLATILE:
		case DexInsnConsts.OP_SGET_VOLATILE:
		case DexInsnConsts.OP_SPUT_VOLATILE:
		case DexInsnConsts.OP_IGET_OBJECT_VOLATILE:
		case DexInsnConsts.OP_IPUT_OBJECT_VOLATILE:
		case DexInsnConsts.OP_SGET_OBJECT_VOLATILE:
		case DexInsnConsts.OP_SPUT_OBJECT_VOLATILE:
		case DexInsnConsts.OP_IGET_WIDE_VOLATILE:
		case DexInsnConsts.OP_IPUT_WIDE_VOLATILE:
		case DexInsnConsts.OP_SGET_WIDE_VOLATILE:
		case DexInsnConsts.OP_SPUT_WIDE_VOLATILE:
		case DexInsnConsts.OP_THROW_VERIFICATION_ERROR:

		case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK:
		case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK_RANGE:
		case DexInsnConsts.OP_INVOKE_SUPER_QUICK:
		case DexInsnConsts.OP_INVOKE_SUPER_QUICK_RANGE:
		case DexInsnConsts.OP_EXECUTE_INLINE:
		case DexInsnConsts.OP_EXECUTE_INLINE_RANGE:
		case DexInsnConsts.OP_INVOKE_DIRECT_EMPTY:

			/* these should never appear when scanning bytecode */
		case DexInsnConsts.OP_UNUSED_3E:
		case DexInsnConsts.OP_UNUSED_3F:
		case DexInsnConsts.OP_UNUSED_40:
		case DexInsnConsts.OP_UNUSED_41:
		case DexInsnConsts.OP_UNUSED_42:
		case DexInsnConsts.OP_UNUSED_43:
		case DexInsnConsts.OP_UNUSED_73:
		case DexInsnConsts.OP_UNUSED_79:
		case DexInsnConsts.OP_UNUSED_7A:
		case DexInsnConsts.OP_BREAKPOINT:
		case DexInsnConsts.OP_UNUSED_F1:
		case DexInsnConsts.OP_UNUSED_FF:
			break;

		// two operands
		case DexInsnConsts.OP_ADD_INT_2ADDR:
		case DexInsnConsts.OP_SUB_INT_2ADDR:
		case DexInsnConsts.OP_MUL_INT_2ADDR:
		case DexInsnConsts.OP_DIV_INT_2ADDR:
		case DexInsnConsts.OP_REM_INT_2ADDR:
		case DexInsnConsts.OP_AND_INT_2ADDR:
		case DexInsnConsts.OP_OR_INT_2ADDR:
		case DexInsnConsts.OP_XOR_INT_2ADDR:
		case DexInsnConsts.OP_SHL_INT_2ADDR:
		case DexInsnConsts.OP_SHR_INT_2ADDR:
		case DexInsnConsts.OP_USHR_INT_2ADDR:
		case DexInsnConsts.OP_ADD_LONG_2ADDR:
		case DexInsnConsts.OP_SUB_LONG_2ADDR:
		case DexInsnConsts.OP_MUL_LONG_2ADDR:
		case DexInsnConsts.OP_DIV_LONG_2ADDR:
		case DexInsnConsts.OP_REM_LONG_2ADDR:
		case DexInsnConsts.OP_AND_LONG_2ADDR:
		case DexInsnConsts.OP_OR_LONG_2ADDR:
		case DexInsnConsts.OP_XOR_LONG_2ADDR:
		case DexInsnConsts.OP_SHL_LONG_2ADDR:
		case DexInsnConsts.OP_SHR_LONG_2ADDR:
		case DexInsnConsts.OP_USHR_LONG_2ADDR:
		case DexInsnConsts.OP_ADD_FLOAT_2ADDR:
		case DexInsnConsts.OP_SUB_FLOAT_2ADDR:
		case DexInsnConsts.OP_MUL_FLOAT_2ADDR:
		case DexInsnConsts.OP_DIV_FLOAT_2ADDR:
		case DexInsnConsts.OP_REM_FLOAT_2ADDR:
		case DexInsnConsts.OP_ADD_DOUBLE_2ADDR:
		case DexInsnConsts.OP_SUB_DOUBLE_2ADDR:
		case DexInsnConsts.OP_MUL_DOUBLE_2ADDR:
		case DexInsnConsts.OP_DIV_DOUBLE_2ADDR:
		case DexInsnConsts.OP_REM_DOUBLE_2ADDR:
			break;

		case DexInsnConsts.OP_MOVE:
		case DexInsnConsts.OP_MOVE_WIDE:
		case DexInsnConsts.OP_MOVE_OBJECT:

		case DexInsnConsts.OP_MOVE_FROM16:
		case DexInsnConsts.OP_MOVE_WIDE_FROM16:
		case DexInsnConsts.OP_MOVE_OBJECT_FROM16:

		case DexInsnConsts.OP_MOVE_16:
		case DexInsnConsts.OP_MOVE_WIDE_16:
		case DexInsnConsts.OP_MOVE_OBJECT_16:

		case DexInsnConsts.OP_ARRAY_LENGTH:

		case DexInsnConsts.OP_NEG_INT:
		case DexInsnConsts.OP_NOT_INT:
		case DexInsnConsts.OP_NEG_LONG:
		case DexInsnConsts.OP_NOT_LONG:
		case DexInsnConsts.OP_NEG_FLOAT:
		case DexInsnConsts.OP_NEG_DOUBLE:
		case DexInsnConsts.OP_INT_TO_LONG:
		case DexInsnConsts.OP_INT_TO_FLOAT:
		case DexInsnConsts.OP_INT_TO_DOUBLE:
		case DexInsnConsts.OP_LONG_TO_INT:
		case DexInsnConsts.OP_LONG_TO_FLOAT:
		case DexInsnConsts.OP_LONG_TO_DOUBLE:
		case DexInsnConsts.OP_FLOAT_TO_INT:
		case DexInsnConsts.OP_FLOAT_TO_LONG:
		case DexInsnConsts.OP_FLOAT_TO_DOUBLE:
		case DexInsnConsts.OP_DOUBLE_TO_INT:
		case DexInsnConsts.OP_DOUBLE_TO_LONG:
		case DexInsnConsts.OP_DOUBLE_TO_FLOAT:
		case DexInsnConsts.OP_INT_TO_BYTE:
		case DexInsnConsts.OP_INT_TO_CHAR:
		case DexInsnConsts.OP_INT_TO_SHORT:

		case DexInsnConsts.OP_INSTANCE_OF:

		case DexInsnConsts.OP_NEW_ARRAY:

		case DexInsnConsts.OP_IGET:
		case DexInsnConsts.OP_IGET_WIDE:
		case DexInsnConsts.OP_IGET_OBJECT:
		case DexInsnConsts.OP_IGET_BOOLEAN:
		case DexInsnConsts.OP_IGET_BYTE:
		case DexInsnConsts.OP_IGET_CHAR:
		case DexInsnConsts.OP_IGET_SHORT:

		case DexInsnConsts.OP_ADD_INT_LIT16:
		case DexInsnConsts.OP_RSUB_INT:
		case DexInsnConsts.OP_MUL_INT_LIT16:
		case DexInsnConsts.OP_DIV_INT_LIT16:
		case DexInsnConsts.OP_REM_INT_LIT16:
		case DexInsnConsts.OP_AND_INT_LIT16:
		case DexInsnConsts.OP_OR_INT_LIT16:
		case DexInsnConsts.OP_XOR_INT_LIT16:
		case DexInsnConsts.OP_ADD_INT_LIT8:
		case DexInsnConsts.OP_RSUB_INT_LIT8:
		case DexInsnConsts.OP_MUL_INT_LIT8:
		case DexInsnConsts.OP_DIV_INT_LIT8:
		case DexInsnConsts.OP_REM_INT_LIT8:
		case DexInsnConsts.OP_AND_INT_LIT8:
		case DexInsnConsts.OP_OR_INT_LIT8:
		case DexInsnConsts.OP_XOR_INT_LIT8:
		case DexInsnConsts.OP_SHL_INT_LIT8:
		case DexInsnConsts.OP_SHR_INT_LIT8:
		case DexInsnConsts.OP_USHR_INT_LIT8: {
			long keyB = this.vB;
			if (keyB == vr) {
				return true;
			}

		}
			break;

		case DexInsnConsts.OP_IF_EQ:
		case DexInsnConsts.OP_IF_NE:
		case DexInsnConsts.OP_IF_LT:
		case DexInsnConsts.OP_IF_GE:
		case DexInsnConsts.OP_IF_GT:
		case DexInsnConsts.OP_IF_LE: {
			long keyA = this.vA;
			if (keyA == vr) {
				return true;
			}

			long keyB = this.vB;
			if (keyB == vr) {
				return true;
			}
		}
			break;

		case DexInsnConsts.OP_IPUT:
		case DexInsnConsts.OP_IPUT_WIDE:
		case DexInsnConsts.OP_IPUT_OBJECT:
		case DexInsnConsts.OP_IPUT_BOOLEAN:
		case DexInsnConsts.OP_IPUT_BYTE:
		case DexInsnConsts.OP_IPUT_CHAR:
		case DexInsnConsts.OP_IPUT_SHORT: {
			long keyA = this.vA;
			if (keyA == vr) {
				return true;
			}
		}
			break;

		// one operand
		case DexInsnConsts.OP_MOVE_RESULT:
		case DexInsnConsts.OP_MOVE_RESULT_WIDE:
		case DexInsnConsts.OP_MOVE_RESULT_OBJECT:
		case DexInsnConsts.OP_MOVE_EXCEPTION:

		case DexInsnConsts.OP_CONST_4:
		case DexInsnConsts.OP_CONST_16:
		case DexInsnConsts.OP_CONST_HIGH16:
		case DexInsnConsts.OP_CONST_WIDE_16:
		case DexInsnConsts.OP_CONST_WIDE_HIGH16:
		case DexInsnConsts.OP_CONST_STRING:
		case DexInsnConsts.OP_CONST_CLASS:

		case DexInsnConsts.OP_CONST:
		case DexInsnConsts.OP_CONST_WIDE_32:
		case DexInsnConsts.OP_CONST_STRING_JUMBO:

		case DexInsnConsts.OP_NEW_INSTANCE:

		case DexInsnConsts.OP_SGET:
		case DexInsnConsts.OP_SGET_WIDE:
		case DexInsnConsts.OP_SGET_OBJECT:
		case DexInsnConsts.OP_SGET_BOOLEAN:
		case DexInsnConsts.OP_SGET_BYTE:
		case DexInsnConsts.OP_SGET_CHAR:
		case DexInsnConsts.OP_SGET_SHORT:

		case DexInsnConsts.OP_FILL_ARRAY_DATA:
		case DexInsnConsts.OP_PACKED_SWITCH:
		case DexInsnConsts.OP_SPARSE_SWITCH:

		case DexInsnConsts.OP_CONST_WIDE:
			break;

		case DexInsnConsts.OP_RETURN:
		case DexInsnConsts.OP_RETURN_WIDE:
		case DexInsnConsts.OP_RETURN_OBJECT:

		case DexInsnConsts.OP_MONITOR_ENTER:
		case DexInsnConsts.OP_MONITOR_EXIT:

		case DexInsnConsts.OP_THROW:

		case DexInsnConsts.OP_CHECK_CAST:

		case DexInsnConsts.OP_IF_EQZ:
		case DexInsnConsts.OP_IF_NEZ:
		case DexInsnConsts.OP_IF_LTZ:
		case DexInsnConsts.OP_IF_GEZ:
		case DexInsnConsts.OP_IF_GTZ:
		case DexInsnConsts.OP_IF_LEZ:

		case DexInsnConsts.OP_SPUT:
		case DexInsnConsts.OP_SPUT_WIDE:
		case DexInsnConsts.OP_SPUT_OBJECT:
		case DexInsnConsts.OP_SPUT_BOOLEAN:
		case DexInsnConsts.OP_SPUT_BYTE:
		case DexInsnConsts.OP_SPUT_CHAR:
		case DexInsnConsts.OP_SPUT_SHORT: {
			// System.out.println("one operands");
			long keyA = this.vA;
			if (keyA == vr) {
				return true;
			}
		}
			break;

		// three operands
		case DexInsnConsts.OP_CMPL_FLOAT:
		case DexInsnConsts.OP_CMPG_FLOAT:
		case DexInsnConsts.OP_CMPL_DOUBLE:
		case DexInsnConsts.OP_CMPG_DOUBLE:
		case DexInsnConsts.OP_CMP_LONG:

		case DexInsnConsts.OP_AGET:
		case DexInsnConsts.OP_AGET_WIDE:
		case DexInsnConsts.OP_AGET_OBJECT:
		case DexInsnConsts.OP_AGET_BOOLEAN:
		case DexInsnConsts.OP_AGET_BYTE:
		case DexInsnConsts.OP_AGET_CHAR:
		case DexInsnConsts.OP_AGET_SHORT:

		case DexInsnConsts.OP_ADD_INT:
		case DexInsnConsts.OP_SUB_INT:
		case DexInsnConsts.OP_MUL_INT:
		case DexInsnConsts.OP_DIV_INT:
		case DexInsnConsts.OP_REM_INT:
		case DexInsnConsts.OP_AND_INT:
		case DexInsnConsts.OP_OR_INT:
		case DexInsnConsts.OP_XOR_INT:
		case DexInsnConsts.OP_SHL_INT:
		case DexInsnConsts.OP_SHR_INT:
		case DexInsnConsts.OP_USHR_INT:
		case DexInsnConsts.OP_ADD_LONG:
		case DexInsnConsts.OP_SUB_LONG:
		case DexInsnConsts.OP_MUL_LONG:
		case DexInsnConsts.OP_DIV_LONG:
		case DexInsnConsts.OP_REM_LONG:
		case DexInsnConsts.OP_AND_LONG:
		case DexInsnConsts.OP_OR_LONG:
		case DexInsnConsts.OP_XOR_LONG:
		case DexInsnConsts.OP_SHL_LONG:
		case DexInsnConsts.OP_SHR_LONG:
		case DexInsnConsts.OP_USHR_LONG:
		case DexInsnConsts.OP_ADD_FLOAT:
		case DexInsnConsts.OP_SUB_FLOAT:
		case DexInsnConsts.OP_MUL_FLOAT:
		case DexInsnConsts.OP_DIV_FLOAT:
		case DexInsnConsts.OP_REM_FLOAT:
		case DexInsnConsts.OP_ADD_DOUBLE:
		case DexInsnConsts.OP_SUB_DOUBLE:
		case DexInsnConsts.OP_MUL_DOUBLE:
		case DexInsnConsts.OP_DIV_DOUBLE:
		case DexInsnConsts.OP_REM_DOUBLE: {
			long keyB = this.vB;
			if (keyB == vr) {
				return true;
			}

			long keyC = this.vC;
			if (keyC == vr) {
				return true;
			}

		}
			break;

		case DexInsnConsts.OP_APUT:
		case DexInsnConsts.OP_APUT_WIDE:
		case DexInsnConsts.OP_APUT_OBJECT:
		case DexInsnConsts.OP_APUT_BOOLEAN:
		case DexInsnConsts.OP_APUT_BYTE:
		case DexInsnConsts.OP_APUT_CHAR:
		case DexInsnConsts.OP_APUT_SHORT: {
			long keyA = this.vA;
			if (keyA == vr) {
				return true;
			}

			long keyC = this.vC;
			if (keyC == vr) {
				return true;
			}
		}
			break;

		// five operands D,E,F,G,A
		case DexInsnConsts.OP_FILLED_NEW_ARRAY:

		case DexInsnConsts.OP_INVOKE_VIRTUAL:
		case DexInsnConsts.OP_INVOKE_SUPER:
		case DexInsnConsts.OP_INVOKE_DIRECT:
		case DexInsnConsts.OP_INVOKE_STATIC:
		case DexInsnConsts.OP_INVOKE_INTERFACE: {
			
			if(this.vB==1){
				long keyD = this.arg[0];
				if (keyD == vr) {
					return true;
				}
			}else if(this.vB==2){
				long keyD = this.arg[0];
				if (keyD == vr) {
					return true;
				}

				long keyE = this.arg[1];
				if (keyE == vr) {
					return true;
				}
			}else if(this.vB==3){
				long keyD = this.arg[0];
				if (keyD == vr) {
					return true;
				}

				long keyE = this.arg[1];
				if (keyE == vr) {
					return true;
				}

				long keyF = this.arg[2];
				if (keyF == vr) {
					return true;
				}
			}else if(this.vB==4){
				long keyD = this.arg[0];
				if (keyD == vr) {
					return true;
				}

				long keyE = this.arg[1];
				if (keyE == vr) {
					return true;
				}

				long keyF = this.arg[2];
				if (keyF == vr) {
					return true;
				}

				long keyG = this.arg[3];
				if (keyG == vr) {
					return true;
				}
			}else{
				long keyA = this.vA;
				if (keyA == vr) {
					return true;
				}
	
				long keyD = this.arg[0];
				if (keyD == vr) {
					return true;
				}
	
				long keyE = this.arg[1];
				if (keyE == vr) {
					return true;
				}
	
				long keyF = this.arg[2];
				if (keyF == vr) {
					return true;
				}
	
				long keyG = this.arg[3];
				if (keyG == vr) {
					return true;
				}
			}

		}
			break;

		// multiple operands
		case DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE:

		case DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE:
		case DexInsnConsts.OP_INVOKE_SUPER_RANGE:
		case DexInsnConsts.OP_INVOKE_DIRECT_RANGE:
		case DexInsnConsts.OP_INVOKE_STATIC_RANGE:
		case DexInsnConsts.OP_INVOKE_INTERFACE_RANGE: {
			
			if(this.invokeRangeParameters.contains(new Long(vr))){
				return true;
			}
		}
			break;
		default:
			break;
		}
		return false;
	}

	public boolean isDefined(long vr) {
		switch (this.opCode) {
		case DexInsnConsts.OP_PHI: {
			if (this.phiName == vr) {
				return true;
			}
		}
			break;

		// no operand
		case DexInsnConsts.OP_NOP: /*
									 * note data for e.g. switch-* encoded
									 * "inside" a NOP
									 */
		case DexInsnConsts.OP_RETURN_VOID:
		case DexInsnConsts.OP_GOTO:
		case DexInsnConsts.OP_GOTO_16:
		case DexInsnConsts.OP_GOTO_32:

			/*
			 * Optimized instructions. Not handled right now
			 */
		case DexInsnConsts.OP_IGET_QUICK:
		case DexInsnConsts.OP_IGET_WIDE_QUICK:
		case DexInsnConsts.OP_IGET_OBJECT_QUICK:
		case DexInsnConsts.OP_IPUT_QUICK:
		case DexInsnConsts.OP_IPUT_WIDE_QUICK:
		case DexInsnConsts.OP_IPUT_OBJECT_QUICK:
		case DexInsnConsts.OP_IGET_VOLATILE:
		case DexInsnConsts.OP_IPUT_VOLATILE:
		case DexInsnConsts.OP_SGET_VOLATILE:
		case DexInsnConsts.OP_SPUT_VOLATILE:
		case DexInsnConsts.OP_IGET_OBJECT_VOLATILE:
		case DexInsnConsts.OP_IPUT_OBJECT_VOLATILE:
		case DexInsnConsts.OP_SGET_OBJECT_VOLATILE:
		case DexInsnConsts.OP_SPUT_OBJECT_VOLATILE:
		case DexInsnConsts.OP_IGET_WIDE_VOLATILE:
		case DexInsnConsts.OP_IPUT_WIDE_VOLATILE:
		case DexInsnConsts.OP_SGET_WIDE_VOLATILE:
		case DexInsnConsts.OP_SPUT_WIDE_VOLATILE:
		case DexInsnConsts.OP_THROW_VERIFICATION_ERROR:

		case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK:
		case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK_RANGE:
		case DexInsnConsts.OP_INVOKE_SUPER_QUICK:
		case DexInsnConsts.OP_INVOKE_SUPER_QUICK_RANGE:
		case DexInsnConsts.OP_EXECUTE_INLINE:
		case DexInsnConsts.OP_EXECUTE_INLINE_RANGE:
		case DexInsnConsts.OP_INVOKE_DIRECT_EMPTY:

			/* these should never appear when scanning bytecode */
		case DexInsnConsts.OP_UNUSED_3E:
		case DexInsnConsts.OP_UNUSED_3F:
		case DexInsnConsts.OP_UNUSED_40:
		case DexInsnConsts.OP_UNUSED_41:
		case DexInsnConsts.OP_UNUSED_42:
		case DexInsnConsts.OP_UNUSED_43:
		case DexInsnConsts.OP_UNUSED_73:
		case DexInsnConsts.OP_UNUSED_79:
		case DexInsnConsts.OP_UNUSED_7A:
		case DexInsnConsts.OP_BREAKPOINT:
		case DexInsnConsts.OP_UNUSED_F1:
		case DexInsnConsts.OP_UNUSED_FF:
			break;

		// two operands
		case DexInsnConsts.OP_ADD_INT_2ADDR:
		case DexInsnConsts.OP_SUB_INT_2ADDR:
		case DexInsnConsts.OP_MUL_INT_2ADDR:
		case DexInsnConsts.OP_DIV_INT_2ADDR:
		case DexInsnConsts.OP_REM_INT_2ADDR:
		case DexInsnConsts.OP_AND_INT_2ADDR:
		case DexInsnConsts.OP_OR_INT_2ADDR:
		case DexInsnConsts.OP_XOR_INT_2ADDR:
		case DexInsnConsts.OP_SHL_INT_2ADDR:
		case DexInsnConsts.OP_SHR_INT_2ADDR:
		case DexInsnConsts.OP_USHR_INT_2ADDR:
		case DexInsnConsts.OP_ADD_LONG_2ADDR:
		case DexInsnConsts.OP_SUB_LONG_2ADDR:
		case DexInsnConsts.OP_MUL_LONG_2ADDR:
		case DexInsnConsts.OP_DIV_LONG_2ADDR:
		case DexInsnConsts.OP_REM_LONG_2ADDR:
		case DexInsnConsts.OP_AND_LONG_2ADDR:
		case DexInsnConsts.OP_OR_LONG_2ADDR:
		case DexInsnConsts.OP_XOR_LONG_2ADDR:
		case DexInsnConsts.OP_SHL_LONG_2ADDR:
		case DexInsnConsts.OP_SHR_LONG_2ADDR:
		case DexInsnConsts.OP_USHR_LONG_2ADDR:
		case DexInsnConsts.OP_ADD_FLOAT_2ADDR:
		case DexInsnConsts.OP_SUB_FLOAT_2ADDR:
		case DexInsnConsts.OP_MUL_FLOAT_2ADDR:
		case DexInsnConsts.OP_DIV_FLOAT_2ADDR:
		case DexInsnConsts.OP_REM_FLOAT_2ADDR:
		case DexInsnConsts.OP_ADD_DOUBLE_2ADDR:
		case DexInsnConsts.OP_SUB_DOUBLE_2ADDR:
		case DexInsnConsts.OP_MUL_DOUBLE_2ADDR:
		case DexInsnConsts.OP_DIV_DOUBLE_2ADDR:
		case DexInsnConsts.OP_REM_DOUBLE_2ADDR:

		case DexInsnConsts.OP_IF_EQ:
		case DexInsnConsts.OP_IF_NE:
		case DexInsnConsts.OP_IF_LT:
		case DexInsnConsts.OP_IF_GE:
		case DexInsnConsts.OP_IF_GT:
		case DexInsnConsts.OP_IF_LE:
			break;

		case DexInsnConsts.OP_MOVE:
		case DexInsnConsts.OP_MOVE_WIDE:
		case DexInsnConsts.OP_MOVE_OBJECT:

		case DexInsnConsts.OP_MOVE_FROM16:
		case DexInsnConsts.OP_MOVE_WIDE_FROM16:
		case DexInsnConsts.OP_MOVE_OBJECT_FROM16:

		case DexInsnConsts.OP_MOVE_16:
		case DexInsnConsts.OP_MOVE_WIDE_16:
		case DexInsnConsts.OP_MOVE_OBJECT_16:

		case DexInsnConsts.OP_ARRAY_LENGTH:

		case DexInsnConsts.OP_NEG_INT:
		case DexInsnConsts.OP_NOT_INT:
		case DexInsnConsts.OP_NEG_LONG:
		case DexInsnConsts.OP_NOT_LONG:
		case DexInsnConsts.OP_NEG_FLOAT:
		case DexInsnConsts.OP_NEG_DOUBLE:
		case DexInsnConsts.OP_INT_TO_LONG:
		case DexInsnConsts.OP_INT_TO_FLOAT:
		case DexInsnConsts.OP_INT_TO_DOUBLE:
		case DexInsnConsts.OP_LONG_TO_INT:
		case DexInsnConsts.OP_LONG_TO_FLOAT:
		case DexInsnConsts.OP_LONG_TO_DOUBLE:
		case DexInsnConsts.OP_FLOAT_TO_INT:
		case DexInsnConsts.OP_FLOAT_TO_LONG:
		case DexInsnConsts.OP_FLOAT_TO_DOUBLE:
		case DexInsnConsts.OP_DOUBLE_TO_INT:
		case DexInsnConsts.OP_DOUBLE_TO_LONG:
		case DexInsnConsts.OP_DOUBLE_TO_FLOAT:
		case DexInsnConsts.OP_INT_TO_BYTE:
		case DexInsnConsts.OP_INT_TO_CHAR:
		case DexInsnConsts.OP_INT_TO_SHORT:

		case DexInsnConsts.OP_INSTANCE_OF:

		case DexInsnConsts.OP_NEW_ARRAY:

		case DexInsnConsts.OP_IGET:
		case DexInsnConsts.OP_IGET_WIDE:
		case DexInsnConsts.OP_IGET_OBJECT:
		case DexInsnConsts.OP_IGET_BOOLEAN:
		case DexInsnConsts.OP_IGET_BYTE:
		case DexInsnConsts.OP_IGET_CHAR:
		case DexInsnConsts.OP_IGET_SHORT:

		case DexInsnConsts.OP_ADD_INT_LIT16:
		case DexInsnConsts.OP_RSUB_INT:
		case DexInsnConsts.OP_MUL_INT_LIT16:
		case DexInsnConsts.OP_DIV_INT_LIT16:
		case DexInsnConsts.OP_REM_INT_LIT16:
		case DexInsnConsts.OP_AND_INT_LIT16:
		case DexInsnConsts.OP_OR_INT_LIT16:
		case DexInsnConsts.OP_XOR_INT_LIT16:
		case DexInsnConsts.OP_ADD_INT_LIT8:
		case DexInsnConsts.OP_RSUB_INT_LIT8:
		case DexInsnConsts.OP_MUL_INT_LIT8:
		case DexInsnConsts.OP_DIV_INT_LIT8:
		case DexInsnConsts.OP_REM_INT_LIT8:
		case DexInsnConsts.OP_AND_INT_LIT8:
		case DexInsnConsts.OP_OR_INT_LIT8:
		case DexInsnConsts.OP_XOR_INT_LIT8:
		case DexInsnConsts.OP_SHL_INT_LIT8:
		case DexInsnConsts.OP_SHR_INT_LIT8:
		case DexInsnConsts.OP_USHR_INT_LIT8: {
			long keyA = this.vA;
			if ((int) keyA == vr) {
				return true;
			}
		}
			break;

		case DexInsnConsts.OP_IPUT:
		case DexInsnConsts.OP_IPUT_WIDE:
		case DexInsnConsts.OP_IPUT_OBJECT:
		case DexInsnConsts.OP_IPUT_BOOLEAN:
		case DexInsnConsts.OP_IPUT_BYTE:
		case DexInsnConsts.OP_IPUT_CHAR:
		case DexInsnConsts.OP_IPUT_SHORT: {
			long keyB = this.vB;
			if ((int) keyB == vr) {
				return true;
			}
		}
			break;

		// one operand
		case DexInsnConsts.OP_RETURN:
		case DexInsnConsts.OP_RETURN_WIDE:
		case DexInsnConsts.OP_RETURN_OBJECT:

		case DexInsnConsts.OP_MONITOR_ENTER:
		case DexInsnConsts.OP_MONITOR_EXIT:

		case DexInsnConsts.OP_THROW:
		case DexInsnConsts.OP_CHECK_CAST:

		case DexInsnConsts.OP_IF_EQZ:
		case DexInsnConsts.OP_IF_NEZ:
		case DexInsnConsts.OP_IF_LTZ:
		case DexInsnConsts.OP_IF_GEZ:
		case DexInsnConsts.OP_IF_GTZ:
		case DexInsnConsts.OP_IF_LEZ:

		case DexInsnConsts.OP_SPUT:
		case DexInsnConsts.OP_SPUT_WIDE:
		case DexInsnConsts.OP_SPUT_OBJECT:
		case DexInsnConsts.OP_SPUT_BOOLEAN:
		case DexInsnConsts.OP_SPUT_BYTE:
		case DexInsnConsts.OP_SPUT_CHAR:
		case DexInsnConsts.OP_SPUT_SHORT:
			break;

		case DexInsnConsts.OP_MOVE_RESULT:
		case DexInsnConsts.OP_MOVE_RESULT_WIDE:
		case DexInsnConsts.OP_MOVE_RESULT_OBJECT:
		case DexInsnConsts.OP_MOVE_EXCEPTION:

		case DexInsnConsts.OP_CONST_4:
		case DexInsnConsts.OP_CONST_16:
		case DexInsnConsts.OP_CONST_HIGH16:
		case DexInsnConsts.OP_CONST_WIDE_16:
		case DexInsnConsts.OP_CONST_WIDE_HIGH16:
		case DexInsnConsts.OP_CONST_STRING:
		case DexInsnConsts.OP_CONST_CLASS:

		case DexInsnConsts.OP_CONST:
		case DexInsnConsts.OP_CONST_WIDE_32:
		case DexInsnConsts.OP_CONST_STRING_JUMBO:

		case DexInsnConsts.OP_NEW_INSTANCE:

		case DexInsnConsts.OP_SGET:
		case DexInsnConsts.OP_SGET_WIDE:
		case DexInsnConsts.OP_SGET_OBJECT:
		case DexInsnConsts.OP_SGET_BOOLEAN:
		case DexInsnConsts.OP_SGET_BYTE:
		case DexInsnConsts.OP_SGET_CHAR:
		case DexInsnConsts.OP_SGET_SHORT:

		case DexInsnConsts.OP_FILL_ARRAY_DATA:
		case DexInsnConsts.OP_PACKED_SWITCH:
		case DexInsnConsts.OP_SPARSE_SWITCH:

		case DexInsnConsts.OP_CONST_WIDE: {
			long keyA = this.vA;
			if ((int) keyA == vr) {
				return true;
			}
		}
			break;

		// three operands
		case DexInsnConsts.OP_CMPL_FLOAT:
		case DexInsnConsts.OP_CMPG_FLOAT:
		case DexInsnConsts.OP_CMPL_DOUBLE:
		case DexInsnConsts.OP_CMPG_DOUBLE:
		case DexInsnConsts.OP_CMP_LONG:

		case DexInsnConsts.OP_AGET:
		case DexInsnConsts.OP_AGET_WIDE:
		case DexInsnConsts.OP_AGET_OBJECT:
		case DexInsnConsts.OP_AGET_BOOLEAN:
		case DexInsnConsts.OP_AGET_BYTE:
		case DexInsnConsts.OP_AGET_CHAR:
		case DexInsnConsts.OP_AGET_SHORT:

		case DexInsnConsts.OP_ADD_INT:
		case DexInsnConsts.OP_SUB_INT:
		case DexInsnConsts.OP_MUL_INT:
		case DexInsnConsts.OP_DIV_INT:
		case DexInsnConsts.OP_REM_INT:
		case DexInsnConsts.OP_AND_INT:
		case DexInsnConsts.OP_OR_INT:
		case DexInsnConsts.OP_XOR_INT:
		case DexInsnConsts.OP_SHL_INT:
		case DexInsnConsts.OP_SHR_INT:
		case DexInsnConsts.OP_USHR_INT:
		case DexInsnConsts.OP_ADD_LONG:
		case DexInsnConsts.OP_SUB_LONG:
		case DexInsnConsts.OP_MUL_LONG:
		case DexInsnConsts.OP_DIV_LONG:
		case DexInsnConsts.OP_REM_LONG:
		case DexInsnConsts.OP_AND_LONG:
		case DexInsnConsts.OP_OR_LONG:
		case DexInsnConsts.OP_XOR_LONG:
		case DexInsnConsts.OP_SHL_LONG:
		case DexInsnConsts.OP_SHR_LONG:
		case DexInsnConsts.OP_USHR_LONG:
		case DexInsnConsts.OP_ADD_FLOAT:
		case DexInsnConsts.OP_SUB_FLOAT:
		case DexInsnConsts.OP_MUL_FLOAT:
		case DexInsnConsts.OP_DIV_FLOAT:
		case DexInsnConsts.OP_REM_FLOAT:
		case DexInsnConsts.OP_ADD_DOUBLE:
		case DexInsnConsts.OP_SUB_DOUBLE:
		case DexInsnConsts.OP_MUL_DOUBLE:
		case DexInsnConsts.OP_DIV_DOUBLE:
		case DexInsnConsts.OP_REM_DOUBLE: {
			long keyA = this.vA;
			if ((int) keyA == vr) {
				return true;
			}
		}
			break;
		case DexInsnConsts.OP_APUT:
		case DexInsnConsts.OP_APUT_WIDE:
		case DexInsnConsts.OP_APUT_OBJECT:
		case DexInsnConsts.OP_APUT_BOOLEAN:
		case DexInsnConsts.OP_APUT_BYTE:
		case DexInsnConsts.OP_APUT_CHAR:
		case DexInsnConsts.OP_APUT_SHORT: {
			long keyB = this.vB;
			if ((int) keyB == vr) {
				return true;
			}

			/*
			 * long keyC = this.vC; if((int)keyC == vr){ return true; }
			 */
		}
			break;

		// five operands D,E,F,G,A
		case DexInsnConsts.OP_FILLED_NEW_ARRAY:

		case DexInsnConsts.OP_INVOKE_VIRTUAL:
		case DexInsnConsts.OP_INVOKE_SUPER:
		case DexInsnConsts.OP_INVOKE_DIRECT:
		case DexInsnConsts.OP_INVOKE_STATIC:
		case DexInsnConsts.OP_INVOKE_INTERFACE:
			break;

		// multiple operands
		case DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE:

		case DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE:
		case DexInsnConsts.OP_INVOKE_SUPER_RANGE:
		case DexInsnConsts.OP_INVOKE_DIRECT_RANGE:
		case DexInsnConsts.OP_INVOKE_STATIC_RANGE:
		case DexInsnConsts.OP_INVOKE_INTERFACE_RANGE:
			break;
		default:
			break;
		}
		return false;
	}

	public long assignTo(long vr) {
		switch (this.opCode) {
		case DexInsnConsts.OP_PHI: {
			for (int i = 0; i < this.phiOperandsSize; i++) {
				int phiOperand = this.phiOperands.elementAt(i).intValue();
				if (vr == phiOperand) {
					return this.phiName;
				}
			}
		}
			break;

		// no operand
		case DexInsnConsts.OP_NOP: /*
									 * note data for e.g. switch-* encoded
									 * "inside" a NOP
									 */
		case DexInsnConsts.OP_RETURN_VOID:
		case DexInsnConsts.OP_GOTO:
		case DexInsnConsts.OP_GOTO_16:
		case DexInsnConsts.OP_GOTO_32:

			/*
			 * Optimized instructions. Not handled right now
			 */
		case DexInsnConsts.OP_IGET_QUICK:
		case DexInsnConsts.OP_IGET_WIDE_QUICK:
		case DexInsnConsts.OP_IGET_OBJECT_QUICK:
		case DexInsnConsts.OP_IPUT_QUICK:
		case DexInsnConsts.OP_IPUT_WIDE_QUICK:
		case DexInsnConsts.OP_IPUT_OBJECT_QUICK:
		case DexInsnConsts.OP_IGET_VOLATILE:
		case DexInsnConsts.OP_IPUT_VOLATILE:
		case DexInsnConsts.OP_SGET_VOLATILE:
		case DexInsnConsts.OP_SPUT_VOLATILE:
		case DexInsnConsts.OP_IGET_OBJECT_VOLATILE:
		case DexInsnConsts.OP_IPUT_OBJECT_VOLATILE:
		case DexInsnConsts.OP_SGET_OBJECT_VOLATILE:
		case DexInsnConsts.OP_SPUT_OBJECT_VOLATILE:
		case DexInsnConsts.OP_IGET_WIDE_VOLATILE:
		case DexInsnConsts.OP_IPUT_WIDE_VOLATILE:
		case DexInsnConsts.OP_SGET_WIDE_VOLATILE:
		case DexInsnConsts.OP_SPUT_WIDE_VOLATILE:
		case DexInsnConsts.OP_THROW_VERIFICATION_ERROR:

		case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK:
		case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK_RANGE:
		case DexInsnConsts.OP_INVOKE_SUPER_QUICK:
		case DexInsnConsts.OP_INVOKE_SUPER_QUICK_RANGE:
		case DexInsnConsts.OP_EXECUTE_INLINE:
		case DexInsnConsts.OP_EXECUTE_INLINE_RANGE:
		case DexInsnConsts.OP_INVOKE_DIRECT_EMPTY:

			/* these should never appear when scanning bytecode */
		case DexInsnConsts.OP_UNUSED_3E:
		case DexInsnConsts.OP_UNUSED_3F:
		case DexInsnConsts.OP_UNUSED_40:
		case DexInsnConsts.OP_UNUSED_41:
		case DexInsnConsts.OP_UNUSED_42:
		case DexInsnConsts.OP_UNUSED_43:
		case DexInsnConsts.OP_UNUSED_73:
		case DexInsnConsts.OP_UNUSED_79:
		case DexInsnConsts.OP_UNUSED_7A:
		case DexInsnConsts.OP_BREAKPOINT:
		case DexInsnConsts.OP_UNUSED_F1:
		case DexInsnConsts.OP_UNUSED_FF:
			break;

		// two operands
		case DexInsnConsts.OP_ADD_INT_2ADDR:
		case DexInsnConsts.OP_SUB_INT_2ADDR:
		case DexInsnConsts.OP_MUL_INT_2ADDR:
		case DexInsnConsts.OP_DIV_INT_2ADDR:
		case DexInsnConsts.OP_REM_INT_2ADDR:
		case DexInsnConsts.OP_AND_INT_2ADDR:
		case DexInsnConsts.OP_OR_INT_2ADDR:
		case DexInsnConsts.OP_XOR_INT_2ADDR:
		case DexInsnConsts.OP_SHL_INT_2ADDR:
		case DexInsnConsts.OP_SHR_INT_2ADDR:
		case DexInsnConsts.OP_USHR_INT_2ADDR:
		case DexInsnConsts.OP_ADD_LONG_2ADDR:
		case DexInsnConsts.OP_SUB_LONG_2ADDR:
		case DexInsnConsts.OP_MUL_LONG_2ADDR:
		case DexInsnConsts.OP_DIV_LONG_2ADDR:
		case DexInsnConsts.OP_REM_LONG_2ADDR:
		case DexInsnConsts.OP_AND_LONG_2ADDR:
		case DexInsnConsts.OP_OR_LONG_2ADDR:
		case DexInsnConsts.OP_XOR_LONG_2ADDR:
		case DexInsnConsts.OP_SHL_LONG_2ADDR:
		case DexInsnConsts.OP_SHR_LONG_2ADDR:
		case DexInsnConsts.OP_USHR_LONG_2ADDR:
		case DexInsnConsts.OP_ADD_FLOAT_2ADDR:
		case DexInsnConsts.OP_SUB_FLOAT_2ADDR:
		case DexInsnConsts.OP_MUL_FLOAT_2ADDR:
		case DexInsnConsts.OP_DIV_FLOAT_2ADDR:
		case DexInsnConsts.OP_REM_FLOAT_2ADDR:
		case DexInsnConsts.OP_ADD_DOUBLE_2ADDR:
		case DexInsnConsts.OP_SUB_DOUBLE_2ADDR:
		case DexInsnConsts.OP_MUL_DOUBLE_2ADDR:
		case DexInsnConsts.OP_DIV_DOUBLE_2ADDR:
		case DexInsnConsts.OP_REM_DOUBLE_2ADDR:
			break;

		case DexInsnConsts.OP_MOVE:
		case DexInsnConsts.OP_MOVE_WIDE:
		case DexInsnConsts.OP_MOVE_OBJECT:

		case DexInsnConsts.OP_MOVE_FROM16:
		case DexInsnConsts.OP_MOVE_WIDE_FROM16:
		case DexInsnConsts.OP_MOVE_OBJECT_FROM16:

		case DexInsnConsts.OP_MOVE_16:
		case DexInsnConsts.OP_MOVE_WIDE_16:
		case DexInsnConsts.OP_MOVE_OBJECT_16:

		case DexInsnConsts.OP_ARRAY_LENGTH:

		case DexInsnConsts.OP_NEG_INT:
		case DexInsnConsts.OP_NOT_INT:
		case DexInsnConsts.OP_NEG_LONG:
		case DexInsnConsts.OP_NOT_LONG:
		case DexInsnConsts.OP_NEG_FLOAT:
		case DexInsnConsts.OP_NEG_DOUBLE:
		case DexInsnConsts.OP_INT_TO_LONG:
		case DexInsnConsts.OP_INT_TO_FLOAT:
		case DexInsnConsts.OP_INT_TO_DOUBLE:
		case DexInsnConsts.OP_LONG_TO_INT:
		case DexInsnConsts.OP_LONG_TO_FLOAT:
		case DexInsnConsts.OP_LONG_TO_DOUBLE:
		case DexInsnConsts.OP_FLOAT_TO_INT:
		case DexInsnConsts.OP_FLOAT_TO_LONG:
		case DexInsnConsts.OP_FLOAT_TO_DOUBLE:
		case DexInsnConsts.OP_DOUBLE_TO_INT:
		case DexInsnConsts.OP_DOUBLE_TO_LONG:
		case DexInsnConsts.OP_DOUBLE_TO_FLOAT:
		case DexInsnConsts.OP_INT_TO_BYTE:
		case DexInsnConsts.OP_INT_TO_CHAR:
		case DexInsnConsts.OP_INT_TO_SHORT:

		case DexInsnConsts.OP_INSTANCE_OF:

		case DexInsnConsts.OP_NEW_ARRAY:

		case DexInsnConsts.OP_IGET:
		case DexInsnConsts.OP_IGET_WIDE:
		case DexInsnConsts.OP_IGET_OBJECT:
		case DexInsnConsts.OP_IGET_BOOLEAN:
		case DexInsnConsts.OP_IGET_BYTE:
		case DexInsnConsts.OP_IGET_CHAR:
		case DexInsnConsts.OP_IGET_SHORT:

		case DexInsnConsts.OP_ADD_INT_LIT16:
		case DexInsnConsts.OP_RSUB_INT:
		case DexInsnConsts.OP_MUL_INT_LIT16:
		case DexInsnConsts.OP_DIV_INT_LIT16:
		case DexInsnConsts.OP_REM_INT_LIT16:
		case DexInsnConsts.OP_AND_INT_LIT16:
		case DexInsnConsts.OP_OR_INT_LIT16:
		case DexInsnConsts.OP_XOR_INT_LIT16:
		case DexInsnConsts.OP_ADD_INT_LIT8:
		case DexInsnConsts.OP_RSUB_INT_LIT8:
		case DexInsnConsts.OP_MUL_INT_LIT8:
		case DexInsnConsts.OP_DIV_INT_LIT8:
		case DexInsnConsts.OP_REM_INT_LIT8:
		case DexInsnConsts.OP_AND_INT_LIT8:
		case DexInsnConsts.OP_OR_INT_LIT8:
		case DexInsnConsts.OP_XOR_INT_LIT8:
		case DexInsnConsts.OP_SHL_INT_LIT8:
		case DexInsnConsts.OP_SHR_INT_LIT8:
		case DexInsnConsts.OP_USHR_INT_LIT8: {
			long keyB = this.vB;
			if ((int) keyB == vr) {
				return (int) this.vA;
			}

		}
			break;

		case DexInsnConsts.OP_IF_EQ:
		case DexInsnConsts.OP_IF_NE:
		case DexInsnConsts.OP_IF_LT:
		case DexInsnConsts.OP_IF_GE:
		case DexInsnConsts.OP_IF_GT:
		case DexInsnConsts.OP_IF_LE: {
			/*
			 * long keyA = this.vA; if((int)keyA == vr){ return true; }
			 * 
			 * long keyB = this.vB; if((int)keyB == vr){ return true; }
			 */
		}
			break;

		case DexInsnConsts.OP_IPUT:
		case DexInsnConsts.OP_IPUT_WIDE:
		case DexInsnConsts.OP_IPUT_OBJECT:
		case DexInsnConsts.OP_IPUT_BOOLEAN:
		case DexInsnConsts.OP_IPUT_BYTE:
		case DexInsnConsts.OP_IPUT_CHAR:
		case DexInsnConsts.OP_IPUT_SHORT: {
			long keyA = this.vA;
			if ((int) keyA == vr) {
				return (int) vB;
			}
		}
			break;

		// one operand
		case DexInsnConsts.OP_MOVE_RESULT:
		case DexInsnConsts.OP_MOVE_RESULT_WIDE:
		case DexInsnConsts.OP_MOVE_RESULT_OBJECT:
		case DexInsnConsts.OP_MOVE_EXCEPTION:

		case DexInsnConsts.OP_CONST_4:
		case DexInsnConsts.OP_CONST_16:
		case DexInsnConsts.OP_CONST_HIGH16:
		case DexInsnConsts.OP_CONST_WIDE_16:
		case DexInsnConsts.OP_CONST_WIDE_HIGH16:
		case DexInsnConsts.OP_CONST_STRING:
		case DexInsnConsts.OP_CONST_CLASS:

		case DexInsnConsts.OP_CONST:
		case DexInsnConsts.OP_CONST_WIDE_32:
		case DexInsnConsts.OP_CONST_STRING_JUMBO:

		case DexInsnConsts.OP_NEW_INSTANCE:

		case DexInsnConsts.OP_SGET:
		case DexInsnConsts.OP_SGET_WIDE:
		case DexInsnConsts.OP_SGET_OBJECT:
		case DexInsnConsts.OP_SGET_BOOLEAN:
		case DexInsnConsts.OP_SGET_BYTE:
		case DexInsnConsts.OP_SGET_CHAR:
		case DexInsnConsts.OP_SGET_SHORT:

		case DexInsnConsts.OP_FILL_ARRAY_DATA:
		case DexInsnConsts.OP_PACKED_SWITCH:
		case DexInsnConsts.OP_SPARSE_SWITCH:

		case DexInsnConsts.OP_CONST_WIDE:
			break;

		case DexInsnConsts.OP_RETURN:
		case DexInsnConsts.OP_RETURN_WIDE:
		case DexInsnConsts.OP_RETURN_OBJECT:

		case DexInsnConsts.OP_MONITOR_ENTER:
		case DexInsnConsts.OP_MONITOR_EXIT:

		case DexInsnConsts.OP_THROW:

		case DexInsnConsts.OP_CHECK_CAST:

		case DexInsnConsts.OP_IF_EQZ:
		case DexInsnConsts.OP_IF_NEZ:
		case DexInsnConsts.OP_IF_LTZ:
		case DexInsnConsts.OP_IF_GEZ:
		case DexInsnConsts.OP_IF_GTZ:
		case DexInsnConsts.OP_IF_LEZ:

		case DexInsnConsts.OP_SPUT:
		case DexInsnConsts.OP_SPUT_WIDE:
		case DexInsnConsts.OP_SPUT_OBJECT:
		case DexInsnConsts.OP_SPUT_BOOLEAN:
		case DexInsnConsts.OP_SPUT_BYTE:
		case DexInsnConsts.OP_SPUT_CHAR:
		case DexInsnConsts.OP_SPUT_SHORT: {
			/*
			 * //System.out.println("one operands"); long keyA = this.vA;
			 * if((int)keyA == vr){ return true; }
			 */
		}
			break;

		// three operands
		case DexInsnConsts.OP_CMPL_FLOAT:
		case DexInsnConsts.OP_CMPG_FLOAT:
		case DexInsnConsts.OP_CMPL_DOUBLE:
		case DexInsnConsts.OP_CMPG_DOUBLE:
		case DexInsnConsts.OP_CMP_LONG:

		case DexInsnConsts.OP_AGET:
		case DexInsnConsts.OP_AGET_WIDE:
		case DexInsnConsts.OP_AGET_OBJECT:
		case DexInsnConsts.OP_AGET_BOOLEAN:
		case DexInsnConsts.OP_AGET_BYTE:
		case DexInsnConsts.OP_AGET_CHAR:
		case DexInsnConsts.OP_AGET_SHORT:

		case DexInsnConsts.OP_ADD_INT:
		case DexInsnConsts.OP_SUB_INT:
		case DexInsnConsts.OP_MUL_INT:
		case DexInsnConsts.OP_DIV_INT:
		case DexInsnConsts.OP_REM_INT:
		case DexInsnConsts.OP_AND_INT:
		case DexInsnConsts.OP_OR_INT:
		case DexInsnConsts.OP_XOR_INT:
		case DexInsnConsts.OP_SHL_INT:
		case DexInsnConsts.OP_SHR_INT:
		case DexInsnConsts.OP_USHR_INT:
		case DexInsnConsts.OP_ADD_LONG:
		case DexInsnConsts.OP_SUB_LONG:
		case DexInsnConsts.OP_MUL_LONG:
		case DexInsnConsts.OP_DIV_LONG:
		case DexInsnConsts.OP_REM_LONG:
		case DexInsnConsts.OP_AND_LONG:
		case DexInsnConsts.OP_OR_LONG:
		case DexInsnConsts.OP_XOR_LONG:
		case DexInsnConsts.OP_SHL_LONG:
		case DexInsnConsts.OP_SHR_LONG:
		case DexInsnConsts.OP_USHR_LONG:
		case DexInsnConsts.OP_ADD_FLOAT:
		case DexInsnConsts.OP_SUB_FLOAT:
		case DexInsnConsts.OP_MUL_FLOAT:
		case DexInsnConsts.OP_DIV_FLOAT:
		case DexInsnConsts.OP_REM_FLOAT:
		case DexInsnConsts.OP_ADD_DOUBLE:
		case DexInsnConsts.OP_SUB_DOUBLE:
		case DexInsnConsts.OP_MUL_DOUBLE:
		case DexInsnConsts.OP_DIV_DOUBLE:
		case DexInsnConsts.OP_REM_DOUBLE: {
			long keyB = this.vB;
			if ((int) keyB == vr) {
				return (int) this.vA;
			}

			long keyC = this.vC;
			if ((int) keyC == vr) {
				return (int) this.vA;
			}

		}
			break;

		case DexInsnConsts.OP_APUT:
		case DexInsnConsts.OP_APUT_WIDE:
		case DexInsnConsts.OP_APUT_OBJECT:
		case DexInsnConsts.OP_APUT_BOOLEAN:
		case DexInsnConsts.OP_APUT_BYTE:
		case DexInsnConsts.OP_APUT_CHAR:
		case DexInsnConsts.OP_APUT_SHORT: {
			long keyA = this.vA;
			if ((int) keyA == vr) {
				return (int) this.vB;
			}
		}
			break;

		// five operands D,E,F,G,A
		case DexInsnConsts.OP_FILLED_NEW_ARRAY:

		case DexInsnConsts.OP_INVOKE_VIRTUAL:
		case DexInsnConsts.OP_INVOKE_SUPER:
		case DexInsnConsts.OP_INVOKE_DIRECT:
		case DexInsnConsts.OP_INVOKE_STATIC:
		case DexInsnConsts.OP_INVOKE_INTERFACE:

			break;

		// multiple operands
		case DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE:

		case DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE:
		case DexInsnConsts.OP_INVOKE_SUPER_RANGE:
		case DexInsnConsts.OP_INVOKE_DIRECT_RANGE:
		case DexInsnConsts.OP_INVOKE_STATIC_RANGE:
		case DexInsnConsts.OP_INVOKE_INTERFACE_RANGE:

			break;
		default:
			break;
		}
		return -1;
	}

	/*
	public Vector<String> checkFunctionSummary(long methodIdx, DexFile dFile) {
		DexStringIds stringIds = dFile.getStringIds();
		DexMethodIds methodIds = dFile.getMethodIds();
		DexTypeIds typeIds = dFile.getTypeIds();

		String func = stringIds.getStringAt(
				(int) methodIds.getNameIdAt((int) methodIdx)).toString();
		String clazz = stringIds.getStringAt((int) typeIds
				.getDescriptorIdxAt(methodIds.getClassIdxAt((int) methodIdx)));

		AndroidFunctionSummary.buildFunctionSummary();
		Vector<String> res = AndroidFunctionSummary.lookupFunctionSummary(clazz, func);
		return res;
		
		
	}
	
	public Vector<String> checkFunctionSummaryBackward(long methodIdx, DexFile dFile) {
		DexStringIds stringIds = dFile.getStringIds();
		DexMethodIds methodIds = dFile.getMethodIds();
		DexTypeIds typeIds = dFile.getTypeIds();

		String func = stringIds.getStringAt(
				(int) methodIds.getNameIdAt((int) methodIdx)).toString();
		String clazz = stringIds.getStringAt((int) typeIds
				.getDescriptorIdxAt(methodIds.getClassIdxAt((int) methodIdx)));

		AndroidFunctionSummary.buildFunctionSummary();
		Vector<String> res = AndroidFunctionSummary.lookupFunctionSummaryBackward(clazz, func);
		return res;
		
		
	}
	*/

}