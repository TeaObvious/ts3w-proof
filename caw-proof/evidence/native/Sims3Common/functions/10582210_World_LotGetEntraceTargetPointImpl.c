/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotGetEntraceTargetPointImpl. Export
   ordinal(s): 1443. Entry VA: 0x10582210. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CE6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
World_LotGetEntraceTargetPointImpl(undefined4 *param_1,uint param_2,uint param_3)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined1 local_c [12];
  
                    /* 0x582210  1443  World_LotGetEntraceTargetPointImpl */
  puVar2 = FUN_10580560(local_c,param_2,param_3);
  *param_1 = *puVar2;
  uVar1 = puVar2[2];
  param_1[1] = puVar2[1];
  param_1[2] = uVar1;
  return param_1;
}

