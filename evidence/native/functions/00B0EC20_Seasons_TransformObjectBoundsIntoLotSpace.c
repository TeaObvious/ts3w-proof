/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Calls B0EA00 for the component-box corners and transforms that polygon
   into lot space. The decompiler incorrectly exposes a live-register angle as unaff_EBX; verify lot
   pose and trigonometric instructions before assigning an ABI. Output polygon and bounds are
   consumed by ABE060 for roof/snow admission. */

uint __cdecl
Seasons_TransformObjectBoundsIntoLotSpace(int *param_1,void *param_2,int *param_3,float *param_4)

{
  float fVar1;
  uint uVar2;
  undefined4 uVar3;
  float unaff_EBX;
  float10 fVar4;
  float10 fVar5;
  int iStack_84;
  int local_80 [3];
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
  undefined4 uStack_18;

  local_80[0] = 0;
  local_80[1] = 0;
  local_80[2] = 0;
  local_74 = "World/Lot/ObjectPolygonBoundsInLotSpace";
  if ((param_1 != (int *)0x0) &&
     (uVar2 = Seasons_GetObjectComponentBoundsPolygon(param_2,local_80,local_44),
     (char)uVar2 != '\0')) {
    (**(code **)(*param_1 + 100))(local_70);
    fVar4 = (float10)fsin((float10)unaff_EBX);
    uStack_30 = 0;
    uStack_24 = 0;
    uStack_18 = 0x3f800000;
    fVar5 = (float10)fcos((float10)unaff_EBX);
    fStack_2c = -0.0 - (float)fVar4;
    fVar1 = (float)fVar5;
    fStack_38 = (float)fVar5;
    fStack_34 = (float)fVar4;
    fStack_28 = (float)fVar5;
    fStack_20 = (float)-fVar5 * (float)local_74 + (float)fVar4 * fStack_6c;
    fStack_64 = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
    fStack_60 = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
    fStack_5c = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
    fStack_58 = fStack_2c * (float)local_74 - fVar1 * fStack_6c;
    fStack_1c = fStack_64;
    FUN_00b0e520(&iStack_84,&fStack_38,param_3);
    uVar2 = FUN_007ce1c0(param_3,param_4);
    uVar3 = 0;
    if (iStack_84 != 0) {
      uVar3 = FUN_004e44e0(iStack_84);
    }
    return CONCAT31((int3)((uint)uVar3 >> 8),(char)uVar2);
  }
  uVar2 = 0;
  if (local_80[0] != 0) {
    uVar2 = FUN_004e44e0(local_80[0]);
  }
  return uVar2 & 0xffffff00;
}


