/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_SetAbsoluteTransformXf. Export
   ordinal(s): 2538. Entry VA: 0x109802e0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000001. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl TransformComponent_SetAbsoluteTransformXf(void *param_1,undefined4 *param_2)

{
  undefined8 uVar1;
  undefined4 local_50 [19];
  
                    /* 0x9802e0  2538  TransformComponent_SetAbsoluteTransformXf */
  uVar1 = FUN_10980160(local_50,param_2);
  FUN_1074afe0(param_1,(int)((ulonglong)uVar1 >> 0x20),(float *)uVar1);
  return;
}

