package mySoot.preprocessor;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

import java.io.*;

public class DexTest {

	public static void main(String[] args) throws IOException,
			FileNotFoundException {

		String FILENAME = "/home/android/mydroid/mytest/test.dex";
		DataOutputStream os = new DataOutputStream(new FileOutputStream(
				FILENAME));

		os.writeInt(-1);
		os.writeInt(1);
		os.writeByte(255);
		os.writeByte(255);
		os.writeByte(127);
		os.writeByte(127);

		// write ubyte[]
		os.writeByte(0x64);
		os.writeByte(0x65);
		os.writeByte(0x78);
		os.writeByte(0x0a);
		os.writeByte(0x30);
		os.writeByte(0x33);
		os.writeByte(0x35);
		os.writeByte(0x00);

		// write ushort
		os.writeShort(-1);
		os.writeShort(1);

		// write leb128 and read as sleb and uleb respectively
		os.writeByte(0x80);
		os.writeByte(0x7f);

		os.writeByte(0x80);
		os.writeByte(0x7f);

		// write MUTF-8
		String testStr = "&*^123test string";
		os.writeUTF(testStr);

		char[] b = { '1', '2', '3', 'a', 'b', 'c', '\0' };
		String a = new String(b);
		System.out.println(a);
		os.writeUTF(a);

		os.close();
		// System.out.println("Wrote" + i + ", " + m + ", " + m + ", " +
		// " to file" + FILENAME);

		// //////////////////////////////////////////////////////////////////////////////////////////////

		File file = new File("/home/android/mydroid/mytest/test.dex");
		FileInputStream is = new FileInputStream(file);

		long length = file.length();
		if (length > Integer.MAX_VALUE) {
			throw new IOException("File is too big");
		}

		byte[] bytes = new byte[(int) length];

		int offset = 0;
		int numRead = 0;
		// try{
		// numRead = is.read(bytes, offset, length-offset)
		// }
		while (offset < bytes.length
				&& (numRead = is.read(bytes, offset, (int) (length - offset))) >= 0) {
			offset += numRead;
		}

		if (offset < bytes.length) {
			throw new IOException("File was not completely read: "
					+ file.getName());
		}

		is.close();

		int off = 0;

		System.out.println("unsigned int -1 = "
				+ DexUtil.readUnsignedInt(bytes, off, false));
		off += 4;
		System.out.println("unsigned int 1 = "
				+ DexUtil.readUnsignedInt(bytes, off, false));
		off += 4;
		System.out.println("unsigned byte 255 = "
				+ DexUtil.readUnsignedByte(bytes, off));
		off++;
		System.out.println("signed byte 255 = "
				+ DexUtil.readSignedByte(bytes, off));
		off++;
		System.out.println("unsigned byte 127 = "
				+ DexUtil.readUnsignedByte(bytes, off));
		off++;
		System.out.println("signed byte 127 = "
				+ DexUtil.readSignedByte(bytes, off));
		off++;
		System.out.println("string \"dex\\n035\\0\"= "
				+ DexUtil.readString(bytes, off, 8));
		off += 8;
		System.out.println("unsigned short -1 = "
				+ DexUtil.readUnsignedShort(bytes, off, false));
		off += 2;
		System.out.println("unsigned short 1 = "
				+ DexUtil.readUnsignedShort(bytes, off, false));
		off += 2;

		System.out.println("signed leb128 0x80 0x7f = "
				+ DexUtil.readSignedLeb128(bytes, off));
		System.out.println("size of 0x80 0x7f = "
				+ DexUtil.getLeb128Size(bytes, off));

		off += DexUtil.getLeb128Size(bytes, off);

		System.out.println("unsigned leb128 0x80 0x7f = "
				+ DexUtil.readUnsignedLeb128(bytes, off));
		off += DexUtil.getLeb128Size(bytes, off);

		System.out.println("size of \"test string\" = " + testStr.length());
		System.out.println("mutf8 \"test string\" = "
				+ DexUtil.readUTF(bytes, off, testStr.length()));
		System.out.println("size of utf of test string "
				+ DexUtil.getUTFSize(bytes, off));
		off += DexUtil.getUTFSize(bytes, off);

		/*
		 * System.out.println(bytes[off+0]); System.out.println(bytes[off+1]);
		 * System.out.println(bytes[off+2]); System.out.println(bytes[off+3]);
		 * System.out.println(bytes[off+4]); System.out.println(bytes[off+5]);
		 * System.out.println(bytes[off+6]); System.out.println(bytes[off+7]);
		 * System.out.println(bytes[off+8]); System.out.println(bytes[off+9]);
		 */

		System.out.println("mutf8 a = "
				+ DexUtil.readUTF(bytes, off, a.length()));
		off += DexUtil.getUTFSize(bytes, off);
		// System.out.println(a.length());
	}

}
