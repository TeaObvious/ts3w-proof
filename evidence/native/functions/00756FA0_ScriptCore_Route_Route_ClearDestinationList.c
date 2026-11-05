/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161938 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_ClearDestinationList [assembly=ScriptCore token=0x060010FB; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_ClearDestinationList(uint param_1)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x10))();
    piVar2 = (int *)FUN_00752300((int)piVar1);
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
      FUN_0074fdf0(piVar2 + 6);
      (**(code **)(*piVar2 + 4))();
    }
                    /* WARNING: Could not recover jumptable at 0x00756ff0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

