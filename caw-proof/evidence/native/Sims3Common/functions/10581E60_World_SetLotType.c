/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetLotType. Export ordinal(s): 1588. Entry
   VA: 0x10581e60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C8C. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_SetLotType(int param_1,int param_2,int param_3)

{
  int *piVar1;
  
                    /* 0x581e60  1588  World_SetLotType */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if ((piVar1 != (int *)0x0) && (piVar1[0x102] != param_3)) {
      piVar1[0x103] = 0;
      piVar1[0x102] = param_3;
    }
  }
  return;
}

