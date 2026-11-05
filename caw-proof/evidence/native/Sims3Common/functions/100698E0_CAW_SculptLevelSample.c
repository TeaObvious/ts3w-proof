/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Mask-aware Level action reads the stored sample, moves
   toward the retained target by the allowed component amount and routes its candidate through the
   quantized setter. Zero opacity/fully masked cases return without a write. Decompiler casts of
   integer pixel arguments require raw ABI checks. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

uint __thiscall CAW_SculptLevelSample(void *this,float param_1,uint param_2,int *param_3)

{
  float fVar1;
  uint in_EAX;
  undefined4 uVar2;
  undefined4 extraout_EAX;
  uint uVar3;
  void *this_00;
  undefined1 uVar4;
  float10 fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  int *piVar9;
  float fVar10;
  
  uVar3 = param_2;
  fVar1 = param_1;
  if (((uint)*(float *)((int)this + 0x14) <= (uint)param_1) ||
     (*(uint *)((int)this + 0x18) <= param_2)) {
LAB_10069a0e:
    return in_EAX & 0xffffff00;
  }
  fVar8 = (float)param_3[7];
  in_EAX = (uint)CONCAT21((short)(in_EAX >> 0x10),
                          (fVar8 == 0.0) << 6 | NAN(fVar8) << 2 | 2U | fVar8 < 0.0) << 8;
  if (fVar8 == 0.0) goto LAB_10069a0e;
  param_1 = 0.0;
  if (((*(int *)((int)this + 0x2c) != 0) &&
      ((*(byte *)(*(int *)((int)this + 0x2c) + 0x140) & 6) != 0)) &&
     (*(void **)((int)this + 0x30) != (void *)0x0)) {
    uVar2 = FUN_101f0300(*(void **)((int)this + 0x30),(uint)fVar1,param_2,1,&param_1);
    in_EAX = (uint)CONCAT21((short)((uint)uVar2 >> 0x10),
                            (param_1 == DAT_10acb0d4) << 6 |
                            (NAN(param_1) || NAN(DAT_10acb0d4)) << 2 | 2U | param_1 < DAT_10acb0d4)
             << 8;
    if (param_1 == DAT_10acb0d4) goto LAB_10069a0e;
  }
  fVar10 = 0.0;
  piVar9 = *(int **)(*param_3 + 0x20);
  fVar6 = (float)param_3[8] * (float)param_3[7] * DAT_10adbf74;
  uVar4 = 0;
  fVar7 = DAT_10acb0d4;
  param_3 = piVar9;
  fVar5 = CAW_HeightRasterReadSample((int)this,(uint)fVar1,uVar3);
  fVar8 = (float)fVar5;
  fVar7 = (fVar8 - (float)piVar9) * (fVar7 - param_1);
  param_1 = fVar8;
  if (fVar7 <= fVar10) {
    uVar2 = extraout_EAX;
    if (fVar10 <= fVar7) goto LAB_10069a05;
    if (DAT_10aae188 - fVar6 <= fVar7) goto LAB_100699bf;
    fVar8 = fVar8 + fVar6;
  }
  else {
    if (fVar7 <= fVar6) {
LAB_100699bf:
      uVar3 = CAW_HeightRasterStoreQuantized(this_00,(int)fVar1,uVar3,(float)param_3);
      return uVar3;
    }
    fVar8 = fVar8 - fVar6;
  }
  uVar2 = CAW_HeightRasterStoreQuantized(this_00,(int)fVar1,uVar3,fVar8);
  uVar4 = (undefined1)uVar2;
LAB_10069a05:
  return CONCAT31((int3)((uint)uVar2 >> 8),uVar4);
}

