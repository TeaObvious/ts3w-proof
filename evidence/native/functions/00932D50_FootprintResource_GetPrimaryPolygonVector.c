/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). ECX resource, EAX
   vector pointer. Unsigned CMP [ECX+0x58],5 / JNC: version >=5 selects +0x38; older versions select
   +0x28. Primary is an analyst-neutral array label, not a recovered original class name. */

int __fastcall FootprintResource_GetPrimaryPolygonVector(int param_1)

{
  int iVar1;
  
  iVar1 = param_1 + 0x38;
  if (*(uint *)(param_1 + 0x58) < 5) {
    iVar1 = param_1 + 0x28;
  }
  return iVar1;
}

