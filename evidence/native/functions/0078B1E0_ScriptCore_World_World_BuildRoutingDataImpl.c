/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163c28 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_BuildRoutingDataImpl [assembly=ScriptCore token=0x0600078A; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_BuildRoutingDataImpl(void)

{
  void *destinationDb;
  void *this;
  bool bVar1;
  undefined3 extraout_var;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    destinationDb = *(void **)((int)DAT_011edbc4 + 0x84);
    bVar1 = FUN_00c5f450((int)DAT_011edbc4);
    WorldManager_FlushDirtyWorldData(this,destinationDb,(void *)CONCAT31(extraout_var,bVar1));
  }
  return;
}

