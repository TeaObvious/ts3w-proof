/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161020 (original PC 1.67 TS3W.exe).
   ScriptCore.DeviceConfig::DeviceConfig_IsCardSupported [assembly=ScriptCore token=0x06000FFD; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_DeviceConfig__DeviceConfig_IsCardSupported(void)

{
  DWORD DVar1;
  int iVar2;
  DWORD DVar3;
  
  iVar2 = FUN_0058e800();
  if (iVar2 != 0) {
    DVar1 = *(DWORD *)(iVar2 + 0x2ec);
    DVar3 = GetCurrentProcessId();
    if (DVar1 != DVar3) {
      ScriptCore.Animation::Animation_SetMissingAnimationCallback();
    }
    return *(undefined1 *)(iVar2 + 0x31);
  }
  return 0;
}

