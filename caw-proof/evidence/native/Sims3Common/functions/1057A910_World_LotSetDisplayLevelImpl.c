/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_LotSetDisplayLevelImpl. Export ordinal(s):
   1454. Entry VA: 0x1057a910. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BB6. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_LotSetDisplayLevelImpl(int param_1,int param_2,int param_3)

{
  int *this;
  
                    /* 0x57a910  1454  World_LotSetDisplayLevelImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if (this != (int *)0x0) {
      FUN_10085110(this,param_3,'\0','\x01','\0');
    }
  }
  return;
}

