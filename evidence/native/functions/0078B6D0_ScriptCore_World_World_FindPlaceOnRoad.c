/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011634e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindPlaceOnRoad [assembly=ScriptCore token=0x060007A1; objId:
   System.UInt64, pos: Sims3.SimIFace.Vector3&, option: System.UInt32, outPos:
   Sims3.SimIFace.Vector3&, outOrient: Sims3.SimIFace.Quaternion&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.World::World_FindPlaceOnRoad
          (undefined4 param_1,undefined4 param_2,float *param_3,int param_4,float *param_5,
          float *param_6)

{
  float fVar1;
  void *this;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 *local_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  this = ObjectRegistry_GetGlobal();
  puVar2 = ObjectRegistry_FindBorrowed(this,CONCAT44(param_2,param_1));
  if (puVar2 != (undefined4 *)0x0) {
    LOCK();
    puVar2[1] = puVar2[1] + 1;
    UNLOCK();
  }
  local_54 = puVar2;
  if ((param_3 != (float *)0x0) && (DAT_011edbc4 != (void *)0x0)) {
    fStack_48 = param_3[2];
    local_50 = *param_3;
    fStack_4c = param_3[1];
    fStack_44 = local_50;
    param_3 = (float *)FUN_00c7a440(DAT_011edbc4,puVar2,&local_50,param_4,&local_40,&local_20);
    if ((char)param_3 != '\0') {
      if (param_5 != (float *)0x0) {
        *param_5 = local_40;
        local_30 = local_40;
        fStack_2c = fStack_3c;
        fStack_28 = fStack_38;
        fStack_24 = fStack_34;
        param_5[1] = fStack_3c;
        param_5[2] = fStack_38;
      }
      if (param_6 != (float *)0x0) {
        *param_6 = local_20;
        param_6[1] = fStack_1c;
        local_30 = local_20;
        fStack_2c = fStack_1c;
        fStack_28 = fStack_18;
        fStack_24 = fStack_14;
        param_6[2] = fStack_18;
        param_6[3] = fStack_14;
      }
      uVar3 = FUN_007462e0((int *)&local_54);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  if (puVar2 != (undefined4 *)0x0) {
    param_3 = (float *)(puVar2 + 1);
    LOCK();
    fVar1 = *param_3;
    *param_3 = (float)((int)*param_3 + -1);
    UNLOCK();
    if (fVar1 == 1.4013e-45) {
      LOCK();
      *param_3 = 1.4013e-45;
      UNLOCK();
      param_3 = (float *)(**(code **)*puVar2)(1);
    }
  }
  return (uint)param_3 & 0xffffff00;
}

