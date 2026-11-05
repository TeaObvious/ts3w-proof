/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note. Physical ECX is the full component, float delta at EBP+8, RET4. Requires nonzero839640(component+8), then8399F0 updates controllers. COMISS/JBE at955CE0/CE3 requires interval+E0>0;955CED..CF4 gates on component+C0. ADDSS accumulates+E4, COMISS/JBE955D03/D0E requires elapsed>interval. One SUBSS/store and interface+68 call at955D23, with no catch-up backedge. The subsequent85F690 obstacle scan/interface+60 callback occurs later. C0 semantic writer, outer delta units, complete movement/retirement/error contracts remain separate; finite ordered inputs only for the prose numeric rule. Display alias Steering_UpdateControllersTravellingAndAvoidance is a reference-file annotation; database symbols are unchanged. */

void __thiscall FUN_00955c40(void *this,float param_1)

{
  int *piVar1;
  float fVar2;
  code *pcVar3;
  char cVar4;
  int iVar5;
  void *pvVar6;
  float *pfVar7;
  int *piVar8;
  int *****pppppiVar9;
  float fVar10;
  void **ppvVar11;
  undefined4 uVar12;
  int aiStack_30 [2];
  undefined4 *puStack_28;
  int *piStack_24;
  void *local_20;
  void *pvStack_1c;
  undefined4 uStack_18;
  char *pcStack_14;
  
  piVar1 = (int *)((int)this + 8);
  iVar5 = FUN_00839640((int)piVar1);
  if (iVar5 == 0) {
    FUN_00953720((int)this);
  }
  else {
    if ((*(void **)((int)this + 4) == (void *)0x0) ||
       (pvVar6 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea158),
       pvVar6 == (void *)0x0)) {
      cVar4 = '\0';
    }
    else {
      pfVar7 = TransformComponent_GetWorldPosition(pvVar6,&local_20);
      cVar4 = FUN_00952c70(this,pfVar7);
    }
    if (cVar4 != *(char *)((int)this + 200)) {
      *(char *)((int)this + 200) = cVar4;
      iVar5 = AnimationRenderState_GetWorldMatrices((int)piVar1);
      if (iVar5 != 0) {
        piVar8 = (int *)AnimationRenderState_GetWorldMatrices((int)piVar1);
        (**(code **)(*piVar8 + 4))();
      }
      FUN_00955280(this,0,(void *)0x0);
    }
    FUN_008399f0(piVar1,param_1);
    fVar2 = *(float *)((int)this + 0xe0);
    if ((0.0 < fVar2) && (*(float *)((int)this + 0xc0) != 0.0)) {
      fVar10 = *(float *)((int)this + 0xe4) + param_1;
      *(float *)((int)this + 0xe4) = fVar10;
      if (fVar2 < fVar10) {
        pcVar3 = *(code **)(*piVar1 + 0x68);
        *(float *)((int)this + 0xe4) = fVar10 - fVar2;
        (*pcVar3)();
      }
    }
    puStack_28 = *(undefined4 **)((int)this + 0x10c);
    if (puStack_28 != (undefined4 *)0x0) {
      LOCK();
      puStack_28[1] = puStack_28[1] + 1;
      UNLOCK();
    }
    piStack_24 = aiStack_30 + -5;
    iVar5 = FUN_00839640((int)piVar1);
    *piStack_24 = iVar5;
    if (iVar5 != 0) {
      LOCK();
      *(int *)(iVar5 + 4) = *(int *)(iVar5 + 4) + 1;
      UNLOCK();
    }
    piVar8 = FUN_00839d00(piVar1);
    pvVar6 = this;
    if (piVar8 != (int *)0x0) {
      pvVar6 = (void *)(**(code **)(*piVar8 + 4))();
      if (pvVar6 == (void *)0x0) {
        pvVar6 = this;
      }
      else {
        FUN_00874fb0(&puStack_28,*(undefined4 **)((int)pvVar6 + 0x10c));
      }
    }
    if (puStack_28 != (undefined4 *)0x0) {
      if ((*(int *)((int)this + 0x94) == 1) || (*(int *)((int)this + 0x94) == 4)) {
        local_20 = (void *)0x0;
        pvStack_1c = (void *)0x0;
        uStack_18 = 0;
        pcStack_14 = "Locomotion/ObstacleList";
        if (pvVar6 == (void *)0x0) {
          piVar8 = (int *)0x0;
        }
        else {
          piVar8 = (int *)((int)pvVar6 + 8);
        }
        cVar4 = '\0';
        uVar12 = 0;
        ppvVar11 = &local_20;
        pppppiVar9 = (int *****)FUN_00839640((int)piVar1);
        FUN_0085f690(piVar8,pppppiVar9,ppvVar11,uVar12,cVar4);
        if (local_20 != pvStack_1c) {
          (**(code **)(*piVar1 + 0x60))(local_20,(int)pvStack_1c - (int)local_20 >> 3);
        }
        if ((*(char *)(DAT_011da140 + 0x100) != '\0') &&
           (*(void **)(DAT_011da140 + 0xdc) != (void *)0x0)) {
          if (local_20 == pvStack_1c) {
            uVar12 = 0xffaaff00;
          }
          else {
            uVar12 = 0xffff0000;
          }
          FUN_0085a840(puStack_28,*(void **)(DAT_011da140 + 0xdc),uVar12);
        }
        if (local_20 != (void *)0x0) {
          Memory_FreeIfNonNull(local_20);
        }
      }
      piVar1 = puStack_28 + 1;
      LOCK();
      iVar5 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar5 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puStack_28)();
        return;
      }
    }
  }
  return;
}

