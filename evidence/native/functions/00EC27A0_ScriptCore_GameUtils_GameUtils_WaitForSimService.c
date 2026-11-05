/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011972f8 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_WaitForSimService [assembly=ScriptCore token=0x06000271;
   callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.GameUtils::GameUtils_WaitForSimService(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined8 uVar4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar4 = (**(code **)(*piVar1 + 0x118))();
  piVar2 = (int *)FUN_004e4500(0x18,"Scripting/ScriptSimRequestsCompletedNotifier",0);
  if (piVar2 != (int *)0x0) {
    *piVar2 = (int)&PTR_LAB_00ff4a78;
    LOCK();
    piVar2[1] = 0;
    UNLOCK();
    piVar2[2] = (int)&PTR_LAB_00fa2b8c;
    piVar2[3] = (int)&PTR_FUN_00f9b454;
    piVar2[5] = (int)((ulonglong)uVar4 >> 0x20);
    *piVar2 = (int)&PTR_LAB_010f333c;
    piVar2[2] = (int)&PTR_LAB_010f332c;
    piVar2[3] = (int)&PTR_LAB_010f3320;
    piVar2[4] = (int)uVar4;
    (**(code **)(*piVar2 + 4))();
    piVar3 = (int *)FUN_0044c4f0();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x1c))(0xd4a8e5cd,piVar2 + 3,0,piVar2 + 2);
    }
    (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_1,0);
    (**(code **)(*piVar1 + 0x11c))();
    (**(code **)(*piVar2 + 8))();
    return;
  }
  return;
}

