/* Original PC1.67 selected managed members, actual ILSpy11.1 output.
   Omitted siblings are outside this selection. Repeated usings, selected getter body fragments
   and constructor base..ctor() text are tool renderings, not a compilable replacement class.
   Complete typed original CIL is paired in ScriptObject.il.txt; the canonical managed README owns assembly provenance. */

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.ScriptObject::Init, MethodDef 0x060008db, RVA0x0002888E, 2 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Returns the original ScriptExecuteType.None constant (raw CIL immediate1). The enum name is resolved by the actual original SimIFace reference, not an assumption that None is zero. */
using Sims3.SimIFace;

public virtual ScriptExecuteType Init(bool postLoad)
{
	return ScriptExecuteType.None;
}

/* Analyst: original PC1.67 Sims3GameplaySystems.dll, Sims3.Gameplay.Abstracts.ScriptObject::.ctor, MethodDef 0x060008ea, RVA0x00028956, 7 original CIL bytes.
   Actual complete ILSpy11.1 selected-member rendering; original assembly identity is central.
   Complete original base constructor calls System.Object constructor; no GameObject field preparation occurs here. */
protected ScriptObject()
{
}
