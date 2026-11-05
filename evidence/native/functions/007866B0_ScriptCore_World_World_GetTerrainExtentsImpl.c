/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011632b0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetTerrainExtentsImpl [assembly=ScriptCore token=0x06000753; ;
   return=Sims3.SimIFace.Rect]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_GetTerrainExtentsImpl(undefined4 *param_1)

{
  int iVar1;
  bool bVar2;
  
  iVar1 = DAT_011edbc4;
  bVar2 = DAT_011edbc4 != 0;
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if (bVar2) {
    *param_1 = *(undefined4 *)(iVar1 + 0xb4);
    param_1[1] = *(undefined4 *)(iVar1 + 0xb8);
    param_1[2] = *(undefined4 *)(iVar1 + 0xbc);
    param_1[3] = *(undefined4 *)(iVar1 + 0xc0);
  }
  return;
}

