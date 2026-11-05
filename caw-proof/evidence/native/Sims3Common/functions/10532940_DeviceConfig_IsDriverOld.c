/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_IsDriverOld. Export ordinal(s): 348.
   Entry VA: 0x10532940. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EEB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool DeviceConfig_IsDriverOld(void)

{
  int iVar1;
  
                    /* 0x532940  348  DeviceConfig_IsDriverOld */
  iVar1 = FUN_103889f0((short *)PTR_u_Config_10c1e300,L"ReportOldGraphicsDriver",0);
  return iVar1 != 0;
}

