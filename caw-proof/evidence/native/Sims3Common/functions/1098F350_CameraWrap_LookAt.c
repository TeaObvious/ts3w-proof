/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CameraWrap_LookAt. Export ordinal(s): 1756. Entry
   VA: 0x1098f350. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000855. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CameraWrap_LookAt(void *param_1,float *param_2,float *param_3,float *param_4)

{
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x98f350  1756  CameraWrap_LookAt */
  fStack_28 = param_4[2];
  local_30 = *param_4;
  fStack_2c = param_4[1];
  fStack_18 = param_3[2];
  fStack_1c = param_3[1];
  local_20 = *param_3;
  fStack_38 = param_2[2];
  fStack_3c = param_2[1];
  local_40 = *param_2;
  fStack_34 = local_40;
  fStack_24 = local_30;
  fStack_14 = local_20;
  FUN_107547c0(param_1,&local_40,&local_20,&local_30);
  return;
}

