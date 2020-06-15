package mySoot.preprocessor;

import java.util.*;


public class DexInsnsUtil implements DexInsnConsts {

	public static int[] instrWidthTable = new int[DexInsnConsts.kNumDalvikInstructions];
	public static int[] instrFormatTable = new int[DexInsnConsts.kNumDalvikInstructions];
	public static int[] instrFlagsTable = new int[DexInsnConsts.kNumDalvikInstructions];

	public DexInsnsUtil() {
		// DexInsnsUtil.createInstrWidthTable();
		// DexInsnsUtil.createInstrFlagsTable();
		// DexInsnsUtil.createInstrFormatTable();
	}

	public static void createInstrWidthTable() {

		for (int opc = 0; opc < DexInsnConsts.kNumDalvikInstructions; opc++) {
			int width = 0;

			switch (opc) {
			case DexInsnConsts.OP_NOP: /*
										 * note data for e.g. switch-* encoded
										 * "inside" a NOP
										 */
			case DexInsnConsts.OP_MOVE:
			case DexInsnConsts.OP_MOVE_WIDE:
			case DexInsnConsts.OP_MOVE_OBJECT:
			case DexInsnConsts.OP_MOVE_RESULT:
			case DexInsnConsts.OP_MOVE_RESULT_WIDE:
			case DexInsnConsts.OP_MOVE_RESULT_OBJECT:
			case DexInsnConsts.OP_MOVE_EXCEPTION:
			case DexInsnConsts.OP_RETURN_VOID:
			case DexInsnConsts.OP_RETURN:
			case DexInsnConsts.OP_RETURN_WIDE:
			case DexInsnConsts.OP_RETURN_OBJECT:
			case DexInsnConsts.OP_CONST_4:
			case DexInsnConsts.OP_MONITOR_ENTER:
			case DexInsnConsts.OP_MONITOR_EXIT:
			case DexInsnConsts.OP_ARRAY_LENGTH:
			case DexInsnConsts.OP_THROW:
			case DexInsnConsts.OP_GOTO:
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
				width = 1;
				break;

			case DexInsnConsts.OP_MOVE_FROM16:
			case DexInsnConsts.OP_MOVE_WIDE_FROM16:
			case DexInsnConsts.OP_MOVE_OBJECT_FROM16:
			case DexInsnConsts.OP_CONST_16:
			case DexInsnConsts.OP_CONST_HIGH16:
			case DexInsnConsts.OP_CONST_WIDE_16:
			case DexInsnConsts.OP_CONST_WIDE_HIGH16:
			case DexInsnConsts.OP_CONST_STRING:
			case DexInsnConsts.OP_CONST_CLASS:
			case DexInsnConsts.OP_CHECK_CAST:
			case DexInsnConsts.OP_INSTANCE_OF:
			case DexInsnConsts.OP_NEW_INSTANCE:
			case DexInsnConsts.OP_NEW_ARRAY:
			case DexInsnConsts.OP_CMPL_FLOAT:
			case DexInsnConsts.OP_CMPG_FLOAT:
			case DexInsnConsts.OP_CMPL_DOUBLE:
			case DexInsnConsts.OP_CMPG_DOUBLE:
			case DexInsnConsts.OP_CMP_LONG:
			case DexInsnConsts.OP_GOTO_16:
			case DexInsnConsts.OP_IF_EQ:
			case DexInsnConsts.OP_IF_NE:
			case DexInsnConsts.OP_IF_LT:
			case DexInsnConsts.OP_IF_GE:
			case DexInsnConsts.OP_IF_GT:
			case DexInsnConsts.OP_IF_LE:
			case DexInsnConsts.OP_IF_EQZ:
			case DexInsnConsts.OP_IF_NEZ:
			case DexInsnConsts.OP_IF_LTZ:
			case DexInsnConsts.OP_IF_GEZ:
			case DexInsnConsts.OP_IF_GTZ:
			case DexInsnConsts.OP_IF_LEZ:
			case DexInsnConsts.OP_AGET:
			case DexInsnConsts.OP_AGET_WIDE:
			case DexInsnConsts.OP_AGET_OBJECT:
			case DexInsnConsts.OP_AGET_BOOLEAN:
			case DexInsnConsts.OP_AGET_BYTE:
			case DexInsnConsts.OP_AGET_CHAR:
			case DexInsnConsts.OP_AGET_SHORT:
			case DexInsnConsts.OP_APUT:
			case DexInsnConsts.OP_APUT_WIDE:
			case DexInsnConsts.OP_APUT_OBJECT:
			case DexInsnConsts.OP_APUT_BOOLEAN:
			case DexInsnConsts.OP_APUT_BYTE:
			case DexInsnConsts.OP_APUT_CHAR:
			case DexInsnConsts.OP_APUT_SHORT:
			case DexInsnConsts.OP_IGET:
			case DexInsnConsts.OP_IGET_WIDE:
			case DexInsnConsts.OP_IGET_OBJECT:
			case DexInsnConsts.OP_IGET_BOOLEAN:
			case DexInsnConsts.OP_IGET_BYTE:
			case DexInsnConsts.OP_IGET_CHAR:
			case DexInsnConsts.OP_IGET_SHORT:
			case DexInsnConsts.OP_IPUT:
			case DexInsnConsts.OP_IPUT_WIDE:
			case DexInsnConsts.OP_IPUT_OBJECT:
			case DexInsnConsts.OP_IPUT_BOOLEAN:
			case DexInsnConsts.OP_IPUT_BYTE:
			case DexInsnConsts.OP_IPUT_CHAR:
			case DexInsnConsts.OP_IPUT_SHORT:
			case DexInsnConsts.OP_SGET:
			case DexInsnConsts.OP_SGET_WIDE:
			case DexInsnConsts.OP_SGET_OBJECT:
			case DexInsnConsts.OP_SGET_BOOLEAN:
			case DexInsnConsts.OP_SGET_BYTE:
			case DexInsnConsts.OP_SGET_CHAR:
			case DexInsnConsts.OP_SGET_SHORT:
			case DexInsnConsts.OP_SPUT:
			case DexInsnConsts.OP_SPUT_WIDE:
			case DexInsnConsts.OP_SPUT_OBJECT:
			case DexInsnConsts.OP_SPUT_BOOLEAN:
			case DexInsnConsts.OP_SPUT_BYTE:
			case DexInsnConsts.OP_SPUT_CHAR:
			case DexInsnConsts.OP_SPUT_SHORT:
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
			case DexInsnConsts.OP_REM_DOUBLE:
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
			case DexInsnConsts.OP_USHR_INT_LIT8:
				width = 2;
				break;

			case DexInsnConsts.OP_MOVE_16:
			case DexInsnConsts.OP_MOVE_WIDE_16:
			case DexInsnConsts.OP_MOVE_OBJECT_16:
			case DexInsnConsts.OP_CONST:
			case DexInsnConsts.OP_CONST_WIDE_32:
			case DexInsnConsts.OP_CONST_STRING_JUMBO:
			case DexInsnConsts.OP_GOTO_32:
			case DexInsnConsts.OP_FILLED_NEW_ARRAY:
			case DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE:
			case DexInsnConsts.OP_FILL_ARRAY_DATA:
			case DexInsnConsts.OP_PACKED_SWITCH:
			case DexInsnConsts.OP_SPARSE_SWITCH:
			case DexInsnConsts.OP_INVOKE_VIRTUAL:
			case DexInsnConsts.OP_INVOKE_SUPER:
			case DexInsnConsts.OP_INVOKE_DIRECT:
			case DexInsnConsts.OP_INVOKE_STATIC:
			case DexInsnConsts.OP_INVOKE_INTERFACE:
			case DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE:
			case DexInsnConsts.OP_INVOKE_SUPER_RANGE:
			case DexInsnConsts.OP_INVOKE_DIRECT_RANGE:
			case DexInsnConsts.OP_INVOKE_STATIC_RANGE:
			case DexInsnConsts.OP_INVOKE_INTERFACE_RANGE:
				width = 3;
				break;

			case DexInsnConsts.OP_CONST_WIDE:
				width = 5;
				break;

			/*
			 * Optimized instructions. We return negative size values for these
			 * to distinguish them.
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
				width = -2;
				break;
			case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK:
			case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK_RANGE:
			case DexInsnConsts.OP_INVOKE_SUPER_QUICK:
			case DexInsnConsts.OP_INVOKE_SUPER_QUICK_RANGE:
			case DexInsnConsts.OP_EXECUTE_INLINE:
			case DexInsnConsts.OP_EXECUTE_INLINE_RANGE:
			case DexInsnConsts.OP_INVOKE_DIRECT_EMPTY:
				width = -3;
				break;

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
				width = 0;
				break;

			/*
			 * DO NOT add a "default" clause here. Without it the compiler will
			 * complain if an instruction is missing (which is desirable).
			 */
			}

			instrWidthTable[opc] = width;
		}

	}

