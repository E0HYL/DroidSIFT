package mySoot.preprocessor;

//import com.android.dx.decoder.*;

import java.io.*;

public class DexTestInsns {

	public static void main(String[] args) throws IOException,
			FileNotFoundException {

		// File file = new File("/home/android/mydroid/mytest/Test3.dex");
		File file = new File(args[0]);
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

		DexFile df = new DexFile();
		df.parse(bytes);
	}
}