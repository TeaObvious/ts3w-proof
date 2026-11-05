/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_IsAASupported. Export ordinal(s):
   345. Entry VA: 0x10532980. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EEC. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool DeviceConfig_IsAASupported(void)

{
  int iVar1;
  
                    /* 0x532980  345  DeviceConfig_IsAASupported */
  iVar1 = FUN_103889f0((short *)PTR_u_Config_10c1e300,L"DisallowEdgeSmoothing",0);
  return (bool)('\x01' - (iVar1 != 0));
}

