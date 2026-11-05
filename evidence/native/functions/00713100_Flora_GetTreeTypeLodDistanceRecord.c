/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX manager, one signed tree-type stack word, RET4. Returns
   manager+178+type*14hex; no bounds validation in this getter. Each selected record has
   near/far/inverseSpan/cullNear/cullFar from existing713440 config producer. */

int __thiscall Flora_GetTreeTypeLodDistanceRecord(void *this,int param_1)

{
  return (int)this + param_1 * 0x14 + 0x178;
}

