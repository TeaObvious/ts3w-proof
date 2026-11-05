/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_GetSkinTonePresetImpl. Export
   ordinal(s): 108. Entry VA: 0x103a3980. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600040F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
CASUtils_GetSkinTonePresetImpl
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_30 [12];
  
                    /* 0x3a3980  108  CASUtils_GetSkinTonePresetImpl */
  puVar1 = FUN_103a23d0(local_30,param_2,param_3,param_4,param_5);
  for (iVar2 = 0xc; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

