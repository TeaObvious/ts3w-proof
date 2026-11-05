/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

/* Retained historical annotation 2, previous C line 7; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_GetRoofSlopeAngleImpl at
   0x00787480, bytes e91bb33700. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_GetRoofSlopeAngleImpl at
   0x00787480, bytes e91bb33700. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

undefined4 DirectTargetOf_World_World_GetRoofSlopeAngleImpl(void)

{
  void *this;
  int *piVar1;
  float10 fVar2;
  undefined8 uVar3;
  uint *visitCounter;
  undefined4 local_10;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    visitCounter = (uint *)0x0;
    uVar3 = FUN_00c5f560((int)DAT_011edbc4);
    piVar1 = WorldObjects_FindLotByGuid
                       (this,(uint)uVar3,(uint)((ulonglong)uVar3 >> 0x20),visitCounter);
    if ((piVar1 != (int *)0x0) && (piVar1[0xab] != 0)) {
      fVar2 = FUN_00b94550(piVar1[0xab]);
      fVar2 = (float10)fpatan(fVar2 + fVar2,(float10)1);
      fVar2 = FUN_00b02630((float)(fVar2 * (float10)57.29578));
      local_10 = (undefined4)(longlong)ROUND((float)fVar2);
      return local_10;
    }
  }
  return 0x2d;
}

