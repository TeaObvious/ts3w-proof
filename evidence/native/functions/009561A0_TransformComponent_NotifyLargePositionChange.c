/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Beforelocal position store: requiresownercomponent011ea0fc;
   squared XYZ displacement>100 gates additionalbbox/component checks. Certainold/new bounds
   transition setsbit10000 and dispatchestwo numeric eventhashes. Their original symbolic names
   remain unknown. */

void __thiscall TransformComponent_NotifyLargePositionChange(void *this,float *newLocalPosition)

{
  char cVar1;
  char cVar2;
  void *pvVar3;
  float *pfVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float *pfVar9;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  
  if (*(void **)((int)this + 4) != (void *)0x0) {
    pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea0fc);
    if (pvVar3 != (void *)0x0) {
      fVar6 = *(float *)((int)this + 0x20) - *newLocalPosition;
      fVar7 = *(float *)((int)this + 0x24) - newLocalPosition[1];
      fVar8 = *(float *)((int)this + 0x28) - newLocalPosition[2];
      if ((DAT_010f6bf4 < fVar8 * fVar8 + fVar7 * fVar7 + fVar6 * fVar6) &&
         (*(void **)((int)this + 4) != (void *)0x0)) {
        pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011e9fc4);
        if (pvVar3 != (void *)0x0) {
          pfVar9 = (float *)((int)this + 0x10);
          pfVar4 = (float *)FUN_00948880((int)pvVar3);
          cVar1 = FUN_0097f770(pfVar4,pfVar9);
          pvVar3 = (void *)FUN_00948880((int)pvVar3);
          cVar2 = FUN_0097f710(pvVar3,newLocalPosition);
          if ((cVar1 != '\0') && (cVar2 == '\0')) {
            iVar5 = FUN_0055e030(*(void **)((int)this + 4));
            if (iVar5 != 0) {
              *(uint *)(iVar5 + 0x2c) = *(uint *)(iVar5 + 0x2c) | 0x10000;
            }
            local_a8 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
            local_a4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
            local_b0 = 0xecff5d63;
            local_ac = 0;
            local_a0 = 0;
            FUN_00693380(&local_b0);
            local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
            local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
            local_60 = 0x7727ad2e;
            local_5c = 0;
            FUN_00693380(&local_60);
            FUN_00582a70((int)&local_60);
            FUN_00582a70((int)&local_b0);
          }
        }
      }
    }
  }
  return;
}

