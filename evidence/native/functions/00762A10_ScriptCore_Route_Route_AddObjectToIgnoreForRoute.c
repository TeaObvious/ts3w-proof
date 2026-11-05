/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a30 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_AddObjectToIgnoreForRoute [assembly=ScriptCore token=0x06001129; handle:
   System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_AddObjectToIgnoreForRoute(uint param_1,int param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *this;
  int *piVar5;
  
  if ((DAT_011d50c4 == (void *)0x0) ||
     (piVar4 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar4 == (int *)0x0)) {
    return;
  }
  (**(code **)(*piVar4 + 0x10))();
  this = (undefined4 *)FUN_0081c520((int)(piVar4 + 0x56));
  piVar3 = (int *)this[1];
  piVar5 = (int *)*this;
  if (piVar5 != piVar3) {
    do {
      if ((*piVar5 == param_2) && (piVar5[1] == param_3)) break;
      piVar5 = piVar5 + 2;
    } while (piVar5 != piVar3);
    if (piVar5 != piVar3) goto LAB_00762af9;
  }
  if (piVar3 < (int *)this[2]) {
    this[1] = piVar3 + 2;
    if (piVar3 != (int *)0x0) {
      *piVar3 = param_2;
      piVar3[1] = param_3;
    }
  }
  else {
    FUN_00572360(this,piVar3,&param_2);
  }
  for (piVar3 = (int *)piVar4[0x38]; piVar3 != piVar4 + 0x38; piVar3 = (int *)*piVar3) {
    piVar5 = (int *)piVar3[2];
    if (piVar5 != (int *)0x0) {
      LOCK();
      piVar5[1] = piVar5[1] + 1;
      UNLOCK();
    }
    (**(code **)(*piVar5 + 0x10))(piVar4 + 0x56);
    piVar1 = piVar5 + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*piVar5)(1);
    }
  }
LAB_00762af9:
                    /* WARNING: Could not recover jumptable at 0x00762b07. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar4 + 0x14))();
  return;
}

