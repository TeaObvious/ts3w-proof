/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163be8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_SetFloorCutoutStateForObjectImpl [assembly=ScriptCore token=0x0600087F;
   objId: System.UInt64, bEnable: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_SetFloorCutoutStateForObjectImpl
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *this;
  void *this_00;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    this_00 = (void *)FUN_00934260(this,DAT_011edf08);
    if (this_00 != (void *)0x0) {
      FUN_00c89550(this_00,param_3 == '\0');
      if (param_3 != '\0') {
        FUN_00b08180(this);
        return;
      }
      FUN_00b01a20(this);
    }
  }
  return;
}

