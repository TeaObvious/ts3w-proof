/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_IsCardRecognized. Export ordinal(s):
   346. Entry VA: 0x105328e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EE8. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 DeviceConfig_IsCardRecognized(void)

{
  int iVar1;
  
                    /* 0x5328e0  346  DeviceConfig_IsCardRecognized */
  iVar1 = FUN_1038c390();
  if (iVar1 != 0) {
    return *(undefined1 *)(iVar1 + 0x160);
  }
  return 0;
}

