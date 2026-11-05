/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TrackMask_Destroy. Export ordinal(s): 2526. Entry
   VA: 0x10995b20. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000B5C. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl TrackMask_Destroy(int *param_1)

{
  int *piVar1;
  
                    /* 0x995b20  2526  TrackMask_Destroy */
  if (param_1 != (int *)0x0) {
    piVar1 = (int *)FUN_108e50d0();
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x5c))(param_1,0);
    }
                    /* WARNING: Could not recover jumptable at 0x10995b46. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*param_1 + 4))();
    return;
  }
  return;
}

