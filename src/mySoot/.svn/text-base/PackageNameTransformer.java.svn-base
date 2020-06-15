package mySoot;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import soot.Scene;
import soot.SceneTransformer;
import soot.SootClass;

import soot.util.Chain;

public class PackageNameTransformer extends SceneTransformer {

	private List<String> packages;

	public PackageNameTransformer() {
		packages = new ArrayList<String>();
	}

	@Override
	protected void internalTransform(String string, Map map) {
		
		// System.out.println(cg);
		Chain<SootClass> classes = Scene.v().getClasses();
		Iterator<SootClass> classes_iter = classes.iterator();
		while (classes_iter.hasNext()) {
			SootClass soot_class = classes_iter.next();

			if (soot_class.isApplicationClass() == false) {
				continue;
			}

			String packageName = soot_class.getPackageName();
			if(!packages.contains(packageName)){
				packages.add(packageName);
			}
		}
	}

	public List<String> getPackageNames() {
		return packages;
	}
}

