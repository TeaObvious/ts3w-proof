/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163968 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetInformationAboutRoomImpl [assembly=ScriptCore token=0x06000831; lotId:
   System.UInt64, roomID: System.Int32, roomDef: Sims3.SimIFace.eRoomDefinition;
   return=Sims3.SimIFace.RoomInfo]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_GetInformationAboutRoomImpl
          (int *param_1,int param_2,int param_3,undefined4 param_4,int param_5)

{
  int *piVar1;
  char local_1b;
  char local_1a;
  char local_19;
  int local_18;
  int local_14;
  int local_10;
  int local_c;
  int local_8;
  uint local_4;
  
  GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_2,param_3,(uint *)0x0);
    if (piVar1 != (int *)0x0) {
      local_19 = '\0';
      local_1a = '\0';
      local_1b = '\0';
      FUN_00b00190(piVar1,param_4,param_5,&local_18,&local_14,&local_10,&local_c,&local_8,&local_19,
                   &local_1a,&local_1b);
      local_4 = -(uint)(local_1b != '\0') & 4 | -(uint)(local_1a != '\0') & 2 |
                (uint)(local_19 != '\0');
      goto LAB_00793804;
    }
  }
  local_18 = 0;
LAB_00793804:
  *param_1 = local_18;
  param_1[1] = local_14;
  param_1[2] = local_10;
  param_1[3] = local_c;
  param_1[4] = local_8;
  param_1[5] = local_4;
  return;
}

