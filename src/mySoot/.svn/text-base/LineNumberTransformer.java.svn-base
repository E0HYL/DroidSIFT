package mySoot;

import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import soot.*;
import soot.jimple.Stmt;
import soot.tagkit.LineNumberTag;
import soot.tagkit.JimpleLineNumberTag;
import soot.tagkit.Tag;

public class LineNumberTransformer extends BodyTransformer{
			
	protected void internalTransform(Body body, String string, Map map) {
		
		System.out.println("Method:" + body.getMethod());
		
		try{
			PrintWriter pw = new PrintWriter("/tmp/pw");
			Printer.v().printTo(body, pw);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		Iterator iter = body.getUnits().iterator();
		
		while(iter.hasNext()){
			Stmt s = (Stmt)iter.next();
			List<Tag> tags = s.getTags();
			for(Tag tag : tags){
				System.out.println(tag.getName());
			}
			if(s.hasTag("JimpleLineNumberTag")){
				System.out.println("Ln[" + ((JimpleLineNumberTag)s.getTag("JimpleLineNumberTag")).getLineNumber() + "] " + s);
				//System.out.println("pts" + "[" + lhs + "]:" + pts);
			}else{
				System.out.println("No JimpleLineNumberTag!");
			}
		}
	}

}
