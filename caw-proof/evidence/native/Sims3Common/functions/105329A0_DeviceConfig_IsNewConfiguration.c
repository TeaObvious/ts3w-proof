/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_IsNewConfiguration. Export
   ordinal(s): 350. Entry VA: 0x105329a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000EED. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 DeviceConfig_IsNewConfiguration(void)

{
  int iVar1;
  
                    /* 0x5329a0  350  DeviceConfig_IsNewConfiguration */
  iVar1 = FUN_1038c390();
  if (iVar1 != 0) {
    return *(undefined1 *)(iVar1 + 0x78);
  }
  return 0;
}

