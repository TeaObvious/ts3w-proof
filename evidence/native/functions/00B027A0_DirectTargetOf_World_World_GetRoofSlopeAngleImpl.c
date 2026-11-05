/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_GetRoofSlopeAngleImpl at
   0x00787480, bytes e91bb33700. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined4 DirectTargetOf_World_World_GetRoofSlopeAngleImpl(void)

{
  void *this;
  float10 fVar1;
  undefined8 uVar2;
  int *piVar3;
  undefined4 local_10;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar3 = (int *)0x0;
    uVar2 = FUN_00c5f560((int)DAT_011edbc4);
    piVar3 = FUN_00c62810(this,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),piVar3);
    if ((piVar3 != (int *)0x0) && (piVar3[0xab] != 0)) {
      fVar1 = FUN_00b94550(piVar3[0xab]);
      fVar1 = (float10)fpatan(fVar1 + fVar1,(float10)1);
      fVar1 = FUN_00b02630((float)(fVar1 * (float10)_DAT_0106b7b0));
      local_10 = (undefined4)(longlong)ROUND((float)fVar1);
      return local_10;
    }
  }
  return 0x2d;
}