	/*
	 * Allocate and populate a 256-element array with instruction formats. Used
	 * in conjunction with dexDecodeInstruction.
	 */
	public static void createInstrFormatTable() {

		for (int opc = 0; opc < DexInsnConsts.kNumDalvikInstructions; opc++) {
			int fmt = DexInsnConsts.kFmtUnknown;

			switch (opc) {
			case DexInsnConsts.OP_GOTO:
				fmt = DexInsnConsts.kFmt10t;
				break;
			case DexInsnConsts.OP_NOP:
			case DexInsnConsts.OP_RETURN_VOID:
				fmt = DexInsnConsts.kFmt10x;
				break;
			case DexInsnConsts.OP_CONST_4:
				fmt = DexInsnConsts.kFmt11n;
				break;
			case DexInsnConsts.OP_CONST_HIGH16:
			case DexInsnConsts.OP_CONST_WIDE_HIGH16:
				fmt = DexInsnConsts.kFmt21h;
				break;
			case DexInsnConsts.OP_MOVE_RESULT:
			case DexInsnConsts.OP_MOVE_RESULT_WIDE:
			case DexInsnConsts.OP_MOVE_RESULT_OBJECT:
			case DexInsnConsts.OP_MOVE_EXCEPTION:
			case DexInsnConsts.OP_RETURN:
			case DexInsnConsts.OP_RETURN_WIDE:
			case DexInsnConsts.OP_RETURN_OBJECT:
			case DexInsnConsts.OP_MONITOR_ENTER:
			case DexInsnConsts.OP_MONITOR_EXIT:
			case DexInsnConsts.OP_THROW:
				fmt = DexInsnConsts.kFmt11x;
				break;
			case DexInsnConsts.OP_MOVE:
			case DexInsnConsts.OP_MOVE_WIDE:
			case DexInsnConsts.OP_MOVE_OBJECT:
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
				fmt = DexInsnConsts.kFmt12x;
				break;
			case DexInsnConsts.OP_GOTO_16:
				fmt = DexInsnConsts.kFmt20t;
				break;
			case DexInsnConsts.OP_GOTO_32:
				fmt = DexInsnConsts.kFmt30t;
				break;
			case DexInsnConsts.OP_CONST_STRING:
			case DexInsnConsts.OP_CONST_CLASS:
			case DexInsnConsts.OP_CHECK_CAST:
			case DexInsnConsts.OP_NEW_INSTANCE:
			case DexInsnConsts.OP_SGET:
			case DexInsnConsts.OP_SGET_WIDE:
			case DexInsnConsts.OP_SGET_OBJECT:
			case DexInsnConsts.OP_SGET_BOOLEAN:
			case DexInsnConsts.OP_SGET_BYTE:
			case DexInsnConsts.OP_SGET_CHAR:
			case DexInsnConsts.OP_SGET_SHORT:
			case DexInsnConsts.OP_SPUT:
			case DexInsnConsts.OP_SPUT_WIDE:
			case DexInsnConsts.OP_SPUT_OBJECT:
			case DexInsnConsts.OP_SPUT_BOOLEAN:
			case DexInsnConsts.OP_SPUT_BYTE:
			case DexInsnConsts.OP_SPUT_CHAR:
			case DexInsnConsts.OP_SPUT_SHORT:
				fmt = DexInsnConsts.kFmt21c;
				break;
			case DexInsnConsts.OP_CONST_16:
			case DexInsnConsts.OP_CONST_WIDE_16:
				fmt = DexInsnConsts.kFmt21s;
				break;
			case DexInsnConsts.OP_IF_EQZ:
			case DexInsnConsts.OP_IF_NEZ:
			case DexInsnConsts.OP_IF_LTZ:
			case DexInsnConsts.OP_IF_GEZ:
			case DexInsnConsts.OP_IF_GTZ:
			case DexInsnConsts.OP_IF_LEZ:
				fmt = DexInsnConsts.kFmt21t;
				break;
			case DexInsnConsts.OP_FILL_ARRAY_DATA:
			case DexInsnConsts.OP_PACKED_SWITCH:
			case DexInsnConsts.OP_SPARSE_SWITCH:
				fmt = DexInsnConsts.kFmt31t;
				break;
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
			case DexInsnConsts.OP_USHR_INT_LIT8:
				fmt = DexInsnConsts.kFmt22b;
				break;
			case DexInsnConsts.OP_INSTANCE_OF:
			case DexInsnConsts.OP_NEW_ARRAY:
			case DexInsnConsts.OP_IGET:
			case DexInsnConsts.OP_IGET_WIDE:
			case DexInsnConsts.OP_IGET_OBJECT:
			case DexInsnConsts.OP_IGET_BOOLEAN:
			case DexInsnConsts.OP_IGET_BYTE:
			case DexInsnConsts.OP_IGET_CHAR:
			case DexInsnConsts.OP_IGET_SHORT:
			case DexInsnConsts.OP_IPUT:
			case DexInsnConsts.OP_IPUT_WIDE:
			case DexInsnConsts.OP_IPUT_OBJECT:
			case DexInsnConsts.OP_IPUT_BOOLEAN:
			case DexInsnConsts.OP_IPUT_BYTE:
			case DexInsnConsts.OP_IPUT_CHAR:
			case DexInsnConsts.OP_IPUT_SHORT:
				fmt = DexInsnConsts.kFmt22c;
				break;
			case DexInsnConsts.OP_ADD_INT_LIT16:
			case DexInsnConsts.OP_RSUB_INT:
			case DexInsnConsts.OP_MUL_INT_LIT16:
			case DexInsnConsts.OP_DIV_INT_LIT16:
			case DexInsnConsts.OP_REM_INT_LIT16:
			case DexInsnConsts.OP_AND_INT_LIT16:
			case DexInsnConsts.OP_OR_INT_LIT16:
			case DexInsnConsts.OP_XOR_INT_LIT16:
				fmt = DexInsnConsts.kFmt22s;
				break;
			case DexInsnConsts.OP_IF_EQ:
			case DexInsnConsts.OP_IF_NE:
			case DexInsnConsts.OP_IF_LT:
			case DexInsnConsts.OP_IF_GE:
			case DexInsnConsts.OP_IF_GT:
			case DexInsnConsts.OP_IF_LE:
				fmt = DexInsnConsts.kFmt22t;
				break;
			case DexInsnConsts.OP_MOVE_FROM16:
			case DexInsnConsts.OP_MOVE_WIDE_FROM16:
			case DexInsnConsts.OP_MOVE_OBJECT_FROM16:
				fmt = DexInsnConsts.kFmt22x;
				break;
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
			case DexInsnConsts.OP_APUT:
			case DexInsnConsts.OP_APUT_WIDE:
			case DexInsnConsts.OP_APUT_OBJECT:
			case DexInsnConsts.OP_APUT_BOOLEAN:
			case DexInsnConsts.OP_APUT_BYTE:
			case DexInsnConsts.OP_APUT_CHAR:
			case DexInsnConsts.OP_APUT_SHORT:
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
			case DexInsnConsts.OP_REM_DOUBLE:
				fmt = DexInsnConsts.kFmt23x;
				break;
			case DexInsnConsts.OP_CONST:
			case DexInsnConsts.OP_CONST_WIDE_32:
				fmt = DexInsnConsts.kFmt31i;
				break;
			case DexInsnConsts.OP_CONST_STRING_JUMBO:
				fmt = DexInsnConsts.kFmt31c;
				break;
			case DexInsnConsts.OP_MOVE_16:
			case DexInsnConsts.OP_MOVE_WIDE_16:
			case DexInsnConsts.OP_MOVE_OBJECT_16:
				fmt = DexInsnConsts.kFmt32x;
				break;
			case DexInsnConsts.OP_FILLED_NEW_ARRAY:
			case DexInsnConsts.OP_INVOKE_VIRTUAL:
			case DexInsnConsts.OP_INVOKE_SUPER:
			case DexInsnConsts.OP_INVOKE_DIRECT:
			case DexInsnConsts.OP_INVOKE_STATIC:
			case DexInsnConsts.OP_INVOKE_INTERFACE:
				fmt = DexInsnConsts.kFmt35c;
				break;
			case DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE:
			case DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE:
			case DexInsnConsts.OP_INVOKE_SUPER_RANGE:
			case DexInsnConsts.OP_INVOKE_DIRECT_RANGE:
			case DexInsnConsts.OP_INVOKE_STATIC_RANGE:
			case DexInsnConsts.OP_INVOKE_INTERFACE_RANGE:
				fmt = DexInsnConsts.kFmt3rc;
				break;
			case DexInsnConsts.OP_CONST_WIDE:
				fmt = DexInsnConsts.kFmt51l;
				break;

			/*
			 * Optimized instructions.
			 */
			case DexInsnConsts.OP_THROW_VERIFICATION_ERROR:
				fmt = DexInsnConsts.kFmt20bc;
				break;
			case DexInsnConsts.OP_IGET_WIDE_VOLATILE:
			case DexInsnConsts.OP_IPUT_WIDE_VOLATILE:
			case DexInsnConsts.OP_IGET_VOLATILE:
			case DexInsnConsts.OP_IPUT_VOLATILE:
			case DexInsnConsts.OP_IGET_OBJECT_VOLATILE:
			case DexInsnConsts.OP_IPUT_OBJECT_VOLATILE:
				fmt = DexInsnConsts.kFmt22c;
				break;
			case DexInsnConsts.OP_SGET_OBJECT_VOLATILE:
			case DexInsnConsts.OP_SPUT_OBJECT_VOLATILE:
			case DexInsnConsts.OP_SGET_VOLATILE:
			case DexInsnConsts.OP_SPUT_VOLATILE:
			case DexInsnConsts.OP_SGET_WIDE_VOLATILE:
			case DexInsnConsts.OP_SPUT_WIDE_VOLATILE:
				fmt = DexInsnConsts.kFmt21c;
				break;
			case DexInsnConsts.OP_IGET_QUICK:
			case DexInsnConsts.OP_IGET_WIDE_QUICK:
			case DexInsnConsts.OP_IGET_OBJECT_QUICK:
			case DexInsnConsts.OP_IPUT_QUICK:
			case DexInsnConsts.OP_IPUT_WIDE_QUICK:
			case DexInsnConsts.OP_IPUT_OBJECT_QUICK:
				fmt = DexInsnConsts.kFmt22cs;
				break;
			case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK:
			case DexInsnConsts.OP_INVOKE_SUPER_QUICK:
				fmt = DexInsnConsts.kFmt35ms;
				break;
			case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK_RANGE:
			case DexInsnConsts.OP_INVOKE_SUPER_QUICK_RANGE:
				fmt = DexInsnConsts.kFmt3rms;
				break;
			case DexInsnConsts.OP_EXECUTE_INLINE:
				fmt = DexInsnConsts.kFmt3inline;
				break;
			case DexInsnConsts.OP_EXECUTE_INLINE_RANGE:
				fmt = DexInsnConsts.kFmt3rinline;
				break;
			case DexInsnConsts.OP_INVOKE_DIRECT_EMPTY:
				fmt = DexInsnConsts.kFmt35c;
				break;

			/* these should never appear when scanning code */
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
				fmt = DexInsnConsts.kFmtUnknown;
				break;

			/*
			 * DO NOT add a "default" clause here. Without it the compiler will
			 * complain if an instruction is missing (which is desirable).
			 */
			}

			instrFormatTable[opc] = fmt;
		}
	}

