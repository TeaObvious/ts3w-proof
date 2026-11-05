/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162ff8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_AddTriggerHookImpl [assembly=ScriptCore token=0x06000E3A;
   winHandle: System.UInt32, map: System.String, mode: System.Int32, priority: System.Int32, modal:
   System.Boolean; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UIManager__UIManager_AddTriggerHookImpl
               (uint param_1,undefined4 param_2,char param_3)

{
  void *this;
  int *piVar1;
  int *piVar2;
  uint uVar3;
  
  this = (void *)FUN_007f0140();
  if ((this != (void *)0x0) && ((param_1 & 0xff000000) == 0x30000000)) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
    }
    uVar3 = (**(code **)(*piVar1 + 0x58))(param_1);
    uVar3 = FUN_007f1250(this,uVar3,FUN_007f0150,piVar2,param_1,param_2,param_3 != '\0');
    return uVar3;
  }
  return DAT_0101f2bc;
}

