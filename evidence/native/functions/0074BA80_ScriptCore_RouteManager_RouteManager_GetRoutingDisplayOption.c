/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161dd0 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_GetRoutingDisplayOption [assembly=ScriptCore
   token=0x0600108B; option: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_RouteManager__RouteManager_GetRoutingDisplayOption(uint param_1)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = 0;
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 == 0) {
    return 0;
  }
  if ((param_1 & 1) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad0) != '\0');
  }
  if (((param_1 & 2) != 0) && (DAT_011da140 != 0)) {
    uVar2 = (uint)(*(char *)(DAT_011da140 + 0x100) != '\0');
  }
  if ((param_1 & 4) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad2) != '\0');
  }
  if ((param_1 & 8) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad3) != '\0');
  }
  if ((param_1 & 0x10) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad6) != '\0');
  }
  if ((param_1 & 0x20) != 0) {
    uVar2 = *(uint *)(iVar1 + 0xae0);
  }
  if ((param_1 & 0x100) != 0) {
    if (*(char *)(iVar1 + 0xad8) == '\0') {
      uVar2 = 0;
    }
    else {
      uVar2 = *(uint *)(iVar1 + 0xadc);
    }
  }
  if ((param_1 & 0x200) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad9) != '\0');
  }
  return uVar2;
}

