/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CASPartLoadImpl. Export ordinal(s): 67.
   Entry VA: 0x103a3c20. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600043A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
CASUtils_CASPartLoadImpl
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,uint param_4,undefined4 param_5
          )

{
  int iVar1;
  undefined4 *puVar2;
  uint local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48 [18];
  
                    /* 0x3a3c20  67  CASUtils_CASPartLoadImpl */
  local_54 = param_5;
  local_50 = param_2;
  local_58 = param_4;
  local_4c = param_3;
  FUN_103a20d0(&local_58,local_48);
  puVar2 = local_48;
  for (iVar1 = 0x12; iVar1 != 0; iVar1 = iVar1 + -1) {
    *param_1 = *puVar2;
    puVar2 = puVar2 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

