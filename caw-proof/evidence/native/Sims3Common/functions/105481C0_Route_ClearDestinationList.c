/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_ClearDestinationList. Export ordinal(s):
   623. Entry VA: 0x105481c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000170. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_ClearDestinationList(uint param_1)

{
  int *piVar1;
  int *piVar2;
  
                    /* 0x5481c0  623  Route_ClearDestinationList */
  piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x10))();
    piVar2 = (int *)FUN_105435a0((int)piVar1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      FUN_10540f70(piVar2 + 6);
      (**(code **)(*piVar2 + 4))();
    }
                    /* WARNING: Could not recover jumptable at 0x10548210. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

