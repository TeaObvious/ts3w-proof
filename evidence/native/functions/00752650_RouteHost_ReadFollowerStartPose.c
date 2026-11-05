/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst static routing contract: Reads follower ObjectGuid from route via shared object
   resolver/target/transform. Missing object returns type5(StartObjectNotFound); successful
   position+facing acquisition returns1. Facing is follower orientation for RouteOption2 0x200,
   negated for0x400, zero otherwise. Holds target reference while reading. Copies an optional pair
   of output words to zero first. */

undefined4 __thiscall
RouteHost_ReadFollowerStartPose(void *this,undefined4 *param_1,float *param_2,undefined4 *param_3)

{
  int *piVar1;
  int iVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  void *pvVar6;
  undefined4 *puVar7;
  float *pfVar8;
  undefined4 uVar9;
  undefined4 *local_64;
  undefined4 local_60 [4];
  float local_50 [8];
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
  if (param_3 != (undefined4 *)0x0) {
    *param_3 = 0;
    param_3[1] = 0;
  }
  local_64 = (undefined4 *)0x0;
  pvVar6 = ObjectRegistry_GetGlobal();
  if (pvVar6 == (void *)0x0) {
    return 5;
  }
  puVar7 = ObjectRegistry_FindBorrowed(pvVar6,*(ulonglong *)((int)this + 0x40));
  FUN_00874fb0(&local_64,puVar7);
  puVar7 = local_64;
  if (local_64 == (undefined4 *)0x0) {
    return 5;
  }
  pvVar6 = Object_GetComponentByMask(local_64,DAT_011ea158);
  pfVar8 = TransformComponent_GetWorldPosition(pvVar6,local_60);
  fVar3 = pfVar8[1];
  fVar4 = pfVar8[2];
  fVar5 = pfVar8[3];
  *param_1 = *pfVar8;
  param_1[1] = fVar3;
  param_1[2] = fVar4;
  param_1[3] = fVar5;
  uVar9 = RoutingOptions_TestMask((void *)((int)this + 0x158),0x200,0,'\x01');
  if ((char)uVar9 == '\0') {
    uVar9 = RoutingOptions_TestMask((void *)((int)this + 0x158),0x400,0,'\x01');
    if ((char)uVar9 != '\0') {
      TransformComponent_GetWorldMatrix(pvVar6,local_50);
      *param_2 = 0.0 - local_30;
      param_2[1] = 0.0 - fStack_2c;
      param_2[2] = 0.0 - fStack_28;
      param_2[3] = 0.0 - fStack_24;
      goto LAB_00752735;
    }
    local_30 = 0.0;
    fStack_2c = 0.0;
    fStack_28 = 0.0;
    fStack_24 = 0.0;
  }
  else {
    TransformComponent_GetWorldMatrix(pvVar6,local_50);
  }
  *param_2 = local_30;
  param_2[1] = fStack_2c;
  param_2[2] = fStack_28;
  param_2[3] = fStack_24;
LAB_00752735:
  piVar1 = puVar7 + 1;
  LOCK();
  iVar2 = *piVar1;
  *piVar1 = *piVar1 + -1;
  UNLOCK();
  if (iVar2 == 1) {
    LOCK();
    *piVar1 = 1;
    UNLOCK();
    (**(code **)*puVar7)(1);
  }
  return 1;
}

