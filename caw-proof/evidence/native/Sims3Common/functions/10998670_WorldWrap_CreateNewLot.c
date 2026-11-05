/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_CreateNewLot. Export ordinal(s): 2613.
   Entry VA: 0x10998670. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004BD. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int * __cdecl
WorldWrap_CreateNewLot
          (void *param_1,int *param_2,int param_3,float *param_4,float param_5,int param_6,
          int param_7)

{
  int *piVar1;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x998670  2613  WorldWrap_CreateNewLot */
  if (param_1 != (void *)0x0) {
    fStack_18 = param_4[2];
    local_20 = *param_4;
    fStack_1c = param_4[1];
    fStack_14 = local_20;
    piVar1 = FUN_10233590(param_1,param_2,param_3,&local_20,param_5,param_6,param_7,(wchar_t *)0x0);
    return piVar1;
  }
  return (int *)0x0;
}

