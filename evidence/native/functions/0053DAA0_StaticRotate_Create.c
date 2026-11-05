/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0053daa0. Physical factory reads two stack words/RET8, allocates0x1B0
   aligned16 with native source-name metadata, returns0 on allocation failure or calls53D9E0. No
   caller-owned object or CLR allocation contract inferred. */

undefined4 * StaticRotate_Create(undefined4 param_1,int *param_2)

{
  uint *puVar1;
  undefined4 *puVar2;
  
  puVar1 = FUN_005050b0(0x1b0,0x10,"UI/UTFWin/EA::UTFWinControls::StaticRotateEffect",param_2);
  if (puVar1 != (uint *)0x0) {
    puVar2 = StaticRotate_Initialize(puVar1);
    return puVar2;
  }
  return (undefined4 *)0x0;
}

