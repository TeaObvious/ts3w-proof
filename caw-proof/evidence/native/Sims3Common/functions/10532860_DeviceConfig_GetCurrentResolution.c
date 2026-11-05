/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DeviceConfig_GetCurrentResolution. Export
   ordinal(s): 336. Entry VA: 0x10532860. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000EE5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
DeviceConfig_GetCurrentResolution
          (undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,undefined1 *param_4)

{
  int iVar1;
  
                    /* 0x532860  336  DeviceConfig_GetCurrentResolution */
  iVar1 = FUN_1038c390();
  if (iVar1 != 0) {
    *param_1 = *(undefined4 *)(iVar1 + 0x8c);
    *param_2 = *(undefined4 *)(iVar1 + 0x90);
    *param_3 = *(undefined4 *)(iVar1 + 0x94);
    *param_4 = *(undefined1 *)(iVar1 + 0xac);
  }
  return;
}

