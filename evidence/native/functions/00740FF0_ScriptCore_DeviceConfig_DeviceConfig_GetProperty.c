/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161070 (original PC 1.67 TS3W.exe).
   ScriptCore.DeviceConfig::DeviceConfig_GetProperty [assembly=ScriptCore token=0x06001007; key:
   System.String, defaultValue: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_DeviceConfig__DeviceConfig_GetProperty(int param_1)

{
  int *piVar1;
  wchar_t *pwVar2;
  int iVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pwVar2 = (wchar_t *)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pwVar2 != (wchar_t *)0x0) {
    iVar3 = FUN_0058af00(L"Options",pwVar2,param_1);
    return iVar3;
  }
  return param_1;
}

