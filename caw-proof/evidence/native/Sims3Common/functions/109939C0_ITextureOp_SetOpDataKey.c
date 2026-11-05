/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ITextureOp_SetOpDataKey. Export ordinal(s): 1868.
   Entry VA: 0x109939c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B84. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
ITextureOp_SetOpDataKey
          (int *param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,undefined4 param_5,
          undefined4 param_6)

{
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x9939c0  1868  ITextureOp_SetOpDataKey */
  local_4 = param_4;
  local_8 = param_3;
  local_10 = param_5;
  local_c = param_6;
  (**(code **)(*param_1 + 0x38))(param_2,&local_10);
  return;
}

