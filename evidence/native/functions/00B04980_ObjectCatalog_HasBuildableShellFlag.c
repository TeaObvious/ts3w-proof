/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Resolve object catalog and test bit26 of catalog+98. Missing
   catalog yields zero. Low byte carries predicate result; catalog +98 is distinct from effective
   build category +D0. */

uint __cdecl ObjectCatalog_HasBuildableShellFlag(int param_1)

{
  int iVar1;
  
  if (param_1 != 0) {
    iVar1 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(param_1 + 0x18));
    if (iVar1 != 0) {
      return *(uint *)(iVar1 + 0x98) >> 0x1a & 0xffffff01;
    }
  }
  return 0;
}

