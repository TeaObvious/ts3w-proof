/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_SetAbsolutePosition. Export
   ordinal(s): 2537. Entry VA: 0x10980310. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000002. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl TransformComponent_SetAbsolutePosition(void *param_1,float *param_2)

{
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x980310  2537  TransformComponent_SetAbsolutePosition */
  fStack_18 = param_2[2];
  local_20 = *param_2;
  fStack_1c = param_2[1];
  fStack_14 = local_20;
  FUN_1074ac30(param_1,&local_20);
  return;
}

