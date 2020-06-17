package mySoot;

import java.util.*;

import soot.*;
import soot.toolkits.scalar.*;
import soot.toolkits.graph.*;
import soot.util.*;
import soot.options.*;

public class MyReachingDefinition implements LocalDefs {
	Map<LocalUnitPair, List> localUnitPairToDefs;

	/**
	 * Computes the analysis given a UnitGraph computed from a method body. It
	 * is recommended that a ExceptionalUnitGraph (or similar) be provided for
	 * correct results in the case of exceptional control flow.
	 * 
	 * @param g
	 *            a graph on which to compute the analysis.
	 * 
	 * @see ExceptionalUnitGraph
	 */
	public MyReachingDefinition(UnitGraph g) {
		if (Options.v().time())
			Timers.v().defsTimer.start();

		if (Options.v().verbose())
			G.v().out.println("[" + g.getBody().getMethod().getName()
					+ "]     Constructing SimpleLocalDefs...");

		MyReachingDefinitionAnalysis analysis = new MyReachingDefinitionAnalysis(
				g);

		if (Options.v().time())
			Timers.v().defsPostTimer.start();

		// Build localUnitPairToDefs map
		{
			Iterator unitIt = g.iterator();

			localUnitPairToDefs = new HashMap<LocalUnitPair, List>(
					g.size() * 2 + 1, 0.7f);

			while (unitIt.hasNext()) {
				Unit s = (Unit) unitIt.next();

				Iterator boxIt = s.getUseBoxes().iterator();

				while (boxIt.hasNext()) {
					ValueBox box = (ValueBox) boxIt.next();

					if (box.getValue() instanceof Local) {
						Local l = (Local) box.getValue();
						LocalUnitPair pair = new LocalUnitPair(l, s);

						if (!localUnitPairToDefs.containsKey(pair)) {
							IntPair intPair = analysis.localToIntPair.get(l);

							ArrayPackedSet value = (ArrayPackedSet) analysis
									.getFlowBefore(s);

							List unitLocalDefs = value.toList(intPair.op1,
									intPair.op2);

							localUnitPairToDefs
									.put(pair, Collections
											.unmodifiableList(unitLocalDefs));
						}
					}
				}
			}
		}

		if (Options.v().time())
			Timers.v().defsPostTimer.end();

		if (Options.v().time())
			Timers.v().defsTimer.end();

		if (Options.v().verbose())
			G.v().out.println("[" + g.getBody().getMethod().getName()
					+ "]     SimpleLocalDefs finished.");
	}

	public boolean hasDefsAt(Local l, Unit s) {
		return localUnitPairToDefs.containsKey(new LocalUnitPair(l, s));
	}

	public List<Unit> getDefsOfAt(Local l, Unit s) {
		LocalUnitPair pair = new LocalUnitPair(l, s);

		List<Unit> toReturn = localUnitPairToDefs.get(pair);

		if (toReturn == null)
			throw new RuntimeException("Illegal LocalDefs query; local " + l
					+ " has no definition at " + s.toString());

		return toReturn;
	}

	/*
	 * public List getDefsOfBefore(Local l, Unit s) { IntPair pair = (IntPair)
	 * analysis.localToIntPair.get(l); FSet value = (FSet)
	 * analysis.getValueBeforeUnit(s);
	 * 
	 * List unitLocalDefs = value.toList(pair.op1, pair.op2);
	 * 
	 * return unitLocalDefs; }
	 */

	/*
	 * Object[] elements = ((FSet) analysis.getValueBeforeUnit(s)).toArray();
	 * List listOfDefs = new LinkedList();
	 * 
	 * // Extract those defs which correspond to this local { for(int i = 0; i <
	 * elements.length; i++) { DefinitionUnit d = (DefinitionUnit) elements[i];
	 * 
	 * if(d.getLeftOp() == l) listOfDefs.add(d); } }
	 * 
	 * // Convert the array so that it's of an appropriate form { Object[]
	 * objects = listOfDefs.toArray(); DefinitionUnit[] defs = new
	 * DefinitionUnit[objects.length];
	 * 
	 * for(int i = 0; i < defs.length; i++) defs[i] = (DefinitionUnit)
	 * objects[i];
	 * 
	 * return defs; }
	 * 
	 * } }
	 */

	/*
	 * public DefinitionUnit[] getDefsOfAfter(Local l, Unit s) { Object[]
	 * elements = ((FSet) analysis.getValueAfterUnit(s)).toArray(); List
	 * listOfDefs = new LinkedList();
	 * 
	 * // Extract those defs which correspond to this local { for(int i = 0; i <
	 * elements.length; i++) { DefinitionUnit d = (DefinitionUnit) elements[i];
	 * 
	 * if(d.getLeftOp() == l) listOfDefs.add(d); } }
	 * 
	 * // Convert the array so that it's of an appropriate form { Object[]
	 * objects = listOfDefs.toArray(); DefinitionUnit[] defs = new
	 * DefinitionUnit[objects.length];
	 * 
	 * for(int i = 0; i < defs.length; i++) defs[i] = (DefinitionUnit)
	 * objects[i];
	 * 
	 * return defs; } }
	 * 
	 * public DefinitionUnit[] getDefsBefore(Unit s) { Object[] elements =
	 * ((FSet) analysis.getValueBeforeUnit(s)).toArray(); DefinitionUnit[] defs
	 * = new DefinitionUnit[elements.length];
	 * 
	 * for(int i = 0; i < elements.length; i++) defs[i] = (DefinitionUnit)
	 * elements[i];
	 * 
	 * return defs; }
	 * 
	 * public DefinitionUnit[] getDefsAfter(Unit s) { Object[] elements =
	 * ((FSet) analysis.getValueAfterUnit(s)).toArray(); DefinitionUnit[] defs =
	 * new DefinitionUnit[elements.length];
	 * 
	 * for(int i = 0; i < elements.length; i++) defs[i] = (DefinitionUnit)
	 * elements[i];
	 * 
	 * return defs; }
	 */
}
