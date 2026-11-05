/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. cdecl position/direction pointers, RET. Null pointer reports
   original error and returns. Changed camera computes azimuth atan2(direction.z,-direction.x) and
   pitch from original asin path, stores degrees, updates camera globals/billboard bases. Computes
   clamped degree-linear horizontal and vertical SDK fade globals1164218/224 from the stored angle
   pairs. Ordinary VS9279/9277 instead consume cluster sine-space4A0 constants plus per-instance
   view Y and distance; existence of these SDK globals is not their use by the ordinary PC shader.
    */

void __cdecl SpeedTree_SetCameraAndSdkBillboardFades(float *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  undefined4 uVar3;
  int *piVar4;
  int *piVar5;
  float10 fVar6;
  float local_30;
  float local_2c;
  float local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  float local_18;
  float local_14;
  float local_10;
  float local_c;
  float local_8;
  float local_4;
  
  if ((param_1 == (float *)0x0) || (param_2 == (float *)0x0)) {
    FUN_007ba7b0("SetCamera() requires non-NULL position and direction values");
  }
  else {
    local_28 = 0.0;
    local_2c = 0.0;
    local_30 = 0.0;
    local_1c = 0;
    local_20 = 0;
    local_24 = 0;
    FUN_007b83f0(&local_30,&local_24);
    fVar1 = *param_2;
    local_c = *param_1;
    local_8 = param_1[1];
    local_4 = param_1[2];
    local_14 = param_2[1];
    fVar2 = param_2[2];
    local_18 = fVar1;
    local_10 = fVar2;
    if ((((local_30 != local_c) || (local_2c != local_8)) || (local_28 != local_4)) ||
       (uVar3 = FUN_007b8370(&local_24,&local_18), (char)uVar3 != '\0')) {
      fVar6 = (float10)fpatan((float10)fVar2,-(float10)fVar1);
      DAT_011d9630 = (float)(fVar6 * (float10)_DAT_01016f08);
      fVar6 = (float10)_CIasin();
      DAT_011d9634 = (float)(fVar6 * (float10)_DAT_01017688);
      FUN_007b83b0(&local_c,&local_18);
      piVar5 = DAT_01164234;
      if (DAT_01164234 != DAT_01164238) {
        do {
          FUN_007b0d50(*(int *)(*piVar5 + 8));
          piVar4 = piVar5 + 1;
          *(undefined1 *)(*(int *)(*piVar5 + 0x18) + 0x30) = 0;
          piVar5 = piVar4;
        } while (piVar4 != DAT_01164238);
      }
      FUN_007b6dd0(DAT_011d9630);
      piVar5 = DAT_01164234;
      if (DAT_01164234 != DAT_01164238) {
        do {
          FUN_007b0d50(*(int *)(*piVar5 + 8));
          piVar4 = piVar5 + 1;
          *(undefined1 *)(*(int *)(*piVar5 + 0x18) + 0x30) = 0;
          piVar5 = piVar4;
        } while (piVar4 != DAT_01164238);
      }
      _DAT_01164218 = (ABS(DAT_011d9634) - DAT_01164210) / (DAT_01164214 - DAT_01164210);
      if (0.0 <= _DAT_01164218) {
        if (FLOAT_00f998f8 < _DAT_01164218) {
          _DAT_01164218 = FLOAT_00f998f8;
        }
      }
      else {
        _DAT_01164218 = 0.0;
      }
      _DAT_01164224 = (ABS(DAT_011d9634) - DAT_0116421c) / (DAT_01164220 - DAT_0116421c);
      if (_DAT_01164224 < 0.0) {
        _DAT_01164224 = 0.0;
        return;
      }
      if (FLOAT_00f998f8 < _DAT_01164224) {
        _DAT_01164224 = FLOAT_00f998f8;
        return;
      }
    }
  }
  return;
}

