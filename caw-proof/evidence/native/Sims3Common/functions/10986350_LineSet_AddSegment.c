/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LineSet_AddSegment. Export ordinal(s): 1877.
   Entry VA: 0x10986350. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008FE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
LineSet_AddSegment(void *param_1,undefined4 *param_2,undefined4 *param_3,undefined4 param_4)

{
  undefined4 local_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
                    /* 0x986350  1877  LineSet_AddSegment */
  uStack_18 = param_3[2];
  local_20 = *param_3;
  uStack_1c = param_3[1];
  uStack_28 = param_2[2];
  uStack_2c = param_2[1];
  local_30 = *param_2;
  uStack_24 = local_30;
  uStack_14 = local_20;
  FUN_104bf3e0(param_1,&local_30,&local_20,param_4,param_4);
  return;
}