	/*
	 * Generate a table that holds instruction flags.
	 */
	public static void createInstrFlagsTable() {

		for (int opc = 0; opc < DexInsnConsts.kNumDalvikInstructions; opc++) {
			int flags = 0;

			switch (opc) {
			/* these don't affect the PC and can't cause an exception */
			case DexInsnConsts.OP_NOP:
			case DexInsnConsts.OP_MOVE:
			case DexInsnConsts.OP_MOVE_FROM16:
			case DexInsnConsts.OP_MOVE_16:
			case DexInsnConsts.OP_MOVE_WIDE:
			case DexInsnConsts.OP_MOVE_WIDE_FROM16:
			case DexInsnConsts.OP_MOVE_WIDE_16:
			case DexInsnConsts.OP_MOVE_OBJECT:
			case DexInsnConsts.OP_MOVE_OBJECT_FROM16:
			case DexInsnConsts.OP_MOVE_OBJECT_16:
			case DexInsnConsts.OP_MOVE_RESULT:
			case DexInsnConsts.OP_MOVE_RESULT_WIDE:
			case DexInsnConsts.OP_MOVE_RESULT_OBJECT:
			case DexInsnConsts.OP_MOVE_EXCEPTION:
			case DexInsnConsts.OP_CONST_4:
			case DexInsnConsts.OP_CONST_16:
			case DexInsnConsts.OP_CONST:
			case DexInsnConsts.OP_CONST_HIGH16:
			case DexInsnConsts.OP_CONST_WIDE_16:
			case DexInsnConsts.OP_CONST_WIDE_32:
			case DexInsnConsts.OP_CONST_WIDE:
			case DexInsnConsts.OP_CONST_WIDE_HIGH16:
			case DexInsnConsts.OP_FILL_ARRAY_DATA:
			case DexInsnConsts.OP_CMPL_FLOAT:
			case DexInsnConsts.OP_CMPG_FLOAT:
			case DexInsnConsts.OP_CMPL_DOUBLE:
			case DexInsnConsts.OP_CMPG_DOUBLE:
			case DexInsnConsts.OP_CMP_LONG:
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
			case DexInsnConsts.OP_ADD_INT:
			case DexInsnConsts.OP_SUB_INT:
			case DexInsnConsts.OP_MUL_INT:
			case DexInsnConsts.OP_AND_INT:
			case DexInsnConsts.OP_OR_INT:
			case DexInsnConsts.OP_XOR_INT:
			case DexInsnConsts.OP_SHL_INT:
			case DexInsnConsts.OP_SHR_INT:
			case DexInsnConsts.OP_USHR_INT:
			case DexInsnConsts.OP_ADD_LONG:
			case DexInsnConsts.OP_SUB_LONG:
			case DexInsnConsts.OP_MUL_LONG:
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
			case DexInsnConsts.OP_DIV_DOUBLE: // div by zero just returns NaN
			case DexInsnConsts.OP_REM_DOUBLE:
			case DexInsnConsts.OP_ADD_INT_2ADDR:
			case DexInsnConsts.OP_SUB_INT_2ADDR:
			case DexInsnConsts.OP_MUL_INT_2ADDR:
			case DexInsnConsts.OP_AND_INT_2ADDR:
			case DexInsnConsts.OP_OR_INT_2ADDR:
			case DexInsnConsts.OP_XOR_INT_2ADDR:
			case DexInsnConsts.OP_SHL_INT_2ADDR:
			case DexInsnConsts.OP_SHR_INT_2ADDR:
			case DexInsnConsts.OP_USHR_INT_2ADDR:
			case DexInsnConsts.OP_ADD_LONG_2ADDR:
			case DexInsnConsts.OP_SUB_LONG_2ADDR:
			case DexInsnConsts.OP_MUL_LONG_2ADDR:
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
			case DexInsnConsts.OP_ADD_INT_LIT16:
			case DexInsnConsts.OP_RSUB_INT:
			case DexInsnConsts.OP_MUL_INT_LIT16:
			case DexInsnConsts.OP_AND_INT_LIT16:
			case DexInsnConsts.OP_OR_INT_LIT16:
			case DexInsnConsts.OP_XOR_INT_LIT16:
			case DexInsnConsts.OP_ADD_INT_LIT8:
			case DexInsnConsts.OP_RSUB_INT_LIT8:
			case DexInsnConsts.OP_MUL_INT_LIT8:
			case DexInsnConsts.OP_AND_INT_LIT8:
			case DexInsnConsts.OP_OR_INT_LIT8:
			case DexInsnConsts.OP_XOR_INT_LIT8:
			case DexInsnConsts.OP_SHL_INT_LIT8:
			case DexInsnConsts.OP_SHR_INT_LIT8:
			case DexInsnConsts.OP_USHR_INT_LIT8:
				flags = DexInsnConsts.kInstrCanContinue;
				break;

			/* these don't affect the PC, but can cause exceptions */
			case DexInsnConsts.OP_CONST_STRING:
			case DexInsnConsts.OP_CONST_STRING_JUMBO:
			case DexInsnConsts.OP_CONST_CLASS:
			case DexInsnConsts.OP_MONITOR_ENTER:
			case DexInsnConsts.OP_MONITOR_EXIT:
			case DexInsnConsts.OP_CHECK_CAST:
			case DexInsnConsts.OP_INSTANCE_OF:
			case DexInsnConsts.OP_ARRAY_LENGTH:
			case DexInsnConsts.OP_NEW_INSTANCE:
			case DexInsnConsts.OP_NEW_ARRAY:
			case DexInsnConsts.OP_FILLED_NEW_ARRAY:
			case DexInsnConsts.OP_FILLED_NEW_ARRAY_RANGE:
			case DexInsnConsts.OP_AGET:
			case DexInsnConsts.OP_AGET_BOOLEAN:
			case DexInsnConsts.OP_AGET_BYTE:
			case DexInsnConsts.OP_AGET_CHAR:
			case DexInsnConsts.OP_AGET_SHORT:
			case DexInsnConsts.OP_AGET_WIDE:
			case DexInsnConsts.OP_AGET_OBJECT:
			case DexInsnConsts.OP_APUT:
			case DexInsnConsts.OP_APUT_BOOLEAN:
			case DexInsnConsts.OP_APUT_BYTE:
			case DexInsnConsts.OP_APUT_CHAR:
			case DexInsnConsts.OP_APUT_SHORT:
			case DexInsnConsts.OP_APUT_WIDE:
			case DexInsnConsts.OP_APUT_OBJECT:
			case DexInsnConsts.OP_IGET:
			case DexInsnConsts.OP_IGET_BOOLEAN:
			case DexInsnConsts.OP_IGET_BYTE:
			case DexInsnConsts.OP_IGET_CHAR:
			case DexInsnConsts.OP_IGET_SHORT:
			case DexInsnConsts.OP_IGET_WIDE:
			case DexInsnConsts.OP_IGET_OBJECT:
			case DexInsnConsts.OP_IPUT:
			case DexInsnConsts.OP_IPUT_BOOLEAN:
			case DexInsnConsts.OP_IPUT_BYTE:
			case DexInsnConsts.OP_IPUT_CHAR:
			case DexInsnConsts.OP_IPUT_SHORT:
			case DexInsnConsts.OP_IPUT_WIDE:
			case DexInsnConsts.OP_IPUT_OBJECT:
			case DexInsnConsts.OP_SGET:
			case DexInsnConsts.OP_SGET_BOOLEAN:
			case DexInsnConsts.OP_SGET_BYTE:
			case DexInsnConsts.OP_SGET_CHAR:
			case DexInsnConsts.OP_SGET_SHORT:
			case DexInsnConsts.OP_SGET_WIDE:
			case DexInsnConsts.OP_SGET_OBJECT:
			case DexInsnConsts.OP_SPUT:
			case DexInsnConsts.OP_SPUT_BOOLEAN:
			case DexInsnConsts.OP_SPUT_BYTE:
			case DexInsnConsts.OP_SPUT_CHAR:
			case DexInsnConsts.OP_SPUT_SHORT:
			case DexInsnConsts.OP_SPUT_WIDE:
			case DexInsnConsts.OP_SPUT_OBJECT:
			case DexInsnConsts.OP_DIV_INT:
			case DexInsnConsts.OP_REM_INT:
			case DexInsnConsts.OP_DIV_LONG:
			case DexInsnConsts.OP_REM_LONG:
			case DexInsnConsts.OP_DIV_INT_2ADDR:
			case DexInsnConsts.OP_REM_INT_2ADDR:
			case DexInsnConsts.OP_DIV_LONG_2ADDR:
			case DexInsnConsts.OP_REM_LONG_2ADDR:
			case DexInsnConsts.OP_DIV_INT_LIT16:
			case DexInsnConsts.OP_REM_INT_LIT16:
			case DexInsnConsts.OP_DIV_INT_LIT8:
			case DexInsnConsts.OP_REM_INT_LIT8:
				flags = DexInsnConsts.kInstrCanContinue
						| DexInsnConsts.kInstrCanThrow;
				break;

			case DexInsnConsts.OP_INVOKE_VIRTUAL:
			case DexInsnConsts.OP_INVOKE_VIRTUAL_RANGE:
			case DexInsnConsts.OP_INVOKE_SUPER:
			case DexInsnConsts.OP_INVOKE_SUPER_RANGE:
			case DexInsnConsts.OP_INVOKE_DIRECT:
			case DexInsnConsts.OP_INVOKE_DIRECT_RANGE:
			case DexInsnConsts.OP_INVOKE_STATIC:
			case DexInsnConsts.OP_INVOKE_STATIC_RANGE:
			case DexInsnConsts.OP_INVOKE_INTERFACE:
			case DexInsnConsts.OP_INVOKE_INTERFACE_RANGE:
				flags = DexInsnConsts.kInstrCanContinue
						| DexInsnConsts.kInstrCanThrow
						| DexInsnConsts.kInstrInvoke;
				break;

			case DexInsnConsts.OP_RETURN_VOID:
			case DexInsnConsts.OP_RETURN:
			case DexInsnConsts.OP_RETURN_WIDE:
			case DexInsnConsts.OP_RETURN_OBJECT:
				flags = DexInsnConsts.kInstrCanReturn;
				break;

			case DexInsnConsts.OP_THROW:
				flags = DexInsnConsts.kInstrCanThrow;
				break;

			/* unconditional branches */
			case DexInsnConsts.OP_GOTO:
			case DexInsnConsts.OP_GOTO_16:
			case DexInsnConsts.OP_GOTO_32:
				flags = DexInsnConsts.kInstrCanBranch
						| DexInsnConsts.kInstrUnconditional;
				break;

			/* conditional branches */
			case DexInsnConsts.OP_IF_EQ:
			case DexInsnConsts.OP_IF_NE:
			case DexInsnConsts.OP_IF_LT:
			case DexInsnConsts.OP_IF_GE:
			case DexInsnConsts.OP_IF_GT:
			case DexInsnConsts.OP_IF_LE:
			case DexInsnConsts.OP_IF_EQZ:
			case DexInsnConsts.OP_IF_NEZ:
			case DexInsnConsts.OP_IF_LTZ:
			case DexInsnConsts.OP_IF_GEZ:
			case DexInsnConsts.OP_IF_GTZ:
			case DexInsnConsts.OP_IF_LEZ:
				flags = DexInsnConsts.kInstrCanBranch
						| DexInsnConsts.kInstrCanContinue;
				break;

			/* switch statements; if value not in switch, it continues */
			case DexInsnConsts.OP_PACKED_SWITCH:
			case DexInsnConsts.OP_SPARSE_SWITCH:
				flags = DexInsnConsts.kInstrCanSwitch
						| DexInsnConsts.kInstrCanContinue;
				break;

			/* verifier/optimizer-generated instructions */
			case DexInsnConsts.OP_THROW_VERIFICATION_ERROR:
				flags = DexInsnConsts.kInstrCanThrow;
				break;
			case DexInsnConsts.OP_EXECUTE_INLINE:
			case DexInsnConsts.OP_EXECUTE_INLINE_RANGE:
				flags = DexInsnConsts.kInstrCanContinue
						| DexInsnConsts.kInstrCanThrow;
				break;
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
				flags = DexInsnConsts.kInstrCanContinue
						| DexInsnConsts.kInstrCanThrow;
				break;

			case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK:
			case DexInsnConsts.OP_INVOKE_VIRTUAL_QUICK_RANGE:
			case DexInsnConsts.OP_INVOKE_SUPER_QUICK:
			case DexInsnConsts.OP_INVOKE_SUPER_QUICK_RANGE:
			case DexInsnConsts.OP_INVOKE_DIRECT_EMPTY:
				flags = DexInsnConsts.kInstrCanContinue
						| DexInsnConsts.kInstrCanThrow
						| DexInsnConsts.kInstrInvoke;
				break;

			/* these should never appear when scanning code */
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

			/*
			 * DO NOT add a "default" clause here. Without it the compiler will
			 * complain if an instruction is missing (which is desirable).
			 */
			}

			instrFlagsTable[opc] = flags;
		}
	}

