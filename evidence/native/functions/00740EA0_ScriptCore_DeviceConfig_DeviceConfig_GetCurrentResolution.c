/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161000 (original PC 1.67 TS3W.exe).
   ScriptCore.DeviceConfig::DeviceConfig_GetCurrentResolution [assembly=ScriptCore token=0x06000FF9;
   width: System.UInt32&, height: System.UInt32&, refresh: System.UInt32&, fullScreen:
   System.Boolean&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_DeviceConfig__DeviceConfig_GetCurrentResolution
               (undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined1 *param_4)

{
  int iVar1;
  
  iVar1 = FUN_0058e800();
  if (iVar1 != 0) {
    *param_1 = *(undefined4 *)(iVar1 + 0x8c);
    *param_2 = *(undefined4 *)(iVar1 + 0x90);
    *param_3 = *(undefined4 *)(iVar1 + 0x94);
    *param_4 = *(undefined1 *)(iVar1 + 0xac);
  }
  return;
}

