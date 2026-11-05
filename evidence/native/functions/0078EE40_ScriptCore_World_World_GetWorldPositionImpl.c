/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x011635a8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetWorldPositionImpl [assembly=ScriptCore token=0x060007B9; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation, worldPos: Sims3.SimIFace.Vector3&;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_GetWorldPositionImpl
          (int param_1,int param_2,int param_3,int param_4,char param_5,float *param_6)

{
  int *this;
  float fVar1;
  float fVar2;
  float fVar3;
  float local_3c;
  float local_38;
  int local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20 [7];
  
  local_30 = 0.0;
  fStack_2c = 0.0;
  fStack_28 = 0.0;
  uStack_24 = 0;
  fVar1 = 0.0;
  fVar2 = 0.0;
  fVar3 = 0.0;
  if ((DAT_011edbc4 != (void *)0x0) &&
     (this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0), fVar1 = local_30,
     fVar2 = fStack_2c, fVar3 = fStack_28, this != (int *)0x0)) {
    local_34 = (int)param_5;
    local_3c = (float)param_3 + _DAT_00f9b5b4;
    local_38 = (float)param_4 + _DAT_00f9b5b4;
    FUN_00adc750((int)this,&local_3c,local_20);
    FUN_00ab7040(this,local_20,&local_30);
    fVar1 = local_30;
    fVar2 = fStack_2c;
    fVar3 = fStack_28;
  }
  *param_6 = fVar1;
  param_6[1] = fVar2;
  param_6[2] = fVar3;
  return;
}

