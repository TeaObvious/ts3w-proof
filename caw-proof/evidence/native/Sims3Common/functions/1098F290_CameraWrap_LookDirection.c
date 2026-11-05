/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_LookDirection. Export ordinal(s):
   1757. Entry VA: 0x1098f290. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000854. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
CameraWrap_LookDirection(void *param_1,undefined4 *param_2,float *param_3,float *param_4)

{
  undefined4 local_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x98f290  1757  CameraWrap_LookDirection */
  fStack_28 = param_4[2];
  local_30 = *param_4;
  fStack_2c = param_4[1];
  fStack_18 = param_3[2];
  fStack_1c = param_3[1];
  local_20 = *param_3;
  uStack_38 = param_2[2];
  uStack_3c = param_2[1];
  local_40 = *param_2;
  uStack_34 = local_40;
  fStack_24 = local_30;
  fStack_14 = local_20;
  FUN_10754500(param_1,&local_40,&local_20,&local_30);
  return;
}

