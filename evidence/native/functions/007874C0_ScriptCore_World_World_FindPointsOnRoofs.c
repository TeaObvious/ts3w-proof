/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163500 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindPointsOnRoofs [assembly=ScriptCore token=0x060007A4; lotId:
   System.UInt64, requestCount: System.UInt32, posArray: System.Single[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_World__World_FindPointsOnRoofs(int param_1,int param_2,uint param_3,undefined4 param_4)

{
  longlong lVar1;
  bool bVar2;
  uint in_EAX;
  int *piVar3;
  void *allocation;
  undefined4 extraout_EAX;
  uint uStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar3 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if (piVar3 != (int *)0x0) {
      lVar1 = (ulonglong)(param_3 * 3) * 4;
      uStack_4 = 0;
      allocation = (void *)FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1,
                                        "World/Placement",0);
      bVar2 = FUN_00b0b010(piVar3,param_3,&uStack_4,(int)allocation);
      if (bVar2) {
        piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
        (**(code **)(*piVar3 + 0xa8))(param_4,allocation,0,uStack_4 * 3);
      }
      Memory_FreeIfNonNull(allocation);
      return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
    }
  }
  return in_EAX & 0xffffff00;
}

