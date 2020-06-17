package mySoot;

import java.util.*;

import soot.*;
import soot.toolkits.scalar.*;
import soot.toolkits.graph.*;
//import soot.util.*;
import soot.options.*;

public class MyFlowAnalysis extends BackwardFlowAnalysis{
	
	FlowSet emptySet;
    Map<Unit, FlowSet> unitToGenerateSet;
    Map<Unit, FlowSet> unitToKillSet;

    MyFlowAnalysis(UnitGraph g)
    {
        super(g);

        if(Options.v().time())
            Timers.v().liveSetupTimer.start();

        emptySet = new ArraySparseSet();

        // Create kill sets.
        {
            unitToKillSet = new HashMap<Unit, FlowSet>(g.size() * 2 + 1, 0.7f);

            Iterator unitIt = g.iterator();

            while(unitIt.hasNext())
            {
                Unit s = (Unit) unitIt.next();

                FlowSet killSet = emptySet.clone();

                Iterator boxIt = s.getDefBoxes().iterator();

                while(boxIt.hasNext())
                {
                    ValueBox box = (ValueBox) boxIt.next();

                    if(box.getValue() instanceof Local)
                        killSet.add(box.getValue(), killSet);
                }

                    unitToKillSet.put(s, killSet);
            }
        }

        // Create generate sets
        {
            unitToGenerateSet = new HashMap<Unit, FlowSet>(g.size() * 2 + 1, 0.7f);

            Iterator unitIt = g.iterator();

            while(unitIt.hasNext())
            {
                Unit s = (Unit) unitIt.next();

                FlowSet genSet = emptySet.clone();

                Iterator boxIt = s.getUseBoxes().iterator();

                while(boxIt.hasNext())
                {
                    ValueBox box = (ValueBox) boxIt.next();

                    if(box.getValue() instanceof Local)
                        genSet.add(box.getValue(), genSet);
                }

                unitToGenerateSet.put(s, genSet);
            }
        }

        if(Options.v().time())
            Timers.v().liveSetupTimer.end();

        if(Options.v().time())
            Timers.v().liveAnalysisTimer.start();

        doAnalysis();
        
        if(Options.v().time())
            Timers.v().liveAnalysisTimer.end();

    }

    protected Object newInitialFlow()
    {
        return emptySet.clone();
    }

    protected Object entryInitialFlow()
    {
        return emptySet.clone();
    }
        
    protected void flowThrough(Object inValue, Object unit, Object outValue)
    {
        FlowSet in = (FlowSet) inValue, out = (FlowSet) outValue;

        // Perform kill
            in.difference(unitToKillSet.get(unit), out);

        // Perform generation
            out.union(unitToGenerateSet.get(unit), out);
    }

    protected void merge(Object in1, Object in2, Object out)
    {
        FlowSet inSet1 = (FlowSet) in1,
            inSet2 = (FlowSet) in2;

        FlowSet outSet = (FlowSet) out;

        inSet1.union(inSet2, outSet);
    }
    
    protected void copy(Object source, Object dest)
    {
        FlowSet sourceSet = (FlowSet) source,
            destSet = (FlowSet) dest;
            
        sourceSet.copy(destSet);
    }
}
