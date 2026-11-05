/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162038 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_DoCPPProfile [assembly=ScriptCore token=0x06000558;
   startEndDelta: System.UInt32, index: System.UInt32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_Simulator__Simulator_DoCPPProfile(int param_1,uint param_2)

{
  undefined8 uVar1;
  
  if (param_2 < 5) {
    if (param_1 == 0) {
      switch(param_2) {
      case 0:
        FUN_0076ce70();
        return 0xffffffffffffffff;
      case 1:
        FUN_0076cea0();
        return 0xffffffffffffffff;
      case 2:
        FUN_0076ced0();
        return 0xffffffffffffffff;
      case 3:
        FUN_0076cf00();
        return 0xffffffffffffffff;
      case 4:
        FUN_0076cf30();
      }
    }
    else {
      if (param_1 == 1) {
        return CONCAT44(*(undefined4 *)(&DAT_011d778c + param_2 * 8),
                        *(undefined4 *)(&DAT_011d7788 + param_2 * 8));
      }
      if (param_1 == 2) {
                    /* WARNING: Could not recover jumptable at 0x0076d0dc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        uVar1 = (*(code *)(&PTR_LAB_0076d178)[param_2])();
        return uVar1;
      }
    }
  }
  return 0xffffffffffffffff;
}

