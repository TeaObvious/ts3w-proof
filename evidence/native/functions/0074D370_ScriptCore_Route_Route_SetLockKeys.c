/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a28 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_SetLockKeys [assembly=ScriptCore token=0x06001128; handle: System.UInt32,
   lockKeys: System.UInt64[]; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_SetLockKeys(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar1 != (int *)0x0)) {
    (**(code **)(*piVar1 + 0x10))();
    uStack_4 = 0;
    uStack_8 = 0;
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar3 = &uStack_8;
    (**(code **)(*piVar2 + 0x68))(param_2);
    FUN_0081cdb0(piVar1 + 0x56,(int)puVar3,(uint)&uStack_4);
                    /* WARNING: Could not recover jumptable at 0x0074d3e4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

