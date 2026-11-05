/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011630f0 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_SendBrowserCommandImpl [assembly=ScriptCore token=0x06000E59;
   winHandle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_SendBrowserCommandImpl(int param_1)

{
  if (param_1 != 0xff5232a) {
    FUN_009e8520(param_1);
    return;
  }
  if (DAT_011d5068 != 0) {
    FUN_00747260(*(LPCWSTR *)(DAT_011d5068 + 0xf0));
    return;
  }
  FUN_00747260(pWRam000000f8);
  return;
}

