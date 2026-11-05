/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_GetVideoCardLevel. Export
   ordinal(s): 344. Entry VA: 0x10532ca0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000EEF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

long DeviceConfig_GetVideoCardLevel(void)

{
  int iVar1;
  long lVar2;
  
                    /* 0x532ca0  344  DeviceConfig_GetVideoCardLevel */
  iVar1 = FUN_1038c390();
  if (iVar1 != 0) {
    lVar2 = atol(*(char **)(iVar1 + 0x118));
    return lVar2;
  }
  return 0;
}

