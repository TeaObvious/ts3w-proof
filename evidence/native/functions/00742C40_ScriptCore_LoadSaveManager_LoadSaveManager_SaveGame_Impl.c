/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011611e0 (TS3W.exe).
   ScriptCore.LoadSaveManager::LoadSaveManager_SaveGame_Impl [assembly=ScriptCore token=0x060001D2;
   h: System.UInt32, isTravelSave: System.Boolean, isTraveling: System.Boolean;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   Travel proof review: complete original entry 742c40..742c8c; cdecl handle and two stack dword
   flags whose low bytes are consumed. Successful call forwards uint EAX from 00aaf6c0. Absent
   interface/manager/handle returns0. Original ScriptCore.SaveTravel supplies(0,true,true);
   GameStates.SwitchWorlds discards save status.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). Physical three stack arguments reach
   manager DispatchSave 00AAF6C0; its EAX uint status is returned. This is the native SaveGame
   entry. ResetSaveLocation at 00742C90 and its reset dispatch are separate responsibilities. No
   persistence cycle was executed. */

uint __cdecl
ScriptCore_LoadSaveManager__LoadSaveManager_SaveGame_Impl
          (uint saveHandle,bool isTravelSave,bool isTraveling)

{
  int *piVar1;
  void *this;
  undefined4 *puVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  this = (void *)FUN_00aa99c0();
  puVar2 = (undefined4 *)0x0;
  if (this != (void *)0x0) {
    if (saveHandle != 0) {
      puVar2 = (undefined4 *)(**(code **)(*piVar1 + 0xcc))(saveHandle);
      if (puVar2 == (undefined4 *)0x0) {
        return 0;
      }
    }
    puVar2 = (undefined4 *)LoadSaveManager_DispatchSave(this,puVar2,isTravelSave,isTraveling);
  }
  return (uint)puVar2;
}

