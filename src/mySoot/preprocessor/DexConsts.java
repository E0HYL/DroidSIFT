package mySoot.preprocessor;

public interface DexConsts {

	public static final String DEX_MAGIC = "dex\n";
	public static final String DEX_MAGIC_VERS = "035\0";

	// public static final String DEX_MAGIC_VERS = "035\0";

	/* same, but for optimized DEX header */
	public static final String DEX_OPT_MAGIC = "dey\n";
	public static final String DEX_OPT_MAGIC_VERS = "036\0";

	public static final String DEX_DEP_MAGIC = "deps";

	/*
	 * 160-bit SHA-1 digest.
	 */
	public static final int kSHA1DigestLen = 20;
	public static final int kSHA1DigestOutputLen = kSHA1DigestLen * 2 + 1;

	/* general constants */
	public static final int kDexEndianConstant = 0x12345678; /*
															 * the endianness
															 * indicator
															 */
	public static final int kDexNoIndex = 0xffffffff; /* not a valid index value */

	/*
	 * access flags and masks; the "standard" ones are all <= 0x4000
	 * 
	 * Note: There are related declarations in vm/oo/Object.h in the ClassFlags
	 * enum.
	 */
	public static final int ACC_PUBLIC = 0x00000001; // class, field, method, ic
	public static final int ACC_PRIVATE = 0x00000002; // field, method, ic
	public static final int ACC_PROTECTED = 0x00000004; // field, method, ic
	public static final int ACC_STATIC = 0x00000008; // field, method, ic
	public static final int ACC_FINAL = 0x00000010; // class, field, method, ic
	public static final int ACC_SYNCHRONIZED = 0x00000020; // method (only
															// allowed on
															// natives)
	public static final int ACC_SUPER = 0x00000020; // class (not used in
													// Dalvik)
	public static final int ACC_VOLATILE = 0x00000040; // field
	public static final int ACC_BRIDGE = 0x00000040; // method (1.5)
	public static final int ACC_TRANSIENT = 0x00000080; // field
	public static final int ACC_VARARGS = 0x00000080; // method (1.5)
	public static final int ACC_NATIVE = 0x00000100; // method
	public static final int ACC_INTERFACE = 0x00000200; // class, ic
	public static final int ACC_ABSTRACT = 0x00000400; // class, method, ic
	public static final int ACC_STRICT = 0x00000800; // method
	public static final int ACC_SYNTHETIC = 0x00001000; // field, method, ic
	public static final int ACC_ANNOTATION = 0x00002000; // class, ic (1.5)
	public static final int ACC_ENUM = 0x00004000; // class, field, ic (1.5)
	public static final int ACC_CONSTRUCTOR = 0x00010000; // method (Dalvik
															// only)
	public static final int ACC_DECLARED_SYNCHRONIZED = 0x00020000; // method
																	// (Dalvik
																	// only)
	public static final int ACC_CLASS_MASK = ACC_PUBLIC | ACC_FINAL
			| ACC_INTERFACE | ACC_ABSTRACT | ACC_SYNTHETIC | ACC_ANNOTATION
			| ACC_ENUM;
	public static final int ACC_INNER_CLASS_MASK = ACC_CLASS_MASK | ACC_PRIVATE
			| ACC_PROTECTED | ACC_STATIC;
	public static final int ACC_FIELD_MASK = ACC_PUBLIC | ACC_PRIVATE
			| ACC_PROTECTED | ACC_STATIC | ACC_FINAL | ACC_VOLATILE
			| ACC_TRANSIENT | ACC_SYNTHETIC | ACC_ENUM;
	public static final int ACC_METHOD_MASK = ACC_PUBLIC | ACC_PRIVATE
			| ACC_PROTECTED | ACC_STATIC | ACC_FINAL | ACC_SYNCHRONIZED
			| ACC_BRIDGE | ACC_VARARGS | ACC_NATIVE | ACC_ABSTRACT | ACC_STRICT
			| ACC_SYNTHETIC | ACC_CONSTRUCTOR | ACC_DECLARED_SYNCHRONIZED;

	/* annotation constants */
	public static final int kDexVisibilityBuild = 0x00; /* annotation visibility */
	public static final int kDexVisibilityRuntime = 0x01;
	public static final int kDexVisibilitySystem = 0x02;

