/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete13instructions/37ownedbytes. One stackDWORD product-key pointer, cdecl/plainRET.
   CatalogC8FA20 uses default-enabled1. Missing returnsAL1; found reads rawDWORD+90, logicalSHR8
   then AND AL1, testing partition flag100hex. Present upperEAX retains shifted flag bits and is not
   a full-width Boolean; B471C0 consumes onlyTEST AL. Graph consumer dispatches section to
   owner+5C(slot2). No collision/rendering visibility inference; existing stored types preserved. */

uint __cdecl WallProduct_BlocksPlacementOrMissing(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,param_1,'\x01');
  if (iVar1 == 0) {
    return 1;
  }
  return *(uint *)(iVar1 + 0x90) >> 8 & 0xffff01;
}

