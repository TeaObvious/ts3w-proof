/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_IsMac. Export ordinal(s): 349. Entry
   VA: 0x10532960. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EEA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 DeviceConfig_IsMac(void)

{
  int iVar1;
  
                    /* 0x532960  349  DeviceConfig_IsMac */
  iVar1 = FUN_1038c390();
  if (iVar1 != 0) {
    return *(undefined1 *)(iVar1 + 0x2a8);
  }
  return 0;
}