	public static final int kDexAnnotationByte = 0x00;
	public static final int kDexAnnotationShort = 0x02;
	public static final int kDexAnnotationChar = 0x03;
	public static final int kDexAnnotationInt = 0x04;
	public static final int kDexAnnotationLong = 0x06;
	public static final int kDexAnnotationFloat = 0x10;
	public static final int kDexAnnotationDouble = 0x11;
	public static final int kDexAnnotationString = 0x17;
	public static final int kDexAnnotationType = 0x18;
	public static final int kDexAnnotationField = 0x19;
	public static final int kDexAnnotationMethod = 0x1a;
	public static final int kDexAnnotationEnum = 0x1b;
	public static final int kDexAnnotationArray = 0x1c;
	public static final int kDexAnnotationAnnotation = 0x1d;
	public static final int kDexAnnotationNull = 0x1e;
	public static final int kDexAnnotationBoolean = 0x1f;

	public static final int kDexAnnotationValueTypeMask = 0x1f; /* low 5 bits */
	public static final int kDexAnnotationValueArgShift = 5;

	/* map item type codes */
	public static final int kDexTypeHeaderItem = 0x0000;
	public static final int kDexTypeStringIdItem = 0x0001;
	public static final int kDexTypeTypeIdItem = 0x0002;
	public static final int kDexTypeProtoIdItem = 0x0003;
	public static final int kDexTypeFieldIdItem = 0x0004;
	public static final int kDexTypeMethodIdItem = 0x0005;
	public static final int kDexTypeClassDefItem = 0x0006;
	public static final int kDexTypeMapList = 0x1000;
	public static final int kDexTypeTypeList = 0x1001;
	public static final int kDexTypeAnnotationSetRefList = 0x1002;
	public static final int kDexTypeAnnotationSetItem = 0x1003;
	public static final int kDexTypeClassDataItem = 0x2000;
	public static final int kDexTypeCodeItem = 0x2001;
	public static final int kDexTypeStringDataItem = 0x2002;
	public static final int kDexTypeDebugInfoItem = 0x2003;
	public static final int kDexTypeAnnotationItem = 0x2004;
	public static final int kDexTypeEncodedArrayItem = 0x2005;
	public static final int kDexTypeAnnotationsDirectoryItem = 0x2006;

	/* auxillary data section chunk codes */
	public static final int kDexChunkClassLookup = 0x434c4b50; /* CLKP */
	public static final int kDexChunkRegisterMaps = 0x524d4150; /* RMAP */

	public static final int kDexChunkEnd = 0x41454e44; /* AEND */

	/* debug info opcodes and constants */
	public static final int DBG_END_SEQUENCE = 0x00;
	public static final int DBG_ADVANCE_PC = 0x01;
	public static final int DBG_ADVANCE_LINE = 0x02;
	public static final int DBG_START_LOCAL = 0x03;
	public static final int DBG_START_LOCAL_EXTENDED = 0x04;
	public static final int DBG_END_LOCAL = 0x05;
	public static final int DBG_RESTART_LOCAL = 0x06;
	public static final int DBG_SET_PROLOGUE_END = 0x07;
	public static final int DBG_SET_EPILOGUE_BEGIN = 0x08;
	public static final int DBG_SET_FILE = 0x09;
	public static final int DBG_FIRST_SPECIAL = 0x0a;
	public static final int DBG_LINE_BASE = -4;
	public static final int DBG_LINE_RANGE = 15;

	public static final int DEX_FLAG_VERIFIED = 1; // (1) /* tried to verify all
													// classes */
	public static final int DEX_OPT_FLAG_BIG = 2; // (1<<1) /* swapped to
													// big-endian */
	public static final int DEX_OPT_FLAG_FIELDS = 4; // (1<<2) /* field access
														// optimized */
	public static final int DEX_OPT_FLAG_INVOCATIONS = 8; // (1<<3) /* method
															// calls optimized
															// */

	public static final int DEX_INTERFACE_CACHE_SIZE = 128; /*
															 * must be power of
															 * 2
															 */

	// Encoded Value Formats
	public static final int VALUE_BYTE = 0x00;
	public static final int VALUE_SHORT = 0x02;
	public static final int VALUE_CHAR = 0x03;
	public static final int VALUE_INT = 0x04;
	public static final int VALUE_LONG = 0x06;
	public static final int VALUE_FLOAT = 0x10;
	public static final int VALUE_DOUBLE = 0x11;
	public static final int VALUE_STRING = 0x17;
	public static final int VALUE_TYPE = 0x18;
	public static final int VALUE_FIELD = 0x19;
	public static final int VALUE_METHOD = 0x1a;
	public static final int VALUE_ENUM = 0x1b;
	public static final int VALUE_ARRAY = 0x1c;
	public static final int VALUE_ANNOTATION = 0x1d;
	public static final int VALUE_NULL = 0x1e;
	public static final int VALUE_BOOLEAN = 0x1f;

}