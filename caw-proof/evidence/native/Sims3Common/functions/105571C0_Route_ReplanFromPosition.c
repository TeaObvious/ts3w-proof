/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_ReplanFromPosition. Export ordinal(s): 685.
   Entry VA: 0x105571c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000181. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
Route_ReplanFromPosition
          (undefined4 *param_1,uint param_2,float param_3,undefined4 param_4,undefined4 param_5)

{
  undefined4 *puVar1;
  int iVar2;
  int local_48 [18];
  
                    /* 0x5571c0  685  Route_ReplanFromPosition */
  puVar1 = (undefined4 *)FUN_105570a0(local_48,param_2,param_3,param_4,param_5);
  for (iVar2 = 0x12; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

