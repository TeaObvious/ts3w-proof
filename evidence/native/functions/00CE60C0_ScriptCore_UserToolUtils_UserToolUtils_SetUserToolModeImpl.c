/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189df0 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_SetUserToolModeImpl [assembly=ScriptCore
   token=0x06000BE6; mode: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UserToolUtils__UserToolUtils_SetUserToolModeImpl(uint param_1)

{
  int iVar1;
  
  iVar1 = FUN_00cef500();
  if (iVar1 != 0) {
    switch(*(undefined4 *)(iVar1 + 0x30)) {
    case 0:
    case 8:
      FUN_00d39d10(*(void **)(iVar1 + 0x2c),param_1);
      return;
    case 1:
      FUN_00d3e8a0(*(void **)(iVar1 + 0x2c),param_1);
      return;
    case 2:
      FUN_00ce3d50(*(void **)(iVar1 + 0x2c),param_1);
      return;
    case 0x12:
      if (*(int *)(iVar1 + 0x2c) != 0) {
        FUN_00ceec10((void *)(*(int *)(iVar1 + 0x2c) + -0x28),param_1);
        return;
      }
      FUN_00ceec10((void *)0x0,param_1);
      return;
    case 0x1a:
      FUN_00cd04e0(*(void **)(iVar1 + 0x2c),param_1);
    }
  }
  return;
}

