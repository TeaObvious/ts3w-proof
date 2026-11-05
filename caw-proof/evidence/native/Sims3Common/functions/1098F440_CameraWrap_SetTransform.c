/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_SetTransform. Export ordinal(s): 1763.
   Entry VA: 0x1098f440. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000863. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CameraWrap_SetTransform(void *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 local_50 [19];
  
                    /* 0x98f440  1763  CameraWrap_SetTransform */
  puVar1 = (undefined4 *)FUN_10980160(local_50,param_2);
  FUN_107541e0(param_1,puVar1);
  FUN_107528b0((int)param_1);
  return;
}

