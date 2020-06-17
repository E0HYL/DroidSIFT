package mySoot.preprocessor;

//import java.util.Vector;
import java.util.*;

//import com.android.dx.decoder.*;
//import com.android.dx.util.*;

public class DexClassDefs {

	private Vector<DexClassDefItem> classDefs;

	public DexClassDefs() {
		this.classDefs = new Vector<DexClassDefItem>();
	}

	public Vector<DexClassDefItem> getClassDefs() {
		return this.classDefs;
	}

	public long parse(byte[] bytes, long off, long size) {
		long offset = off;
		for (long i = 0; i < size; i++) {
			DexClassDefItem cdi = new DexClassDefItem();
			offset = cdi.parse(bytes, offset);
			classDefs.add(cdi);
		}
		return offset;
	}

}