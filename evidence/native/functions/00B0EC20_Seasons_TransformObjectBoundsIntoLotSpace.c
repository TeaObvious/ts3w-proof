/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Calls B0EA00 for the component-box corners and transforms that polygon
   into lot space. The decompiler incorrectly exposes a live-register angle as unaff_EBX; verify lot
   pose and trigonometric instructions before assigning an ABI. Output polygon and bounds are
   consumed by ABE060 for roof/snow admission. */

uint __cdecl
Seasons_TransformObjectBoundsIntoLotSpace(int *param_1,void *param_2,int *param_3,float *param_4)

{
  float fVar1;
  bool bVar2;
  uint uVar3;
  undefined4 extraout_EAX;
  undefined4 uVar4;
  uint extraout_EAX_00;
  float unaff_EBX;
  float10 fVar5;
  float10 fVar6;
  void *pvStack_84;
  void *local_80;
  undefined4 local_7c;
  undefined4 local_78;
  char *local_74;
  undefined1 local_70 [4];
  float fStack_6c;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float local_44 [3];
  float fStack_38;
  float fStack_34;
  undefined4 uStack_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  
  local_80 = (void *)0x0;
  local_7c = 0;
  local_78 = 0;
  local_74 = "World/Lot/ObjectPolygonBoundsInLotSpace";
  if ((param_1 == (int *)0x0) ||
     (uVar3 = Seasons_GetObjectComponentBoundsPolygon(param_2,(int *)&local_80,local_44),
     (char)uVar3 == '\0')) {
    uVar3 = 0;
    if (local_80 != (void *)0x0) {
      Memory_FreeIfNonNull(local_80);
      uVar3 = extraout_EAX_00;
    }
    return uVar3 & 0xffffff00;
  }
  (**(code **)(*param_1 + 100))(local_70);
  fVar5 = (float10)fsin((float10)unaff_EBX);
  uStack_30 = 0;
  uStack_24 = 0;
  fStack_18 = 1.0;
  fVar6 = (float10)fcos((float10)unaff_EBX);
  fStack_2c = -0.0 - (float)fVar5;
  fVar1 = (float)fVar6;
  fStack_38 = (float)fVar6;
  fStack_34 = (float)fVar5;
  fStack_28 = (float)fVar6;
  fStack_20 = (float)-fVar6 * (float)local_74 + (float)fVar5 * fStack_6c;
  fStack_64 = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
  fStack_60 = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
  fStack_5c = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
  fStack_58 = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
  fStack_1c = fStack_64;
  Geometry_TransformPolygonXZByMatrix3((int *)&pvStack_84,&fStack_38,param_3);
  bVar2 = Geometry_GetPolygonXZBounds(param_3,param_4);
  uVar4 = 0;
  if (pvStack_84 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_84);
    uVar4 = extraout_EAX;
  }
  return CONCAT31((int3)((uint)uVar4 >> 8),bVar2);
}

