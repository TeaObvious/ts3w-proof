/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_FindReplacementPartForCategoryImpl.
   Export ordinal(s): 95. Entry VA: 0x103a2070. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600049A. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
CASUtils_FindReplacementPartForCategoryImpl
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,ulong param_4,
          undefined4 param_5,uint param_6,uint param_7,uint param_8)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_48 [18];
  
                    /* 0x3a2070  95  CASUtils_FindReplacementPartForCategoryImpl */
  puVar1 = FUN_103a0b40(local_48,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  for (iVar2 = 0x12; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

