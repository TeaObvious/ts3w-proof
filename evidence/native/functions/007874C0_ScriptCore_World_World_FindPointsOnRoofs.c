/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163500 (original PC 1.67 TS3W.exe).
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
  int iVar4;
  undefined4 uVar5;
  uint uStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar3 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar3 != (int *)0x0) {
      lVar1 = (ulonglong)(param_3 * 3) * 4;
      uStack_4 = 0;
      iVar4 = FUN_004e4500(-(uint)((int)((ulonglong)lVar1 >> 0x20) != 0) | (uint)lVar1,
                           "World/Placement",0);
      bVar2 = FUN_00b0b010(piVar3,param_3,&uStack_4,iVar4);
      if (bVar2) {
        piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
        (**(code **)(*piVar3 + 0xa8))(param_4,iVar4,0,uStack_4 * 3);
      }
      uVar5 = FUN_004e44e0(iVar4);
      return CONCAT31((int3)((uint)uVar5 >> 8),1);
    }
  }
  return in_EAX & 0xffffff00;
}

