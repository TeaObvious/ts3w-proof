/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VideoRecorder_GetLastVideoKey. Export ordinal(s):
   1242. Entry VA: 0x10575ed0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F1D. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 * __cdecl VideoRecorder_GetLastVideoKey(undefined4 *param_1)

{
  int *piVar1;
  undefined4 unaff_ESI;
  undefined4 local_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
                    /* 0x575ed0  1242  VideoRecorder_GetLastVideoKey */
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  piVar1 = (int *)FUN_107cd170();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x24))(&local_10);
    *param_1 = uStack_c;
    param_1[1] = uStack_8;
    param_1[2] = unaff_ESI;
    param_1[3] = local_10;
  }
  return param_1;
}

