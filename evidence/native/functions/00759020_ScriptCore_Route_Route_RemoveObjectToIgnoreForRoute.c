/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161a38 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_RemoveObjectToIgnoreForRoute [assembly=ScriptCore token=0x0600112A;
   handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_RemoveObjectToIgnoreForRoute(uint param_1,int param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  
  if ((DAT_011d50c4 == (void *)0x0) ||
     (piVar4 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar4 == (int *)0x0))
  {
    return;
  }
  (**(code **)(*piVar4 + 0x10))();
  puVar5 = (undefined4 *)FUN_0081c520((int)(piVar4 + 0x56));
  piVar3 = (int *)puVar5[1];
  piVar6 = (int *)*puVar5;
  if (piVar6 != piVar3) {
    do {
      if ((*piVar6 == param_2) && (piVar6[1] == param_3)) break;
      piVar6 = piVar6 + 2;
    } while (piVar6 != piVar3);
    if (piVar6 != piVar3) {
      piVar1 = piVar6 + 2;
      if (piVar1 < piVar3) {
        memmove(piVar6,piVar1,(int)piVar3 - (int)piVar1);
      }
      puVar5[1] = puVar5[1] + -8;
      for (piVar3 = (int *)piVar4[0x38]; piVar3 != piVar4 + 0x38; piVar3 = (int *)*piVar3) {
        piVar6 = (int *)piVar3[2];
        if (piVar6 != (int *)0x0) {
          LOCK();
          piVar6[1] = piVar6[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar6 + 0x10))(piVar4 + 0x56);
        piVar1 = piVar6 + 1;
        LOCK();
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*piVar6)(1);
        }
      }
    }
  }
                    /* WARNING: Could not recover jumptable at 0x0075910c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar4 + 0x14))();
  return;
}

