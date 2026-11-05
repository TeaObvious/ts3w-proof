/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163970 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetPercentageOfWallsCoveredImpl [assembly=ScriptCore token=0x06000832;
   lotId: System.UInt64, roomID: System.Int32, roomDef: Sims3.SimIFace.eRoomDefinition;
   return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_World__World_GetPercentageOfWallsCoveredImpl
                  (int param_1,int param_2,short param_3,int param_4)

{
  int *piVar1;
  float10 fVar2;
  
  GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (piVar1 != (int *)0x0) {
      fVar2 = FUN_00b06e90((uint)piVar1,param_3,param_4);
      return fVar2;
    }
  }
  return (float10)-1.0;
}

