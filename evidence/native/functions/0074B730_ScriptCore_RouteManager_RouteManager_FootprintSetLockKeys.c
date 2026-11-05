/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161c98 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_FootprintSetLockKeys [assembly=ScriptCore token=0x06001058;
   footprintId: System.UInt64, lockType: System.UInt32, lockKeys: System.UInt64[];
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.RouteManager::RouteManager_FootprintSetLockKeys(void)

{
  void *pvVar1;
  int *piVar2;
  int unaff_retaddr;
  undefined4 in_stack_00000010;
  undefined4 local_8;
  undefined4 local_4;
  
  pvVar1 = (void *)thunk_FUN_00835d40();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((pvVar1 != (void *)0x0) && (piVar2 != (int *)0x0)) {
    local_4 = 0;
    local_8 = 0;
    (**(code **)(*piVar2 + 0x68))(in_stack_00000010);
    pvVar1 = (void *)FUN_0082ade0(pvVar1,local_8,local_4,(int *)0x1);
    if (pvVar1 != (void *)0x0) {
      FUN_00946a60(pvVar1,(int)&local_8,(uint)&local_4,unaff_retaddr);
    }
  }
  return;
}

