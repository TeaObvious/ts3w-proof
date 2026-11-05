/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a40 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_ClearObjectToIgnoreForRoute [assembly=ScriptCore token=0x0600112B;
   handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_ClearObjectToIgnoreForRoute(uint param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar4 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar4 != (int *)0x0)) {
    (**(code **)(*piVar4 + 0x10))();
    puVar5 = (undefined4 *)FUN_0081c520((int)(piVar4 + 0x56));
    puVar5[1] = *puVar5;
    piVar6 = (int *)piVar4[0x38];
    if (piVar6 != piVar4 + 0x38) {
      do {
        piVar3 = (int *)piVar6[2];
        if (piVar3 != (int *)0x0) {
          LOCK();
          piVar3[1] = piVar3[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar3 + 0x10))(piVar4 + 0x56);
        piVar1 = piVar3 + 1;
        LOCK();
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*piVar3)(1);
        }
        piVar6 = (int *)*piVar6;
      } while (piVar6 != piVar4 + 0x38);
    }
                    /* WARNING: Could not recover jumptable at 0x00754709. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar4 + 0x14))();
    return;
  }
  return;
}

