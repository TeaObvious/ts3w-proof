/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. Actual static dispatch pointer atFFC72C enters this95-byte
   body. On manager virtual0 failure call virtual4 and ALfalse. Success calls7B87D0(1), sets
   horizontal angles(40,80) and vertical(70,50), tail-jumps to separate715C80 factory registration.
   Entry recovered from the original dispatch reference and exact decoded instructions; body
   excludes neighboring functions and the existing715C80 tail target. Analyst name, not recovered
   symbols; no original bytes patched. */

uint Flora_InitializeServiceAndBillboardFadeAngles(void)

{
  char cVar1;
  uint uVar2;
  
  cVar1 = (*(code *)**(undefined4 **)PTR_DAT_0115c488)();
  if (cVar1 == '\0') {
    uVar2 = (**(code **)(*(int *)PTR_DAT_0115c488 + 4))();
    return uVar2 & 0xffffff00;
  }
  FUN_007b87d0(1);
  SpeedTree_SetHorizontalBillboardFadeAngles(DAT_00fbc938,_DAT_00fbe4c4);
  SpeedTree_SetVerticalBillboardFadeAngles(_DAT_00fbefdc,_DAT_00fee3a8);
  uVar2 = FUN_00715c80();
  return uVar2;
}

