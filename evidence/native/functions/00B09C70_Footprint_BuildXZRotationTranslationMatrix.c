/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl. Uses x87
   FSIN/FCOS of heading. Forward matrix maps x'=x*cos+z*sin+tx, z'=-x*sin+z*cos+tz. Translation
   incorporates optional resource offset then lot XZ. Inverse flag changes rotation sign and inverse
   translation. Optional heading-sector/resource gate calls 0x00afbd30, 0x00affce0 and 0x00b05870;
   exact resource offset policy is not recovered here. */

void __cdecl
Footprint_BuildXZRotationTranslationMatrix
          (void *param_1,int param_2,float param_3,float param_4,float param_5,char param_6,
          float *param_7)

{
  float fVar1;
  float fVar2;
  uint uVar3;
  uint extraout_ECX;
  float10 fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float local_20 [2];
  float fStack_18;
  
  fVar5 = 0.0;
  fVar6 = 0.0;
  fVar7 = 0.0;
  if (((param_2 != 0) && (uVar3 = FUN_00afbd30(param_3), (extraout_ECX & 7) != uVar3)) &&
     (param_1 != (void *)0x0)) {
    uVar3 = FUN_00affce0(param_1,param_2);
    if ((char)uVar3 == '\0') {
      local_20[0] = 0.0;
      fStack_18 = 0.0;
    }
    else {
      FUN_00b05870(param_1,param_2,(uint *)local_20);
    }
    fVar5 = 0.0;
    fVar6 = local_20[0];
    fVar7 = fStack_18;
  }
  fVar1 = DAT_00f998f8;
  fVar4 = (float10)fsin((float10)param_3);
  param_7[2] = fVar5;
  param_7[5] = fVar5;
  fVar2 = DAT_00f998f0;
  param_7[8] = fVar1;
  fVar5 = (float)fVar4;
  fVar4 = (float10)fcos((float10)param_3);
  fVar1 = (float)fVar4;
  *param_7 = fVar1;
  if (param_6 != '\0') {
    param_7[1] = fVar5;
    param_7[3] = fVar2 - fVar5;
    param_7[4] = fVar1;
    param_7[6] = (fVar5 * param_5 - fVar1 * param_4) - fVar6;
    param_7[7] = ((fVar2 - fVar5 * param_4) - fVar1 * param_5) - fVar7;
    return;
  }
  param_7[1] = fVar2 - fVar5;
  param_7[3] = fVar5;
  param_7[4] = fVar1;
  param_7[6] = fVar5 * fVar7 + fVar1 * fVar6 + param_4;
  param_7[7] = (param_5 - fVar5 * fVar6) + fVar1 * fVar7;
  return;
}

