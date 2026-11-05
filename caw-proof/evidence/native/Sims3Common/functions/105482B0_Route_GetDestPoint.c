/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetDestPoint. Export ordinal(s): 634. Entry
   VA: 0x105482b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060001AA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 __cdecl Route_GetDestPoint(uint param_1,void *param_2)

{
  undefined1 uVar1;
  int *this;
  
                    /* 0x5482b0  634  Route_GetDestPoint */
  if (DAT_10c78944 != (void *)0x0) {
    this = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (this != (int *)0x0) {
      (**(code **)(*this + 0x10))();
      uVar1 = FUN_10544740(this,param_2);
      (**(code **)(*this + 0x14))();
      return uVar1;
    }
  }
  return 0;
}

