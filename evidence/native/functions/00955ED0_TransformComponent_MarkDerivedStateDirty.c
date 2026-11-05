/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Marks ownerobject with registered updateflag011ea150,
   ORsTransform+34 bit2. Native SetPosition/Rotation fallback isbeforemutation; SetTransform
   fallbackisafter. */

void __thiscall TransformComponent_MarkDerivedStateDirty(void *this)

{
  Object_MarkUpdateFlags(*(void **)((int)this + 4),DAT_011ea150);
  *(uint *)((int)this + 0x34) = *(uint *)((int)this + 0x34) | 2;
  return;
}

