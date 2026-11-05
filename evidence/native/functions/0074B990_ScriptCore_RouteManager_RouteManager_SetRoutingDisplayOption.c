/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161dc8 (original PC 1.67 TS3W.exe).
   ScriptCore.RouteManager::RouteManager_SetRoutingDisplayOption [assembly=ScriptCore
   token=0x0600108A; option: System.UInt32, val: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_SetRoutingDisplayOption(uint param_1,uint param_2)

{
  int iVar1;
  
  iVar1 = thunk_FUN_00835d40();
  if (iVar1 != 0) {
    if ((param_1 & 1) != 0) {
      *(bool *)(iVar1 + 0xad0) = param_2 != 0;
    }
    if (((param_1 & 2) != 0) && (DAT_011da140 != 0)) {
      *(bool *)(DAT_011da140 + 0x100) = param_2 != 0;
    }
    if ((param_1 & 4) != 0) {
      *(bool *)(iVar1 + 0xad2) = param_2 != 0;
    }
    if ((param_1 & 8) != 0) {
      *(bool *)(iVar1 + 0xad3) = param_2 != 0;
    }
    if ((param_1 & 0x10) != 0) {
      *(bool *)(iVar1 + 0xad6) = param_2 != 0;
    }
    if ((param_1 & 0x20) != 0) {
      *(uint *)(iVar1 + 0xae0) = param_2;
    }
    if ((param_1 & 0x40) != 0) {
      *(undefined1 *)(iVar1 + 0xad8) = 1;
      *(uint *)(iVar1 + 0xadc) = param_2;
    }
    if ((char)param_1 < '\0') {
      *(undefined1 *)(iVar1 + 0xad8) = 0;
    }
    if ((param_1 & 0x200) != 0) {
      *(bool *)(iVar1 + 0xad9) = param_2 != 0;
    }
    if ((param_1 & 0x400) != 0) {
      FUN_00817d30((void *)(iVar1 + 0x990),param_2);
    }
    if ((param_1 & 0x800) != 0) {
      FUN_00816660(iVar1 + 0x990);
      FUN_00815df0(iVar1 + 0x990);
      return;
    }
  }
  return;
}

