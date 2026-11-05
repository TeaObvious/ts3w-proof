/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161940 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SetValidRooms [assembly=ScriptCore token=0x060010FC; handle:
   System.UInt32, nLotId: System.UInt64, validRooms: System.Int32[], roomDefinition: System.Int32;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_SetValidRooms
               (uint param_1,int param_2,int param_3,int param_4,int param_5)

{
  int *this;
  int *host;
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint uStack_8;
  int iStack_4;
  
  host = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
  if (host == (int *)0x0) {
    return;
  }
  (**(code **)(*host + 0x10))();
  piVar1 = RouteHost_GetOrCreateGoal(host);
  if (piVar1 != (int *)0x0) {
    (**(code **)*piVar1)();
    this = piVar1 + 8;
    iStack_4 = 0;
    uStack_8 = 0;
    if (param_4 != 0) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar2 + 0x74))(param_4,&iStack_4,&uStack_8);
    }
    piVar1[0xe] = param_2;
    piVar1[0xf] = param_3;
    if ((iStack_4 == 0) || ((int)uStack_8 < 1)) {
      piVar1[9] = *this;
    }
    else {
      piVar1[0xc] = param_5;
      FUN_00c221f0(this,uStack_8);
      iVar3 = 0;
      if (0 < (int)uStack_8) {
        do {
          *(undefined4 *)(*this + iVar3 * 4) = *(undefined4 *)(iStack_4 + iVar3 * 4);
          iVar3 = iVar3 + 1;
        } while (iVar3 < (int)uStack_8);
      }
    }
    (**(code **)(*piVar1 + 4))();
  }
                    /* WARNING: Could not recover jumptable at 0x00763764. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*host + 0x14))();
  return;
}

