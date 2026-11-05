/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetLotDescription. Export ordinal(s): 1585.
   Entry VA: 0x10579660. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CA5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl World_SetLotDescription(int param_1,int param_2,undefined4 param_3)

{
  int *this;
  int *piVar1;
  wint_t *pwVar2;
  
                    /* 0x579660  1585  World_SetLotDescription */
  if (DAT_10c700c4 == (void *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
  }
  piVar1 = (int *)FUN_1055b120();
  if ((this != (int *)0x0) && (piVar1 != (int *)0x0)) {
    pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_3);
    FUN_10082b20(this,pwVar2);
  }
  return;
}

