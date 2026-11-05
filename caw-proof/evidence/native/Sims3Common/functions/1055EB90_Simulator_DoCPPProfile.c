/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_DoCPPProfile. Export ordinal(s): 752.
   Entry VA: 0x1055eb90. Original managed P/Invoke MethodDef(s): ScriptCore:0x060010F5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined8 __cdecl Simulator_DoCPPProfile(int param_1,uint param_2)

{
  undefined8 uVar1;
  
                    /* 0x55eb90  752  Simulator_DoCPPProfile */
  if (param_2 < 5) {
    if (param_1 == 0) {
      switch(param_2) {
      case 0:
        FUN_1055e950();
        return 0xffffffffffffffff;
      case 1:
        FUN_1055e980();
        return 0xffffffffffffffff;
      case 2:
        FUN_1055e9b0();
        return 0xffffffffffffffff;
      case 3:
        FUN_1055e9e0();
        return 0xffffffffffffffff;
      case 4:
        FUN_1055ea10();
      }
    }
    else {
      if (param_1 == 1) {
        return CONCAT44(*(undefined4 *)(&DAT_10c7affc + param_2 * 8),
                        *(undefined4 *)(&DAT_10c7aff8 + param_2 * 8));
      }
      if (param_1 == 2) {
                    /* WARNING: Could not recover jumptable at 0x1055ebbc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar1 = (*(code *)(&PTR_LAB_1055ec58)[param_2])();
        return uVar1;
      }
    }
  }
  return 0xffffffffffffffff;
}

