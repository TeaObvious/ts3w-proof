/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_PartSearchGetCurrentImpl. Export
   ordinal(s): 131. Entry VA: 0x103a3900. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060003D6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CASUtils_PartSearchGetCurrentImpl(undefined4 *param_1,uint param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_48 [18];
  
                    /* 0x3a3900  131  CASUtils_PartSearchGetCurrentImpl */
  puVar1 = FUN_103a2340(local_48,param_2);
  for (iVar2 = 0x12; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

