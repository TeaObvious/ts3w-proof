/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_InjectEyebrowColorImpl. Export
   ordinal(s): 112. Entry VA: 0x103a72d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000496. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CASUtils_InjectEyebrowColorImpl(undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int in_stack_ffffffa8;
  undefined4 in_stack_ffffffac;
  
                    /* 0x3a72d0  112  CASUtils_InjectEyebrowColorImpl */
  puVar2 = (undefined4 *)&stack0x00000008;
  puVar3 = (undefined4 *)&stack0xffffffa8;
  for (iVar1 = 0x12; iVar1 != 0; iVar1 = iVar1 + -1) {
    *puVar3 = *puVar2;
    puVar2 = puVar2 + 1;
    puVar3 = puVar3 + 1;
  }
  FUN_103a6e80(param_1,in_stack_ffffffa8,in_stack_ffffffac);
  return;
}

