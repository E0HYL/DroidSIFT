package mySoot;

import java.io.File;
import java.io.PrintWriter;
import java.util.*;

import soot.*;
import soot.jimple.*;
import soot.toolkits.graph.ExceptionalUnitGraph;

public class APISubGraphTransformer extends BodyTransformer{
	
	protected void internalTransform(Body body, String string, Map map) {
		
		ExceptionalUnitGraph eug = new ExceptionalUnitGraph(body);       
        MyReachingDefinition mrd = new MyReachingDefinition(eug);
        
		
		APIGraph apiSubGraph = new APIGraph(eug, mrd, null);
		apiSubGraph.buildAPIGraph();
		apiSubGraph.dumpAPIGraphEdgeList();
	}

}
