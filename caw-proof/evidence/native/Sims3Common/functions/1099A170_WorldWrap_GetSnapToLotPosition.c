/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetSnapToLotPosition. Export
   ordinal(s): 2654. Entry VA: 0x1099a170. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004F6. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetSnapToLotPosition(void *param_1,int *param_2,float *param_3)

{
  undefined4 uVar1;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
                    /* 0x99a170  2654  WorldWrap_GetSnapToLotPosition */
  if (param_2 != (int *)0x0) {
    fStack_28 = param_3[2];
    local_30 = *param_3;
    fStack_2c = param_3[1];
    fStack_24 = local_30;
    uVar1 = FUN_1025fa50(param_1,param_2,&local_30,(float *)&stack0x00000010,
                         (float *)&stack0x00000014);
    if ((char)uVar1 != '\0') {
      *param_3 = local_30;
      param_3[1] = fStack_2c;
      param_3[2] = fStack_28;
      return 1;
    }
  }
  return 0;
}

