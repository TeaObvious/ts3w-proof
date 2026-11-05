/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163970 (original PC 1.67 TS3W.exe).
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
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if (piVar1 != (int *)0x0) {
      fVar2 = FUN_00b06e90((uint)piVar1,param_3,param_4);
      return fVar2;
    }
  }
  return (float10)DAT_00fab218;
}

