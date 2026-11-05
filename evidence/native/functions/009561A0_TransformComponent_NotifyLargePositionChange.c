/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  byte local_b0 [8];
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  byte local_60 [8];
  undefined4 local_58;
  undefined4 local_54;
  
  if (*(void **)((int)this + 4) != (void *)0x0) {
    pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea0fc);
    if (pvVar3 != (void *)0x0) {
      fVar6 = *(float *)((int)this + 0x20) - *newLocalPosition;
      fVar7 = *(float *)((int)this + 0x24) - newLocalPosition[1];
      fVar8 = *(float *)((int)this + 0x28) - newLocalPosition[2];
      if ((100.0 < fVar8 * fVar8 + fVar7 * fVar7 + fVar6 * fVar6) &&
         (*(void **)((int)this + 4) != (void *)0x0)) {
        pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011e9fc4);
        if (pvVar3 != (void *)0x0) {
          pfVar9 = (float *)((int)this + 0x10);
          pfVar4 = (float *)ModelComponent_GetBoundsStorage((int)pvVar3);
          cVar1 = FUN_0097f770(pfVar4,pfVar9);
          pvVar3 = (void *)ModelComponent_GetBoundsStorage((int)pvVar3);
          cVar2 = FUN_0097f710(pvVar3,newLocalPosition);
          if ((cVar1 != '\0') && (cVar2 == '\0')) {
            iVar5 = FUN_0055e030(*(void **)((int)this + 4));
            if (iVar5 != 0) {
              *(uint *)(iVar5 + 0x2c) = *(uint *)(iVar5 + 0x2c) | 0x10000;
            }
            local_a8 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
            local_a4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
            local_b0[0] = 99;
            local_b0[1] = 0x5d;
            local_b0[2] = 0xff;
            local_b0[3] = 0xec;
            local_b0[4] = 0;
            local_b0[5] = 0;
            local_b0[6] = 0;
            local_b0[7] = 0;
            local_a0 = 0;
            RenderCommand_EnqueueIfDispatcherExists(local_b0);
            local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
            local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
            local_60[0] = 0x2e;
            local_60[1] = 0xad;
            local_60[2] = 0x27;
            local_60[3] = 0x77;
            local_60[4] = 0;
            local_60[5] = 0;
            local_60[6] = 0;
            local_60[7] = 0;
            RenderCommand_EnqueueIfDispatcherExists(local_60);
            FUN_00582a70((int)local_60);
            FUN_00582a70((int)local_b0);
          }
        }
      }
    }
  }
  return;
}

