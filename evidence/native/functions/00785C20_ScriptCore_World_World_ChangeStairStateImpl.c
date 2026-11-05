/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163ae0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ChangeStairStateImpl [assembly=ScriptCore token=0x0600085E; lotId:
   System.UInt64, objId: System.UInt64, bHide: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ChangeStairStateImpl
               (int param_1,int param_2,int param_3,int param_4,short *param_5)

{
  void *this;
  int *piVar1;
  
  if (((DAT_011edbc4 != (void *)0x0) &&
      (piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0),
      piVar1 != (int *)0x0)) && (this = (void *)piVar1[0xad], this != (void *)0x0)) {
    piVar1 = (int *)FUN_00b17530(this,param_3,param_4);
    FUN_00b1df00(this,param_5,piVar1);
  }
  return;
}

