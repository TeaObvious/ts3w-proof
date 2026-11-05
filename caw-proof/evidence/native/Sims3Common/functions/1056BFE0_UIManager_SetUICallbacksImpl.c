/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetUICallbacksImpl. Export ordinal(s):
   1159. Entry VA: 0x1056bfe0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006BE. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
UIManager_SetUICallbacksImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7)

{
  int iVar1;
  
                    /* 0x56bfe0  1159  UIManager_SetUICallbacksImpl */
  iVar1 = DAT_10c7b1f8;
  *(undefined4 *)(DAT_10c7b1f8 + 0x28) = param_1;
  *(undefined4 *)(iVar1 + 0x2c) = param_2;
  *(undefined4 *)(iVar1 + 0x30) = param_3;
  *(undefined4 *)(iVar1 + 0x34) = param_4;
  *(undefined4 *)(iVar1 + 0x38) = param_5;
  *(undefined4 *)(iVar1 + 0x3c) = param_6;
  *(undefined4 *)(iVar1 + 0x40) = param_7;
  return;
}