	/*
	 * Return the width of the specified instruction, or 0 if not defined. Also
	 * works for special OP_NOP entries, including switch statement data tables
	 * and array data.
	 */
	public static int getInstrOrTableWidthAbs(Vector<Integer> insns, int off) {
		int width;

		if (insns.elementAt(off).intValue() == DexInsnConsts.kPackedSwitchSignature) {
			width = 4 + insns.elementAt(off + 1).intValue() * 2;
		} else if (insns.elementAt(off).intValue() == DexInsnConsts.kSparseSwitchSignature) {
			width = 2 + insns.elementAt(off + 1).intValue() * 4;
		} else if (insns.elementAt(off).intValue() == DexInsnConsts.kArrayDataSignature) {
			int elemWidth = insns.elementAt(off + 1).intValue();
			int len = insns.elementAt(off + 2).intValue()
					| ((insns.elementAt(off + 3).intValue()) << 16);
			width = 4 + (elemWidth * len + 1) / 2;
		} else {
			width = DexInsnsUtil.getInstrWidthAbs(DexInsnsUtil
					.getOpCode(DexInsnsUtil.fetch(insns, off)));
		}
		return width;
	}

	/*
	 * Returns the flags for the specified opcode.
	 */
	public static int getInstrFlags(int opCode) {
		return instrFlagsTable[opCode];
	}

