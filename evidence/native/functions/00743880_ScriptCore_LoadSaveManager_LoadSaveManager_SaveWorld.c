/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011611f8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LoadSaveManager::LoadSaveManager_SaveWorld [assembly=ScriptCore token=0x060001D5;
   callback: ScriptCore.LoadSaveManager+SaveWorldDelegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 LoadSave operation boundary review (2026-10-17). When native world gate permits,
   allocates 40h-byte SaveWorld process and calls 00743670 with ECX process and callback stack
   argument. A false result publishes false BOOL variant through host +134h callback path;
   successful process owns selected yielding/job machinery. Retains reference releases. Original
   managed caller expects completion bool; current opaque enqueue is not this protocol. */

void __cdecl ScriptCore.LoadSaveManager::LoadSaveManager_SaveWorld(undefined4 param_1)

{
  int *piVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined **local_40 [2];
  ushort local_38;
  undefined2 local_36;
  char local_30;
  undefined **local_20 [2];
  byte bStack_18;
  
  if (DAT_011edbc4 != 0) {
    piVar1 = (int *)FUN_004e4500(0x40,"Scripting/SaveWorldProcess",0);
    piVar3 = (int *)0x0;
    if (piVar1 != (int *)0x0) {
      FUN_00d4d250(piVar1);
      piVar1[8] = (int)&PTR_LAB_00fecfc0;
      piVar1[10] = 0;
      *piVar1 = (int)&PTR_FUN_010023d0;
      piVar1[8] = (int)&PTR_LAB_010023c0;
      *(undefined1 *)(piVar1 + 9) = 0;
      (**(code **)(*piVar1 + 4))();
      piVar3 = piVar1;
    }
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar2 = SaveWorldProcess_RequestLotJobs(piVar3);
    if ((char)uVar2 == '\0') {
      local_40[0] = &PTR_FUN_0100886c;
      local_36 = 1;
      local_38 = 2;
      local_30 = (char)uVar2;
      (**(code **)(*piVar1 + 0x134))(local_20,param_1,local_40,1);
      local_20[0] = &PTR_FUN_00fba6f4;
      if ((bStack_18 & 4) != 0) {
        FUN_004f5760(local_20,'\0');
      }
      local_40[0] = &PTR_FUN_00fba6f4;
      if ((local_38 & 4) != 0) {
        FUN_004f5760(local_40,'\0');
      }
    }
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 8))();
      return;
    }
  }
  return;
}

