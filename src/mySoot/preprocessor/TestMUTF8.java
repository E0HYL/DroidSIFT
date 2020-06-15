package mySoot.preprocessor;

public class TestMUTF8 {
	public static void main(String args[]){
		byte[] input = {(byte)0xf8, (byte)0x70, (byte)0x30, (byte)0xe3};
		int output = DexUtil.readSignedLeb128(input, 0);
		System.out.println(Integer.toHexString(output));
	}
}
