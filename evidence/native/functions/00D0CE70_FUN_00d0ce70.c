/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX receiver and five physical stack words: firstpoint, secondpoint, scalar type, product, optional error record; lowAL Boolean, RET14. Codes1/2/3 construct temporary axis surface D0AB90, virtual4/20 then D0C600; A/B/C/E use68FEF0/D0B200, virtual4/20 then D0C9A0. Both paths release temporary ownership on success/failure. Other codes returnAL1. Decompiler float1.4013e-45 is integer1 in atomic XADD reference retirement, not floating refcount semantics. AB02D0 result is discarded by FSTP. Full validators, concrete vtables, factory failures and manager/resource lifetime remain open. */

uint __thiscall
FUN_00d0ce70(void *this,float *param_1,float *param_2,uint param_3,int param_4,void *param_5)

{
  float *pfVar1;
  float fVar2;
  float *pfVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  float *pfVar7;
  float *pfVar8;
  
  pfVar3 = param_2;
  pfVar7 = param_2 + 1;
  pfVar1 = param_1 + 1;
  pfVar8 = pfVar7;
  if (param_1[1] < param_2[1] || param_1[1] == param_2[1]) {
    pfVar8 = pfVar1;
  }
  if (*pfVar7 < *pfVar1 || *pfVar7 == *pfVar1) {
    pfVar7 = pfVar1;
  }
  param_2 = (float *)(*pfVar7 - *pfVar8);
  FUN_00ab02d0();
  if (((param_3 == 3) || (param_3 == 1)) || (param_3 == 2)) {
    param_2 = (float *)0x0;
    FUN_00d0ab90(this,*(int *)((int)this + 0xc),param_3,param_4,param_1,pfVar3,&param_2);
    pfVar1 = param_2;
    (**(code **)((int)*param_2 + 4))();
    (**(code **)((int)*pfVar1 + 0x20))();
    uVar5 = FUN_00d0c600(this,param_1,pfVar3,(int *)pfVar1,param_5);
    pfVar7 = pfVar1 + 1;
    if ((char)uVar5 == '\0') {
      LOCK();
      fVar2 = *pfVar7;
      *pfVar7 = (float)((int)*pfVar7 + -1);
      UNLOCK();
      if (fVar2 == 1.4013e-45) {
        LOCK();
        *pfVar7 = 1.4013e-45;
        UNLOCK();
        pfVar7 = (float *)(**(code **)*pfVar1)(1);
      }
      return (uint)pfVar7 & 0xffffff00;
    }
    LOCK();
    fVar2 = *pfVar7;
    *pfVar7 = (float)((int)*pfVar7 + -1);
    UNLOCK();
    if (fVar2 == 1.4013e-45) {
      LOCK();
      *pfVar7 = 1.4013e-45;
      UNLOCK();
      pfVar7 = (float *)(**(code **)*pfVar1)(1);
    }
  }
  else if (((param_3 == 10) || (param_3 == 0xb)) ||
          ((param_3 == 0xc || (pfVar7 = (float *)param_3, param_3 == 0xe)))) {
    param_2 = (float *)0x0;
    piVar4 = FUN_0068fef0((int *)&param_2);
    FUN_00d0b200(this,*(int *)((int)this + 0xc),param_4,param_1,pfVar3,piVar4);
    (**(code **)((int)*param_2 + 4))();
    (**(code **)((int)*param_2 + 0x20))();
    uVar5 = FUN_00d0c9a0(this,param_1,pfVar3,(int *)param_2,param_5);
    if ((char)uVar5 == '\0') {
      uVar6 = FUN_007462e0((int *)&param_2);
      return uVar6 & 0xffffff00;
    }
    uVar5 = FUN_007462e0((int *)&param_2);
    return CONCAT31((int3)((uint)uVar5 >> 8),1);
  }
  return CONCAT31((int3)((uint)pfVar7 >> 8),1);
}
