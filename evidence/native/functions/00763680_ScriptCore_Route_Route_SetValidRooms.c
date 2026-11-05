/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161940 (original PC 1.67 TS3W.exe).
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
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  uint uStack_8;
  int iStack_4;
  
  piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
  if (piVar1 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar1 + 0x10))();
  piVar2 = (int *)FUN_00752300((int)piVar1);
  if (piVar2 != (int *)0x0) {
    (**(code **)*piVar2)();
    this = piVar2 + 8;
    iStack_4 = 0;
    uStack_8 = 0;
    if (param_4 != 0) {
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar3 + 0x74))(param_4,&iStack_4,&uStack_8);
    }
    piVar2[0xe] = param_2;
    piVar2[0xf] = param_3;
    if ((iStack_4 == 0) || ((int)uStack_8 < 1)) {
      piVar2[9] = *this;
    }
    else {
      piVar2[0xc] = param_5;
      FUN_00c221f0(this,uStack_8);
      iVar4 = 0;
      if (0 < (int)uStack_8) {
        do {
          *(undefined4 *)(*this + iVar4 * 4) = *(undefined4 *)(iStack_4 + iVar4 * 4);
          iVar4 = iVar4 + 1;
        } while (iVar4 < (int)uStack_8);
      }
    }
    (**(code **)(*piVar2 + 4))();
  }
                    /* WARNING: Could not recover jumptable at 0x00763764. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar1 + 0x14))();
  return;
}

