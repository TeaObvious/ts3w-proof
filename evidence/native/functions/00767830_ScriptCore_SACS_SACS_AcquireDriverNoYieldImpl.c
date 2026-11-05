/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161de8 (TS3W.exe PC1.67).
   ScriptCore.SACS::SACS_AcquireDriverNoYieldImpl [assembly=ScriptCore token=0x06000D5C;
   hostScriptObjectId: System.UInt64, instanceId: System.UInt64, groupId: System.UInt32, typeId:
   System.UInt32, priority: System.Int32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 SACS migration contract): Registered original no-yield acquisition:
   validates host object/component, resource manager virtual+0C synchronous acquisition
   then00767370; selected errors FFFFFFF7/FFFFFFF8 distinguish failures. Physical64-bit host/key and
   signed priority ABI must follow original pushes, not inferred collapsed C. No project cache
   budgets or prewarm policy in this wrapper. */

undefined4 __cdecl
ScriptCore.SACS::SACS_AcquireDriverNoYieldImpl
          (int param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,int *param_5,
          undefined4 *param_6)

{
  int iVar1;
  char cVar2;
  void *pvVar3;
  undefined4 *this;
  int *piVar4;
  undefined4 uVar5;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 *local_8;
  int *local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_6;
  local_4 = param_5;
  pvVar3 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1));
  if (this == (undefined4 *)0x0) {
    return 0xfffffff7;
  }
  piVar4 = this + 1;
  LOCK();
  *piVar4 = *piVar4 + 1;
  UNLOCK();
  param_6 = this;
  pvVar3 = Object_GetComponentByMask(this,DAT_011ea0f0);
  if (pvVar3 == (void *)0x0) {
    LOCK();
    iVar1 = *piVar4;
    *piVar4 = *piVar4 + -1;
    UNLOCK();
    if (iVar1 == 1) {
      LOCK();
      *piVar4 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
    return 0xfffffff8;
  }
  piVar4 = (int *)FUN_004afe80();
  cVar2 = (**(code **)(*piVar4 + 0xc))(&local_10,&param_5,0,0,0,0);
  if (cVar2 != '\0') {
    uVar5 = SACS_CreateDriverForComponent_767370(pvVar3,local_4,param_1,'\x01');
    FUN_007462e0((int *)&stack0x00000000);
    return uVar5;
  }
  FUN_007462e0((int *)&stack0x00000000);
  return 0xfffffff7;
}

