/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete13instructions/37ownedbytes. One stackDWORD product-key pointer, cdecl/plainRET.
   CatalogC8FA20 uses default-enabled1. Missing returnsAL1; found reads rawDWORD+90, logicalSHR10
   then AND AL1, testing partition flag400hex. Present upperEAX retains shifted flag bits and is not
   a full-width Boolean; B471C0 consumes onlyTEST AL. Graph consumer dispatches section to
   owner+54(slot0). Distinct from the BearsLoad200 and BlocksPlacement100 flags; existing stored
   types preserved. */

uint __cdecl WallProduct_BlocksLightOrMissing(uint *param_1)

{
  int iVar1;
  
  iVar1 = FUN_00c8fa20(DAT_011ee034,param_1,'\x01');
  if (iVar1 == 0) {
    return 1;
  }
  return CONCAT31((uint3)(*(uint *)(iVar1 + 0x90) >> 0x12),(char)(*(uint *)(iVar1 + 0x90) >> 10)) &
         0xffffff01;
}

