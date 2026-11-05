/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_GetProcessorLevel. Export
   ordinal(s): 341. Entry VA: 0x10532c80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000EEE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

long DeviceConfig_GetProcessorLevel(void)

{
  int iVar1;
  long lVar2;
  
                    /* 0x532c80  341  DeviceConfig_GetProcessorLevel */
  iVar1 = FUN_1038c390();
  if (iVar1 != 0) {
    lVar2 = atol(*(char **)(iVar1 + 0x138));
    return lVar2;
  }
  return 0;
}

