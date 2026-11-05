/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161028 (original PC 1.67 TS3W.exe).
   ScriptCore.DeviceConfig::DeviceConfig_IsDriverOld [assembly=ScriptCore token=0x06000FFF; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_DeviceConfig__DeviceConfig_IsDriverOld(void)

{
  int iVar1;
  
  iVar1 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"ReportOldGraphicsDriver",0);
  return iVar1 != 0;
}

