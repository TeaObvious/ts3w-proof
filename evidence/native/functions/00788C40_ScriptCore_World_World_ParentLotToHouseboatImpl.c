/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163d78 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ParentLotToHouseboatImpl [assembly=ScriptCore token=0x060008AE; lotId:
   System.UInt64, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ParentLotToHouseboatImpl
               (int param_1,int param_2,int param_3,int param_4)

{
  int *this;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (this != (int *)0x0) {
      FUN_00ab8540(this,param_3,param_4);
    }
  }
  return;
}

