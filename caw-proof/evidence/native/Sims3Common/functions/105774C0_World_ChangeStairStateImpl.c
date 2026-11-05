/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_ChangeStairStateImpl. Export ordinal(s):
   1270. Entry VA: 0x105774c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CB6. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
World_ChangeStairStateImpl(int param_1,int param_2,int param_3,int param_4,short *param_5)

{
  void *this;
  int *piVar1;
  
                    /* 0x5774c0  1270  World_ChangeStairStateImpl */
  if (((DAT_10c700c4 != (void *)0x0) &&
      (piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0), piVar1 != (int *)0x0)) &&
     (this = (void *)piVar1[0xad], this != (void *)0x0)) {
    piVar1 = (int *)FUN_100dedf0(this,param_3,param_4);
    FUN_100e5bd0(this,param_5,piVar1);
  }
  return;
}

