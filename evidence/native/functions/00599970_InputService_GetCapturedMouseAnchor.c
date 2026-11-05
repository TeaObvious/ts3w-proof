/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Under input-service criticalsection, copies logical captured anchor
   at+48/+4C and returns capture-active byte+60; absent service returnsfalse. */

undefined1 __cdecl InputService_GetCapturedMouseAnchor(undefined4 *param_1)

{
  LPCRITICAL_SECTION this;
  undefined1 uVar1;
  int iVar2;

  iVar2 = DAT_011cf2c0;
  if (DAT_011cf2c0 != 0) {
    this = (LPCRITICAL_SECTION)(DAT_011cf2c0 + 0x18);
    FUN_004e1c00(this,(uint *)&DAT_00fda6dc);
    *param_1 = *(undefined4 *)(iVar2 + 0x48);
    param_1[1] = *(undefined4 *)(iVar2 + 0x4c);
    uVar1 = *(undefined1 *)(iVar2 + 0x60);
    FUN_004e1cc0(this);
    return uVar1;
  }
  return 0;
}

