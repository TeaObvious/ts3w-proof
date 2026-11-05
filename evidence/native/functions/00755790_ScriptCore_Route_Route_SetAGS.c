/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161b88 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_SetAGS [assembly=ScriptCore token=0x0600114E; handle: System.UInt32, ags:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_SetAGS(uint param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar4 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar4 != (int *)0x0)) {
    (**(code **)(*piVar4 + 0x10))();
    piVar4[0xf] = param_2;
    for (piVar2 = (int *)piVar4[0x38]; piVar2 != piVar4 + 0x38; piVar2 = (int *)*piVar2) {
      piVar3 = (int *)piVar2[2];
      if (piVar3 != (int *)0x0) {
        LOCK();
        piVar3[1] = piVar3[1] + 1;
        UNLOCK();
      }
      iVar5 = (**(code **)(*piVar3 + 0xc))();
      iVar7 = piVar4[0xf];
      puVar6 = (undefined4 *)FUN_0081c510(iVar5);
      FUN_0085f5e0(piVar3,puVar6,iVar7);
      piVar1 = piVar3 + 1;
      LOCK();
      iVar7 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar7 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar3)(1);
      }
    }
                    /* WARNING: Could not recover jumptable at 0x00755839. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar4 + 0x14))();
    return;
  }
  return;
}