	/*
	 * Return the instruction format for the specified opcode.
	 */
	public static int getInstrFormat(int opCode) {
		return instrFormatTable[opCode];
	}

	/*
	 * Return the width of the specified instruction, or 0 if not defined.
	 */
	public static int getInstrWidthAbs(int opCode) {
		int val = instrWidthTable[opCode];
		if (val < 0)
			val = -val;
		return val;
	}

	/*
	 * Copied from InterpCore.h. Used for instruction decoding.
	 */
	public static int fetch(Vector<Integer> insns, int offset) {
		// System.out.println(offset);
		// for(int i = 0;i<insns.capacity();i++){
		// System.out.println(Integer.toHexString(insns.get(i).intValue()));
		// }

		// System.out.println(insns.elementAt(offset).intValue());
		// System.out.println("got to here");

		return insns.elementAt(offset).intValue();
	}

	public static int getOpCode(int insn) {
		return insn & 0xff;
	}

	public static int getA(int insn) {
		return (insn >> 8) & 0x0f;
	}

	public static int getB(int insn) {
		return (insn >> 12) & 0x0f;
	}

	public static int getAA(int insn) {
		return (insn >> 8) & 0xff;
	}

	/*
	 * Decode the instruction pointed to by "insns".
	 * 
	 * Fills out the pieces of "pDec" that are affected by the current
	 * instruction. Does not touch anything else.
	 */
	public static LinkedHashMap<Integer, DexDecodedInsn> decodeInstruction(
			Vector<Integer> insns, long insnSize) {
		/*
		 * DexInsnsUtil.createInstrWidthTable();
		 * DexInsnsUtil.createInstrFlagsTable();
		 * DexInsnsUtil.createInstrFormatTable();
		 */
		// Vector<DexDecodedInsn> decodedInsns = new Vector<DexDecodedInsn>();
		LinkedHashMap<Integer, DexDecodedInsn> decodedInsns = new LinkedHashMap<Integer, DexDecodedInsn>();

		int offset = 0;
		int instr = 0;
		// int insnCount = 0;
		while (offset < (int) insnSize) {// offset < insns.capacity()){
			// insnCount++;
			// System.out.println(insns.capacity());

			DexDecodedInsn insn = new DexDecodedInsn();

			// System.out.println("in decodeInstruction(). offset = " + offset);
			instr = DexInsnsUtil.fetch(insns, offset);

			// System.out.println("2 in decodeInstruction(). offset = " +
			// offset);

			insn.setOpCode(DexInsnsUtil.getOpCode(instr));
			insn.setFlags(DexInsnsUtil.getInstrFlags(insn.getOpCode()));
			insn.setOffset(offset);

			decoding: switch (DexInsnsUtil.getInstrFormat(insn.getOpCode())) {
			case kFmt10x: // op
			{
				if (insns.elementAt(offset).intValue() == DexInsnConsts.kPackedSwitchSignature) {
					insn.createPackedSwitch(insns, offset);
				} else if (insns.elementAt(offset).intValue() == DexInsnConsts.kSparseSwitchSignature) {
					insn.createSparseSwitch(insns, offset);
				} else {
					/* nothing to do; copy the AA bits out for the verifier */
					// pDec->vA = INST_AA(inst);
					insn.setVA((long) DexInsnsUtil.getAA(instr));
				}
			}
				break;
			case kFmt12x: // op vA, vB
				// pDec->vA = INST_A(inst);
				// pDec->vB = INST_B(inst);
				insn.setVA((long) DexInsnsUtil.getA(instr));
				insn.setVB((long) DexInsnsUtil.getB(instr));
				break;
			case kFmt11n: // op vA, #+B
				// pDec->vA = INST_A(inst);
				// pDec->vB = (s4) (INST_B(inst) << 28) >> 28; // sign extend
				// 4-bit value
				insn.setVA((long) DexInsnsUtil.getA(instr));
				insn.setVB((long) ((DexInsnsUtil.getB(instr) << 28) >> 28));
				break;
			case kFmt11x: // op vAA
				// pDec->vA = INST_AA(inst);
				insn.setVA((long) (DexInsnsUtil.getAA(instr)));
				break;
			case kFmt10t: // op +AA
				// pDec->vA = (s1) INST_AA(inst); // sign-extend 8-bit value
				insn.setVA((long) ((DexInsnsUtil.getAA(instr) << 24) >> 24));
				break;
			case kFmt20t: // op +AAAA
				// pDec->vA = (s2) FETCH(1); // sign-extend 16-bit value
				insn
						.setVA((long) ((DexInsnsUtil.fetch(insns, (offset + 1)) << 16) >> 16));
				break;
			case kFmt20bc: // op AA, thing@BBBB
			case kFmt21c: // op vAA, thing@BBBB
			case kFmt22x: // op vAA, vBBBB
				// pDec->vA = INST_AA(inst);
				// pDec->vB = FETCH(1);
				insn.setVA((long) DexInsnsUtil.getAA(instr));
				insn.setVB((long) DexInsnsUtil.fetch(insns, (offset + 1)));
				break;
			case kFmt21s: // op vAA, #+BBBB
			case kFmt21t: // op vAA, +BBBB
				// pDec->vA = INST_AA(inst);
				// pDec->vB = (s2) FETCH(1); // sign-extend 16-bit value
				insn.setVA((long) DexInsnsUtil.getAA(instr));
				insn
						.setVB((long) ((DexInsnsUtil.fetch(insns, (offset + 1)) << 16) >> 16));
				break;
			case kFmt21h: // op vAA, #+BBBB0000[00000000]
				// pDec->vA = INST_AA(inst);
				/*
				 * The value should be treated as right-zero-extended, but we
				 * don't actually do that here. Among other things, we don't
				 * know if it's the top bits of a 32- or 64-bit value.
				 */
				// pDec->vB = FETCH(1);
				insn.setVA((long) DexInsnsUtil.getAA(instr));
				insn.setVB((long) DexInsnsUtil.fetch(insns, (offset + 1)));

				break;
			case kFmt23x: // op vAA, vBB, vCC
				// pDec->vA = INST_AA(inst);
				// pDec->vB = FETCH(1) & 0xff;
				// pDec->vC = FETCH(1) >> 8;
				insn.setVA((long) DexInsnsUtil.getAA(instr));
				insn
						.setVB((long) (DexInsnsUtil.fetch(insns, (offset + 1)) & 0xff));
				insn
						.setVC((long) (DexInsnsUtil.fetch(insns, (offset + 1)) >> 8));
				break;
			case kFmt22b: // op vAA, vBB, #+CC
				// pDec->vA = INST_AA(inst);
				// pDec->vB = FETCH(1) & 0xff;
				// pDec->vC = (s1) (FETCH(1) >> 8); // sign-extend 8-bit value
				insn.setVA((long) DexInsnsUtil.getAA(instr));
				insn
						.setVB((long) (DexInsnsUtil.fetch(insns, (offset + 1)) & 0xff));
				insn
						.setVC((long) ((DexInsnsUtil.fetch(insns, (offset + 1)) << 16) >> 24));
				break;
			case kFmt22s: // op vA, vB, #+CCCC
			case kFmt22t: // op vA, vB, +CCCC
				// pDec->vA = INST_A(inst);
				// pDec->vB = INST_B(inst);
				// pDec->vC = (s2) FETCH(1); // sign-extend 16-bit value
				insn.setVA((long) DexInsnsUtil.getA(instr));
				insn.setVB((long) DexInsnsUtil.getB(instr));
				insn
						.setVC((long) ((DexInsnsUtil.fetch(insns, (offset + 1)) << 16) >> 16));
				break;
			case kFmt22c: // op vA, vB, thing@CCCC
			case kFmt22cs: // [opt] op vA, vB, field offset CCCC
				// pDec->vA = INST_A(inst);
				// pDec->vB = INST_B(inst);
				// pDec->vC = FETCH(1);
				insn.setVA((long) DexInsnsUtil.getA(instr));
				insn.setVB((long) DexInsnsUtil.getB(instr));
				insn.setVC((long) DexInsnsUtil.fetch(insns, (offset + 1)));
				break;
			case kFmt30t: // op +AAAAAAAA
				// pDec->vA = FETCH(1) | ((u4) FETCH(2) << 16); // signed 32-bit
				// value
				insn
						.setVA((long) (DexInsnsUtil.fetch(insns, (offset + 1)) | (DexInsnsUtil
								.fetch(insns, (offset + 2)) << 16)) & 0xffffL);
				break;
			case kFmt31t: // op vAA, +BBBBBBBB
				// case kFmt31c: // op vAA, thing@BBBBBBBB
			case kFmt31i: // op vAA, #+BBBBBBBB
				// pDec->vA = INST_AA(inst);
				// pDec->vB = FETCH(1) | ((u4) FETCH(2) << 16); // 32-bit value
				insn.setVA((long) (DexInsnsUtil.getAA(instr)));
				insn
						.setVB((long) (DexInsnsUtil.fetch(insns, (offset + 1)) | (DexInsnsUtil
								.fetch(insns, (offset + 2)) << 16)));
				break;

			case kFmt31c: // op vAA, thing@BBBBBBBB
				insn.setVA((long) (DexInsnsUtil.getAA(instr)));
				insn
						.setVB((long) (DexInsnsUtil.fetch(insns, (offset + 1)) | (DexInsnsUtil
								.fetch(insns, (offset + 2)) << 16)) & 0xffffL);
				break;

			case kFmt32x: // op vAAAA, vBBBB
				// pDec->vA = FETCH(1);
				// pDec->vB = FETCH(2);
				insn.setVA((long) DexInsnsUtil.fetch(insns, (offset + 1)));
				insn.setVB((long) DexInsnsUtil.fetch(insns, (offset + 2)));
				break;
			// case kFmt31i: // op vAA, #+BBBBBBBB
			// pDec->vA = INST_AA(inst);
			// pDec->vB = FETCH(1) | ((u4) FETCH(2) << 16);
			// break;
			case kFmt35c: // op vB, {vD..vG,vA}, thing@CCCC
			case kFmt35ms: // [opt] invoke-virtual+super
			{
				/*
				 * The lettering changes that came about when we went from 4
				 * args to 5 made the "range" versions of the calls different
				 * from the non-range versions. We have the choice between
				 * decoding them the way the spec shows and having lots of
				 * conditionals in the verifier, or mapping the values onto
				 * their original registers and leaving the verifier intact.
				 * 
				 * Current plan is to leave the verifier alone. We can fix it
				 * later if it's architecturally unbearable.
				 * 
				 * Bottom line: method constant is always in vB.
				 */
				int regList;
				long count = 0;
				// int i, count;

				// pDec->vA = INST_B(inst);
				// pDec->vB = FETCH(1);
				// regList = FETCH(2);
				insn.setVB((long) DexInsnsUtil.getB(instr));
				insn.setVC((long) DexInsnsUtil.fetch(insns, (offset + 1)));
				regList = DexInsnsUtil.fetch(insns, (offset + 2));

				// if (pDec->vA > 5) {
				// LOGW("Invalid arg count in 35c/35ms (%d)\n", pDec->vA);
				// goto bail;
				// }
				if (insn.getVB() > 5) {
					System.out.println("Invalid arg count in 35c/35ms"
							+ insn.getVB());
					break decoding;
				}

				// count = pDec->vA;
				// if (count == 5) {
				/* 5th arg comes from A field in instruction */
				// pDec->arg[4] = INST_A(inst);
				// count--;
				// }
				// for (i = 0; i < count; i++) {
				// pDec->arg[i] = regList & 0x0f;
				// regList >>= 4;
				// }
				/* copy arg[0] to vC; we don't have vD/vE/vF, so ignore those */
				// if (pDec->vA > 0)
				// pDec->vC = pDec->arg[0];
				count = insn.getVB();
				if (count == 5) {
					/* 5th arg comes from A field in instruction */
					insn.setOneArg((long) DexInsnsUtil.getA(instr), 4);
					insn.setVA((long) DexInsnsUtil.getA(instr));
					count--;
				}
				for (long i = 0; i < count; i++) {
					insn.setOneArg((long) (regList & 0x0f), i);
					regList >>= 4;
				}
				/* copy arg[0] to vC; we don't have vD/vE/vF, so ignore those */

			}
				break;
			case kFmt3inline: // [opt] inline invoke
			{
				// u2 regList;
				// int i;
				int regList;

				// pDec->vA = INST_B(inst);
				// pDec->vB = FETCH(1);
				// regList = FETCH(2);
				insn.setVB((long) DexInsnsUtil.getB(instr));
				insn.setVC((long) DexInsnsUtil.fetch(insns, (offset + 1)));
				regList = DexInsnsUtil.fetch(insns, (offset + 2));

				// if (pDec->vA > 4) {
				// LOGW("Invalid arg count in 3inline (%d)\n", pDec->vA);
				// goto bail;
				// }
				// for (i = 0; i < (int) pDec->vA; i++) {
				// pDec->arg[i] = regList & 0x0f;
				// regList >>= 4;
				// }
				if (insn.getVB() > 4) {
					System.out.println("Invalid arg count in 3inline "
							+ insn.getVB());
					break decoding;
				}
				for (long i = 0; i < insn.getVB(); i++) {
					insn.setOneArg((long) (regList & 0x0f), i);
					regList >>= 4;
				}

				/* copy arg[0] to vC; we don't have vD/vE/vF, so ignore those */
				// if (pDec->vA > 0)
				// pDec->vC = pDec->arg[0];
			}
				break;
			case kFmt35fs: // [opt] invoke-interface
				// assert(false); // TODO
				break;
			case kFmt3rc: // op {vCCCC .. v(CCCC+AA-1)}, meth@BBBB
			case kFmt3rms: // [opt] invoke-virtual+super/range
			case kFmt3rinline: // [opt] execute-inline/range
				// pDec->vA = INST_AA(inst);
				// pDec->vB = FETCH(1);
				// pDec->vC = FETCH(2);
				insn.setVA((long) DexInsnsUtil.getAA(instr));
				insn.setVB((long) DexInsnsUtil.fetch(insns, (offset + 1)));
				insn.setVC((long) DexInsnsUtil.fetch(insns, (offset + 2)));
				insn.setInvokeRangeParameters();

				break;
			case kFmt3rfs: // [opt] invoke-interface/range
				// assert(false); // TODO
				break;
			case kFmt51l: // op vAA, #+BBBBBBBBBBBBBBBB
				// pDec->vA = INST_AA(inst);
				// pDec->vB_wide = FETCH(1);
				// pDec->vB_wide |= (u8)FETCH(2) << 16;
				// pDec->vB_wide |= (u8)FETCH(3) << 32;
				// pDec->vB_wide |= (u8)FETCH(4) << 48;
				insn.setVA((long) DexInsnsUtil.getAA(instr));
				long vBWide = (long) DexInsnsUtil.fetch(insns, (offset + 1));
				vBWide |= (long) DexInsnsUtil.fetch(insns, (offset + 2)) << 16;
				vBWide |= (long) DexInsnsUtil.fetch(insns, (offset + 3)) << 32;
				vBWide |= (long) DexInsnsUtil.fetch(insns, (offset + 4)) << 48;
				insn.setVBWide(vBWide);
				break;
			default:
				// LOGW("Can't decode unexpected format %d (op=%d)\n",
				// dexGetInstrFormat(fmts, pDec->opCode), pDec->opCode);
				// assert(false);
				System.out.println("Can't decode unexpected format "
						+ DexInsnsUtil.getInstrFormat(insn.getOpCode())
						+ " (op=" + insn.getOpCode() + ")");
				break;
			}

			// decodedInsns.add(insn);
			decodedInsns.put(new Integer(offset), insn);
			offset += DexInsnsUtil.getInstrOrTableWidthAbs(insns, offset);
		}

		// Hashtable result = new Hashtable();
		// for(Enumeration e = decodedInsns.keys(); e.hasMoreElements();){
		// Integer key = (Integer)e.nextElement();
		// DexDecodedInsn di = (DexDecodedInsn)decodedInsns.get(key);
		// result.put(key, di);
		// }

		return decodedInsns;
	}

}