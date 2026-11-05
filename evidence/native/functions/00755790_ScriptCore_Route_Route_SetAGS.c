/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161b88 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  int *piVar7;
  int iVar8;
  
  if ((DAT_011d50c4 == (void *)0x0) ||
     (piVar4 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar4 == (int *)0x0))
  {
    return;
  }
  (**(code **)(*piVar4 + 0x10))();
  piVar2 = piVar4 + 0x38;
  piVar4[0xf] = param_2;
  piVar7 = (int *)*piVar2;
  if (piVar7 != piVar2) {
    do {
      piVar3 = (int *)piVar7[2];
      if (piVar3 != (int *)0x0) {
        LOCK();
        piVar3[1] = piVar3[1] + 1;
        UNLOCK();
      }
      iVar5 = (**(code **)(*piVar3 + 0xc))();
      iVar8 = piVar4[0xf];
      puVar6 = (undefined4 *)FUN_0081c510(iVar5);
      FUN_0085f5e0(piVar3,puVar6,iVar8);
      piVar1 = piVar3 + 1;
      LOCK();
      iVar8 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar8 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar3)(1);
      }
      piVar7 = (int *)*piVar7;
    } while (piVar7 != piVar2);
  }
                    /* WARNING: Could not recover jumptable at 0x00755839. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar4 + 0x14))();
  return;
}

