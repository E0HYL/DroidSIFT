package mySoot.preprocessor;

//import com.android.dx.decoder.*;

public class DexUtil {

	// tested
	public static String readString(byte[] bytes, long off, int len) {
		return new String(bytes, (int) off, len);
	}

	// tested
	public static int readUnsignedByte(byte[] bytes, long off) {
		return bytes[(int) off] & 0xff;
	}

	// tested
	public static int readSignedByte(byte[] bytes, long off) {
		return bytes[(int) off];
	}

	// tested
	// endian: true for little, false for big
	public static long readUnsignedInt(byte[] bytes, long off, boolean endian) {
		int result = 0;
		if (endian == false) {
			result = (DexUtil.readSignedByte(bytes, off) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 8)
					| DexUtil.readUnsignedByte(bytes, (off + 3));
		} else {
			result = (DexUtil.readSignedByte(bytes, (off + 3)) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		}

		return result & 0xffffffffL;
	}

	public static int readSignedInt(byte[] bytes, long off, boolean endian) {
		int result = 0;
		if (endian == false) {
			result = (DexUtil.readSignedByte(bytes, off) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 8)
					| DexUtil.readUnsignedByte(bytes, (off + 3));
		} else {
			result = (DexUtil.readSignedByte(bytes, (off + 3)) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		}

		return result;
	}

	// tested
	// endian: true for little, false for big
	public static int readUnsignedShort(byte[] bytes, long off, boolean endian) {
		int result = 0;
		if (endian == false) {
			result = (DexUtil.readSignedByte(bytes, (off)) << 8)
					| DexUtil.readUnsignedByte(bytes, (off + 1));
		} else {
			result = (DexUtil.readSignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		}
		return result & 0xffff;
	}

	public static int readUnsignedLeb128(byte[] bytes, long off) {

		int result = DexUtil.readUnsignedByte(bytes, off);

		if (result > 0x7f) {
			int cur = DexUtil.readUnsignedByte(bytes, (off + 1));

			result = (result & 0x7f) | ((cur & 0x7f) << 7);
			if (cur > 0x7f) {
				cur = DexUtil.readUnsignedByte(bytes, (off + 2));
				;
				result |= (cur & 0x7f) << 14;
				if (cur > 0x7f) {
					cur = DexUtil.readUnsignedByte(bytes, (off + 3));

					result |= (cur & 0x7f) << 21;
					if (cur > 0x7f) {
						cur = DexUtil.readUnsignedByte(bytes, (off + 4));

						result |= cur << 28;
					}
				}
			}
		}

		return result;
	}

	public static int readUnsignedLeb128P1(byte[] bytes, long off) {

		int result = DexUtil.readUnsignedByte(bytes, off);

		if (result > 0x7f) {
			int cur = DexUtil.readUnsignedByte(bytes, (off + 1));

			result = (result & 0x7f) | ((cur & 0x7f) << 7);
			if (cur > 0x7f) {
				cur = DexUtil.readUnsignedByte(bytes, (off + 2));
				;
				result |= (cur & 0x7f) << 14;
				if (cur > 0x7f) {
					cur = DexUtil.readUnsignedByte(bytes, (off + 3));

					result |= (cur & 0x7f) << 21;
					if (cur > 0x7f) {
						cur = DexUtil.readUnsignedByte(bytes, (off + 4));

						result |= cur << 28;
					}
				}
			}
		}

		return (result - 1);
	}

	public static int getLeb128Size(byte[] bytes, long off) {
		int size = 0;
		int cur = DexUtil.readUnsignedByte(bytes, off);
		size++;
		if (cur > 0x7f) {
			cur = DexUtil.readUnsignedByte(bytes, (off + 1));
			size++;
			if (cur > 0x7f) {
				cur = DexUtil.readUnsignedByte(bytes, (off + 2));
				size++;
				if (cur > 0x7f) {
					cur = DexUtil.readUnsignedByte(bytes, (off + 3));
					size++;
					if (cur > 0x7f) {
						cur = DexUtil.readUnsignedByte(bytes, (off + 4));
						size++;
					}
				}
			}
		}

		return size;
	}

	public static int readSignedLeb128(byte[] bytes, long off) {

		int result = DexUtil.readUnsignedByte(bytes, off);

		if (result <= 0x7f) {
			result = (result << 25) >> 25;
		} else {
			int cur = DexUtil.readUnsignedByte(bytes, (off + 1));

			result = (result & 0x7f) | ((cur & 0x7f) << 7);
			if (cur <= 0x7f) {
				result = (result << 18) >> 18;
			} else {
				cur = DexUtil.readUnsignedByte(bytes, (off + 2));

				result |= (cur & 0x7f) << 14;
				if (cur <= 0x7f) {
					result = (result << 11) >> 11;
				} else {
					cur = DexUtil.readUnsignedByte(bytes, (off + 3));

					result |= (cur & 0x7f) << 21;
					if (cur <= 0x7f) {
						result = (result << 4) >> 4;
					} else {
						cur = DexUtil.readUnsignedByte(bytes, (off + 4));

						result |= cur << 28;
					}
				}
			}
		}

		return result;

	}

	// used when encoded value only consists of characters. In another word, no
	// additional information, e.g. strlen, is
	// encoded into the bytes
	public static String readMUTF8(byte[] bytes, long off, long size) {
		char[] decoded = new char[(int) size];

		long offset = off;
		int byte1 = 0;
		int byte2 = 0;
		int byte3 = 0;

		// int auxCounter = 0;

		// int length = DexUtil.readUnsignedShort(bytes, offset, false);
		// offset += 2;
		offset += 1;

		for (int j = 0; j < (int) size; j++) {
			// System.out.print("the " + auxCounter + "th character");
			// auxCounter++;

			byte1 = DexUtil.readUnsignedByte(bytes, offset);
			// System.out.println(byte1);

			offset++;
			if (byte1 < 0x80) {
				decoded[j] = (char) byte1;
				// System.out.println(new String(decoded));//

			} else if (byte1 < 0xe0) {
				byte2 = DexUtil.readUnsignedByte(bytes, offset);
				offset++;
				decoded[j] = (char) (((byte1 & 0x1f) << 6) | (byte2 & 0x3f));
				// System.out.println(new String(decoded));//
				// if(decoded[j] == '\u0000'){
				// return new String(decoded);
				// }

			} else /* if(byte1 < 0xf0) */{
				byte2 = DexUtil.readUnsignedByte(bytes, offset);
				offset++;
				byte3 = DexUtil.readUnsignedByte(bytes, offset);
				offset++;
				decoded[j] = (char) (((byte1 & 0x0f) << 12)
						| ((byte2 & 0x3f) << 6) | (byte3 & 0x3f));
				// System.out.println(new String(decoded));//

			}
		}

		return new String(decoded);

	}

	public static long getMUTF8Size(byte[] bytes, long off, long size) {
		long offset = off;
		int byte1 = 0;
		for (int i = 0; i < size; i++) {
			byte1 = DexUtil.readUnsignedByte(bytes, offset);
			// System.out.println(byte1);

			offset++;
			if (byte1 < 0x80) {
				// decoded[j] = (char)byte1;
				// System.out.println(new String(decoded));//

			} else if (byte1 < 0xe0) {
				// byte2 = DexUtil.readUnsignedByte(bytes, offset);
				offset++;
				// decoded[j] = (char)(((byte1 & 0x1f) << 6) | (byte2 & 0x3f));
				// System.out.println(new String(decoded));//
				// if(decoded[j] == '\u0000'){
				// return new String(decoded);
				// }

			} else /* if(byte1 < 0xf0) */{
				// byte2 = DexUtil.readUnsignedByte(bytes, offset);
				offset += 2;
				// byte3 = DexUtil.readUnsignedByte(bytes, offset);
				// offset++;
				// decoded[j] = (char)(((byte1 & 0x0f) << 12) | ((byte2 & 0x3f)
				// << 6) | (byte3 & 0x3f));
				// System.out.println(new String(decoded));//

			}
		}

		offset += 2;
		return (offset - off);
	}

	// tested
	// used if data are encoded via DataOutputStream->writeUTF. Data start with
	// two bytes indicating the length of string
	public static String readUTF(byte[] bytes, long off, long size) {

		long offset = off;
		// int length = DexUtil.readUnsignedShort(bytes, offset, false);
		offset += 2;

		char[] decoded = new char[(int) size];

		int byte1 = 0;
		int byte2 = 0;
		int byte3 = 0;

		for (int j = 0; j < size; j++) {

			byte1 = DexUtil.readUnsignedByte(bytes, offset);
			offset++;

			if (byte1 < 0x80) {
				decoded[j] = (char) byte1;
			} else if (byte1 < 0xe0) {
				byte2 = DexUtil.readUnsignedByte(bytes, offset);
				offset++;
				decoded[j] = (char) (((byte1 & 0x1f) << 6) | (byte2 & 0x3f));
			} else /* if(byte1 < 0xf0) */{
				byte2 = DexUtil.readUnsignedByte(bytes, offset);
				offset++;
				byte3 = DexUtil.readUnsignedByte(bytes, offset);
				offset++;
				decoded[j] = (char) (((byte1 & 0x0f) << 12)
						| ((byte2 & 0x3f) << 6) | (byte3 & 0x3f));
			}
		}

		return new String(decoded);

	}

	// tested
	public static long getUTFSize(byte[] bytes, long off) {
		long offset = off;

		int length = DexUtil.readUnsignedShort(bytes, offset, false);
		offset += length + 2;

		// int byte1 = 0;

		// for(int j=0; j<length; j++){

		// byte1 = DexUtil.readUnsignedByte(bytes, offset);
		// offset++;

		// if(byte1 < 0x80){

		// }else if(byte1 < 0xe0){

		// offset++;

		// }else /*if(byte1 < 0xf0)*/{
		// offset += 2;
		// }
		// }

		return (offset - off);

	}

	// ////////////////////////////////////////////////////////////////////////////////////////////////////////
	/* Decoding for Encoded Value */
	// ////////////////////////////////////////////////////////////////////////////////////////////////////////

	// decode type information for an encoded value
	public static int decodeType(byte[] bytes, long off) {
		int type = DexUtil.readUnsignedByte(bytes, off);
		return (type & 0x1f);
	}

	// deocde size-1 information for an encoded value
	public static int decodeSize(byte[] bytes, long off) {
		int arg = DexUtil.readUnsignedByte(bytes, off);
		return ((arg >> 5) & 0x07);
	}

	public static int decodeValueByte(byte[] bytes, long off) {
		return DexUtil.readSignedByte(bytes, off);
	}

	public static int decodeValueShort(byte[] bytes, long off, int size) {
		int result = 0;
		if (size == 0) {
			result = DexUtil.readSignedByte(bytes, off);
		} else if (size == 1) {
			result = (DexUtil.readSignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		}
		return result;
	}

	public static int decodeValueChar(byte[] bytes, long off, int size) {
		int result = 0;
		if (size == 0) {
			result = DexUtil.readSignedByte(bytes, off);
		} else if (size == 1) {
			result = (DexUtil.readSignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		}
		return result & 0xffff;
	}

	public static int decodeValueInt(byte[] bytes, long off, int size) {
		int result = 0;
		if (size == 0) {
			result = DexUtil.readSignedByte(bytes, off);
		} else if (size == 1) {
			result = (DexUtil.readSignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		} else if (size == 2) {
			result = (DexUtil.readSignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		} else if (size == 3) {
			result = (DexUtil.readSignedByte(bytes, (off + 3)) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		}
		return result;
	}

	public static long decodeValueLong(byte[] bytes, long off, int size) {
		long result = 0;
		int part1 = 0;
		int part2 = 0;

		if (size == 0) {
			result = (long) (DexUtil.readSignedByte(bytes, off));
		} else if (size == 1) {
			result = (long) ((DexUtil.readSignedByte(bytes, (off + 1)) << 8) | DexUtil
					.readUnsignedByte(bytes, off));
		} else if (size == 2) {
			result = (long) ((DexUtil.readSignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8) | DexUtil
					.readUnsignedByte(bytes, off));
		} else if (size == 3) {
			result = (long) ((DexUtil.readSignedByte(bytes, (off + 3)) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8) | DexUtil
					.readUnsignedByte(bytes, off));
		} else {
			part1 = (DexUtil.readSignedByte(bytes, (off + 3)) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
			if (size == 4) {
				part2 = DexUtil.readSignedByte(bytes, off + 4);
			} else if (size == 5) {
				part2 = (DexUtil.readSignedByte(bytes, (off + 5)) << 8)
						| DexUtil.readUnsignedByte(bytes, off + 4);
			} else if (size == 6) {
				part2 = (DexUtil.readSignedByte(bytes, (off + 6)) << 16)
						| (DexUtil.readUnsignedByte(bytes, (off + 5)) << 8)
						| DexUtil.readUnsignedByte(bytes, off + 4);
			} else if (size == 7) {
				part2 = (DexUtil.readSignedByte(bytes, (off + 7)) << 24)
						| (DexUtil.readUnsignedByte(bytes, (off + 6)) << 16)
						| (DexUtil.readUnsignedByte(bytes, (off + 5)) << 8)
						| DexUtil.readUnsignedByte(bytes, off + 4);
			}
			result = (part1 & 0xffffffffL) | (((long) part2) << 32);
		}

		return result;
	}

	public static float decodeValueFloat(byte[] bytes, long off, int size) {
		int bits = 0;
		for (int i = size; i >= 0; i--) {
			bits |= ((int) bytes[(int) off + i] & 0xff) << (i * 8);
		}
		return Float.intBitsToFloat(bits);
	}

	public static double decodeValueDouble(byte[] bytes, long off, int size) {
		long bits = 0;
		for (int i = size; i >= 0; i--) {
			bits |= ((long) bytes[(int) off + i] & 0xff) << (i * 8);
		}
		return Double.longBitsToDouble(bits);
	}

	// decode an uint for VALUE_STRING, VALUE_TYPE, VALUE_FIELD, VALUE_METHOD,
	// VALUE_ENUM
	public static long decodeValueUnsignedInt(byte[] bytes, long off, int size) {
		int result = 0;
		if (size == 0) {
			result = DexUtil.readSignedByte(bytes, off);
		} else if (size == 1) {
			result = (DexUtil.readSignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		} else if (size == 2) {
			result = (DexUtil.readSignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		} else if (size == 3) {
			result = (DexUtil.readSignedByte(bytes, (off + 3)) << 24)
					| (DexUtil.readUnsignedByte(bytes, (off + 2)) << 16)
					| (DexUtil.readUnsignedByte(bytes, (off + 1)) << 8)
					| DexUtil.readUnsignedByte(bytes, off);
		}
		return result & 0xffffffffL;
	}

	// //not finished

	/*
	 * public static Vector decodeValueArray(byte[] bytes, long off){ long
	 * offset = off; Vector result = new Vector(); int type = -1; int length =
	 * -1;
	 * 
	 * int size = DexUtil.readUnsignedLeb128(bytes, offset); offset +=
	 * DexUtil.getLeb128Size(bytes, offset);
	 * 
	 * 
	 * for(int i=0;i<size;i++){
	 * 
	 * type = DexUtil.decodeType(bytes, offset); length =
	 * DexUtil.decodeSize(bytes, offset);
	 * 
	 * switch(type){
	 * 
	 * }
	 * 
	 * } }
	 */

	// /not finished
	public static Object decodeEncodedValue(byte[] bytes, long off, int type,
			int size) {
		long offset = off;
		// int type = DexUtil.decodeType(bytes, offset);
		// int size = DexUtil.decodeSize(bytes, offset);
		// offset++;
		switch (type) {
		case DexConsts.VALUE_BYTE:
			return new Integer(DexUtil.decodeValueByte(bytes, offset));
		case DexConsts.VALUE_SHORT:
			return new Integer(DexUtil.decodeValueShort(bytes, offset, size));
		case DexConsts.VALUE_CHAR:
			return new Integer(DexUtil.decodeValueChar(bytes, offset, size));
		case DexConsts.VALUE_INT:
			return new Integer(DexUtil.decodeValueInt(bytes, offset, size));
		case DexConsts.VALUE_LONG:
			return new Long(DexUtil.decodeValueLong(bytes, offset, size));
		case DexConsts.VALUE_FLOAT:
			return new Float(DexUtil.decodeValueFloat(bytes, offset, size));
		case DexConsts.VALUE_DOUBLE:
			return new Double(DexUtil.decodeValueDouble(bytes, offset, size));
		case DexConsts.VALUE_STRING:
			return new Long(DexUtil.decodeValueUnsignedInt(bytes, offset, size));
		case DexConsts.VALUE_TYPE:
			return new Long(DexUtil.decodeValueUnsignedInt(bytes, offset, size));
		case DexConsts.VALUE_FIELD:
			return new Long(DexUtil.decodeValueUnsignedInt(bytes, offset, size));
		case DexConsts.VALUE_METHOD:
			return new Long(DexUtil.decodeValueUnsignedInt(bytes, offset, size));
		case DexConsts.VALUE_ENUM:
			return new Long(DexUtil.decodeValueUnsignedInt(bytes, offset, size));
		case DexConsts.VALUE_ARRAY:
			// ///////////////
		case DexConsts.VALUE_ANNOTATION:
			// ///////////////
		case DexConsts.VALUE_NULL:
			return null;
		case DexConsts.VALUE_BOOLEAN:
			return ((size == 0) ? false : true);
		default:
			return null;
		}

	}

}