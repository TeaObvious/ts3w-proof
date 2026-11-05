/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161de0 (TS3W.exe PC1.67).
   ScriptCore.SACS::SACS_AcquireDriverImpl [assembly=ScriptCore token=0x06000D5B;
   hostScriptObjectId: System.UInt64, instanceId: System.UInt64, groupId: System.UInt32, typeId:
   System.UInt32, priority: System.Int32, callback: System.Delegate; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note (PC1.67 SACS migration contract): Registered original acquire: object/component
   validation; manager cached lookup via+58 and async request route when not immediately cached;
   selected cached graph passed to00767370. Physical GUID/key/priority words take precedence over
   inferred parameter aliases across indirect calls. Native shared-resource boundary does not verify
   current LRU512/32MiB/233-byte estimate or mount generations. */

undefined4 __cdecl
ScriptCore.SACS::SACS_AcquireDriverImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,int param_4,int *param_5,
          int param_6,undefined4 param_7)

{
  int *piVar1;
  int iVar2;
  char cVar3;
  void *pvVar4;
  int *this;
  int *piVar5;
  undefined4 uVar6;
  undefined4 local_10;
  int local_c;
  int local_8;
  int *local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_6;
  local_4 = param_5;
  pvVar4 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(param_2,param_1));
  if (this == (int *)0x0) {
    return 0xfffffff7;
  }
  piVar1 = this + 1;
  LOCK();
  *piVar1 = *piVar1 + 1;
  UNLOCK();
  param_5 = this;
  pvVar4 = Object_GetComponentByMask(this,DAT_011ea0f0);
  if (pvVar4 == (void *)0x0) {
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
    return 0xfffffff8;
  }
  piVar5 = (int *)FUN_004afe80();
  piVar5 = (int *)(**(code **)(*piVar5 + 0x58))(&local_10);
  if (piVar5 != (int *)0x0) {
    cVar3 = (**(code **)(*piVar5 + 0x18))(&stack0xffffffec,&param_5);
    if (cVar3 != '\0') {
      uVar6 = SACS_CreateDriverForComponent_767370(pvVar4,param_5,param_6,'\x01');
      FUN_007462e0(&param_4);
      return uVar6;
    }
  }
  pvVar4 = (void *)FUN_004e4500(0x58,"SACS/SacsHost/AcquireDriverAsync",0);
  if (pvVar4 == (void *)0x0) {
    pvVar4 = (void *)0x0;
  }
  else {
    pvVar4 = FUN_007682c0(pvVar4,this,(undefined4 *)&stack0xffffffec,param_6,param_7);
    if (pvVar4 != (void *)0x0) {
      (**(code **)(*(int *)((int)pvVar4 + 0xc) + 4))();
    }
  }
  FUN_00767740((int)pvVar4);
  if (pvVar4 != (void *)0x0) {
    (**(code **)(*(int *)((int)pvVar4 + 0xc) + 8))();
  }
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar2 == 1) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    (**(code **)*this)(1);
  }
  return 0xfffffff5;
}

