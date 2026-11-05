/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163968 (original PC 1.67 TS3W.exe).
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
    piVar1 = FUN_00c62810(DAT_011edbc4,param_2,param_3,(int *)0x0);
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

