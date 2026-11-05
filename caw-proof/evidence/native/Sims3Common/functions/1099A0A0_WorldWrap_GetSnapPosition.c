/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetSnapPosition. Export ordinal(s):
   2653. Entry VA: 0x1099a0a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004F5. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl
WorldWrap_GetSnapPosition(int param_1,float *param_2,float *param_3,int param_4,int param_5)

{
  uint uVar1;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  
                    /* 0x99a0a0  2653  WorldWrap_GetSnapPosition */
  if (*(void **)(param_1 + 0x6c) != (void *)0x0) {
    fStack_28 = param_2[2];
    local_30 = *param_2;
    fStack_2c = param_2[1];
    fStack_24 = local_30;
    uVar1 = FUN_102002e0(*(void **)(param_1 + 0x6c),&local_30,&local_20,param_4 != 0,param_5 != 0);
    *param_3 = local_20;
    param_3[1] = fStack_1c;
    param_3[2] = fStack_18;
    return uVar1 & 0xff;
  }
  return 0;
}

