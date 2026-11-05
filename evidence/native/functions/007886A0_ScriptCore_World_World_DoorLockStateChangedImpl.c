/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163bf0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_DoorLockStateChangedImpl [assembly=ScriptCore token=0x06000880; objId:
   System.UInt64, bEnable: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_DoorLockStateChangedImpl
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  uint uVar2;
  
  iVar1 = FUN_00937570();
  uVar2 = FUN_00937f80(iVar1);
  if ((uVar2 != 0) && (param_3 != '\0')) {
    FUN_009356c0(0xd,uVar2,1);
  }
  return;
}

