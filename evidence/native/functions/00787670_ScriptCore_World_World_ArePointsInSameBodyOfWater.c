/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163560 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ArePointsInSameBodyOfWater [assembly=ScriptCore token=0x060007B3; pos1:
   Sims3.SimIFace.Vector3, pos2: Sims3.SimIFace.Vector3; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_World__World_ArePointsInSameBodyOfWater
               (float param_1,undefined4 param_2,float param_3,float param_4,undefined4 param_5,
               float param_6)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  void *this;
  
  iVar2 = thunk_FUN_00835d40();
  if (iVar2 != 0) {
    iVar3 = FUN_00829600(iVar2);
    if (iVar3 != 0) {
      this = (void *)FUN_00829600(iVar2);
      bVar1 = FUN_006515e0(this,param_1,param_3,param_4,param_6);
      return bVar1;
    }
  }
  return false;
}

