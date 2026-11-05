/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetHighestPointOnLot. Export ordinal(s):
   1329. Entry VA: 0x1057b5f0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C93. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

float10 __cdecl World_GetHighestPointOnLot(int param_1,int param_2)

{
  int *piVar1;
  float10 fVar2;
  
                    /* 0x57b5f0  1329  World_GetHighestPointOnLot */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (piVar1 != (int *)0x0) {
      fVar2 = FUN_1007f080((int)piVar1);
      return fVar2;
    }
  }
  return (float10)0.0;
}

