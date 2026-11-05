/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01163c48 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetRoofSlopeAngleImpl [assembly=ScriptCore token=0x06000885; ;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_GetRoofSlopeAngleImpl(void)

{
  void *this;
  int *piVar1;
  float10 fVar2;
  undefined8 uVar3;
  uint *visitCounter;
  undefined4 uStack_10;
  
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
      uStack_10 = (undefined4)(longlong)ROUND((float)fVar2);
      return uStack_10;
    }
  }
  return 0x2d;
}

