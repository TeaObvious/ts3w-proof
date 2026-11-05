/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Mask-aware RaiseLower sample action reads the existing
   quantized height and routes the adjusted candidate to 0x10068C40. Height quantization occurs for
   each component/stamp, before a later component reads the sample. Analyst-assigned helper names
   are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

uint __thiscall CAW_SculptRaiseLowerSample(void *this,float param_1,float param_2,float param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  uint in_EAX;
  undefined4 uVar4;
  uint uVar5;
  void *this_00;
  float10 fVar6;
  float fVar7;
  float fVar8;
  
  fVar2 = param_2;
  fVar1 = param_1;
  if (((uint)param_1 < (uint)*(float *)((int)this + 0x14)) &&
     ((uint)param_2 < (uint)*(float *)((int)this + 0x18))) {
    in_EAX = *(uint *)((int)this + 0x2c);
    param_1 = 0.0;
    if ((in_EAX != 0) &&
       (((*(byte *)(in_EAX + 0x140) & 6) != 0 && (*(void **)((int)this + 0x30) != (void *)0x0)))) {
      uVar4 = FUN_101f0300(*(void **)((int)this + 0x30),(uint)fVar1,(uint)param_2,1,&param_1);
      in_EAX = (uint)CONCAT21((short)((uint)uVar4 >> 0x10),
                              (param_1 == DAT_10acb0d4) << 6 |
                              (NAN(param_1) || NAN(DAT_10acb0d4)) << 2 | 2U | param_1 < DAT_10acb0d4
                             ) << 8;
      if (param_1 == DAT_10acb0d4) goto LAB_10069527;
    }
    fVar3 = param_3;
    fVar8 = *(float *)((int)param_3 + 0x1c);
    fVar7 = (float)*(byte *)(*(int *)((int)param_3 + 0x18) + 0x2c);
    if (fVar8 == fVar7) {
      return (uint)CONCAT21((short)(in_EAX >> 0x10),
                            (fVar8 == fVar7) << 6 | (NAN(fVar8) || NAN(fVar7)) << 2 | 2U |
                            fVar8 < fVar7) << 8;
    }
    param_2 = fVar7;
    param_3 = fVar8;
    fVar6 = CAW_HeightRasterReadSample((int)this,(uint)fVar1,(uint)fVar2);
    if (fVar7 < fVar8) {
      uVar5 = CAW_HeightRasterStoreQuantized
                        (this_00,(int)fVar1,(int)fVar2,
                         (float)(((float10)1 - (float10)param_1) *
                                 ((float10)param_3 - (float10)param_2) *
                                 (float10)*(float *)((int)fVar3 + 0x20) + fVar6));
      return uVar5;
    }
    uVar5 = CAW_HeightRasterStoreQuantized
                      (this_00,(int)fVar1,(int)fVar2,
                       (float)(fVar6 - ((float10)1 - (float10)param_1) *
                                       ((float10)param_2 - (float10)param_3) *
                                       (float10)*(float *)((int)fVar3 + 0x20)));
    return uVar5;
  }
LAB_10069527:
  return in_EAX & 0xffffff00;
}

