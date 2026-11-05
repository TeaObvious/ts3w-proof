/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 static: Three cdecl words:owner, XZ/signed-Int32-level point, UInt32 selector; x87
   height, plain RET. External eight-entry table controls spans. Roof selector2 stores
   BEA7F0(point,1)-0.25 binary32, then ordered roof>extended-floor selects roof;
   equality/less/unordered select stored floor32. Roof-null chain may use first stair or floor+0.2.
   This general clamp is distinct from C36360 nonnull-owner direct subtraction. Descriptive analyst
   role, not a recovered original symbol. */

float10 __cdecl WallHeight_ResolveVerticalSpan(float param_1,float *param_2,float param_3)

{
  void *pvVar1;
  void *this;
  void *this_00;
  undefined4 uVar2;
  float *pfVar3;
  float10 fVar4;
  float local_c;
  float local_8;
  int local_4;
  
  pfVar3 = param_2;
  pvVar1 = *(void **)((int)param_1 + 0x230);
  switch(param_3) {
  case 0.0:
    fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,param_2);
    return fVar4 + (float10)3.0;
  case 1.4013e-45:
    local_c = *param_2;
    local_8 = param_2[1];
    local_4 = (int)param_2[2] + 1;
    fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,&local_c);
    return fVar4;
  case 2.8026e-45:
    break;
  default:
    return (float10)0;
  case 5.60519e-45:
    local_c = *param_2;
    local_4 = (int)param_2[2] + 1;
    local_8 = param_2[1];
    fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,&local_c);
    return fVar4 - (float10)0.15;
  case 7.00649e-45:
    fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,param_2);
    return fVar4 + (float10)6.0;
  case 8.40779e-45:
    fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,param_2);
    return fVar4 + (float10)0.1875;
  case 9.80909e-45:
    if ((_DAT_011edb64 & 1) == 0) {
      _DAT_011edb64 = _DAT_011edb64 | 1;
      _DAT_011edb60 = 1.025;
    }
    fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,param_2);
    return fVar4 + (float10)_DAT_011edb60;
  }
  this = *(void **)((int)param_1 + 0x240);
  this_00 = *(void **)(*(int *)((int)param_1 + 0x18) + 0x2b4);
  param_3 = 0.0;
  if ((this == (void *)0x0) || (uVar2 = FUN_00be7380(this,param_2), (char)uVar2 == '\0')) {
    uVar2 = TryGetFirstMatchingStairHeight(this_00,pfVar3,&param_3);
    if ((char)uVar2 == '\0') {
      fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,pfVar3);
      return fVar4 + (float10)0.2;
    }
    return (float10)param_3;
  }
  fVar4 = RoofHeight_SampleWithFloorFallback(this,pfVar3,'\x01');
  param_1 = (float)(fVar4 - (float10)0.25);
  fVar4 = WallFloor_SampleLevelGridHeight(pvVar1,pfVar3);
  param_3 = (float)fVar4;
  pfVar3 = &param_1;
  if ((float10)param_1 <= fVar4) {
    pfVar3 = &param_3;
  }
  return (float10)*pfVar3;
}

