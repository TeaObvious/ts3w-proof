/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC167_STATIC_ROTATE_0050d320. Physical ECX service plus complete Window and DrawContext as two
   stack DWORDs; RET8. Existing inferred stdcall signature omits the actual ECX service and remains
   unchanged; the actual C uninitialized service local is a stack/register-recovery artifact, not
   Native behavior. Selects current renderer, constructs/intersects actual clip; transformed
   ancestor clip uses same local Window+b0 via512170 with center/halfsize. Sends message0D using
   separate DrawContext, then50EB00 flush. Physical message stores are authoritative over split C
   locals; no whole renderer/GPU backend equivalence inferred. */

void UiWindow_RecordSelfVisuals(int param_1,void *param_2)

{
  uint uVar1;
  float *pfVar2;
  code *pcVar3;
  bool bVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  undefined4 uVar9;
  int iVar10;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  undefined4 uStack_88;
  float fStack_84;
  void *pvStack_7c;
  float local_70;
  float fStack_6c;
  undefined4 uStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50 [4];
  void *pvStack_40;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (*(int *)(param_1 + 0x208) == 0) {
    uVar9 = FUN_005060f0();
    FUN_0053e580(param_2,uVar9);
  }
  else {
    FUN_0053e580(param_2,*(int *)(param_1 + 0x208));
  }
  uVar1 = *(uint *)(param_1 + 0x70) & 0x400;
  if ((uVar1 == 0) && ((*(byte *)(param_1 + 0x1f9) & 4) == 0)) {
    pcVar3 = *(code **)(*(int *)((int)param_2 + 0x60) + 0x10);
    iVar10 = 0;
    uVar9 = 0;
  }
  else {
    bVar4 = uVar1 != 0;
    if (bVar4) {
      *(undefined4 *)(param_1 + 0x60) = 0;
      *(undefined4 *)(param_1 + 100) = 0;
      *(float *)(param_1 + 0x68) = *(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40);
      *(float *)(param_1 + 0x6c) = *(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44);
    }
    if ((*(byte *)(param_1 + 0x1f9) & 4) != 0) {
      fVar7 = *(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40);
      fVar5 = (*(float *)(param_1 + 0x48) + *(float *)(param_1 + 0x40)) * _DAT_00f9b5b4;
      fVar6 = (*(float *)(param_1 + 0x4c) + *(float *)(param_1 + 0x44)) * _DAT_00f9b5b4;
      local_a0 = 0.0 - fVar7 * _DAT_00f9b5b4;
      fStack_9c = 0.0 - (*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) * _DAT_00f9b5b4;
      fStack_98 = 0.0 - _DAT_00f9b5b4 * 0.0;
      fStack_94 = 0.0 - fVar7 * _DAT_00f9b5b4;
      local_30 = _DAT_00f9b5b4;
      fStack_2c = _DAT_00f9b5b4;
      fStack_28 = _DAT_00f9b5b4;
      fStack_24 = _DAT_00f9b5b4;
      pfVar2 = (float *)UiTransform_TransformPoint((void *)(param_1 + 0xb0),&local_60,&local_a0);
      iVar10 = *(int *)(param_1 + 0x2c);
      fStack_98 = pfVar2[2];
      uStack_88 = 0;
      local_a0 = fVar5 + *pfVar2;
      fStack_9c = fVar6 + pfVar2[1];
      fStack_94 = fVar5 + pfVar2[3];
      local_90 = fVar5;
      fStack_84 = fVar5;
      fStack_8c = fVar6;
      for (; fStack_98 = fStack_98 + 0.0, iVar10 != 0; iVar10 = *(int *)(iVar10 + 0x2c)) {
        if ((*(uint *)(iVar10 + 0x70) & 0x400) != 0) {
          local_60 = 0.0 - fStack_9c;
          fStack_5c = 0.0 - fStack_9c;
          fStack_58 = 0.0 - fStack_9c;
          fStack_54 = 0.0 - fStack_9c;
          local_20 = 0.0 - local_a0;
          fStack_1c = 0.0 - local_a0;
          fStack_18 = 0.0 - local_a0;
          fStack_14 = 0.0 - local_a0;
          fVar5 = (*(float *)(iVar10 + 0x48) - *(float *)(iVar10 + 0x40)) + local_20;
          fVar6 = (*(float *)(iVar10 + 0x4c) - *(float *)(iVar10 + 0x44)) + local_60;
          if (bVar4) {
            if ((((*(float *)(param_1 + 0x68) <= local_20) ||
                 (fVar7 = *(float *)(param_1 + 0x60), fVar5 <= fVar7)) ||
                (*(float *)(param_1 + 0x6c) <= local_60)) || (fVar6 <= *(float *)(param_1 + 100))) {
              *(undefined4 *)(param_1 + 0x6c) = 0;
              *(undefined4 *)(param_1 + 100) = 0;
              *(undefined4 *)(param_1 + 0x68) = 0;
              *(undefined4 *)(param_1 + 0x60) = 0;
            }
            else {
              fVar8 = local_20;
              if (local_20 < fVar7) {
                fVar8 = fVar7;
              }
              *(float *)(param_1 + 0x60) = fVar8;
              fVar7 = *(float *)(param_1 + 100);
              if (*(float *)(param_1 + 100) <= local_60) {
                fVar7 = local_60;
              }
              *(float *)(param_1 + 100) = fVar7;
              if (*(float *)(param_1 + 0x68) < fVar5) {
                fVar5 = *(float *)(param_1 + 0x68);
              }
              *(float *)(param_1 + 0x68) = fVar5;
              fVar5 = *(float *)(param_1 + 0x6c);
              if (fVar6 <= *(float *)(param_1 + 0x6c)) {
                fVar5 = fVar6;
              }
              *(float *)(param_1 + 0x6c) = fVar5;
            }
          }
          else {
            *(float *)(param_1 + 0x60) = local_20;
            *(float *)(param_1 + 100) = local_60;
            *(float *)(param_1 + 0x68) = fVar5;
            *(float *)(param_1 + 0x6c) = fVar6;
          }
          bVar4 = true;
        }
        if ((*(byte *)(iVar10 + 0x1f9) & 4) == 0) break;
        fVar5 = (*(float *)(iVar10 + 0x48) + *(float *)(iVar10 + 0x40)) * _DAT_00f9b5b4;
        fVar6 = (*(float *)(iVar10 + 0x4c) + *(float *)(iVar10 + 0x44)) * _DAT_00f9b5b4;
        fStack_8c = *(float *)(iVar10 + 0x4c) - *(float *)(iVar10 + 0x44);
        local_90 = *(float *)(iVar10 + 0x48) - *(float *)(iVar10 + 0x40);
        uStack_88 = 0;
        local_a0 = local_a0 - local_90 * local_30;
        fStack_9c = fStack_9c - fStack_8c * fStack_2c;
        fStack_98 = fStack_98 - fStack_28 * 0.0;
        fStack_94 = fStack_94 - local_90 * fStack_24;
        fStack_84 = local_90;
        pfVar2 = (float *)UiTransform_TransformPoint((void *)(iVar10 + 0xb0),local_50,&local_a0);
        fStack_98 = pfVar2[2];
        uStack_68 = 0;
        local_a0 = fVar5 + *pfVar2;
        fStack_9c = fVar6 + pfVar2[1];
        fStack_94 = fVar5 + pfVar2[3];
        local_70 = fVar5;
        fStack_6c = fVar6;
        fStack_64 = fVar5;
      }
    }
    pcVar3 = *(code **)(*(int *)((int)param_2 + 0x60) + 0x10);
    iVar10 = param_1 + 0x60;
    uVar9 = 1;
  }
  (*pcVar3)(uVar9,iVar10);
  local_50[0] = 1.82169e-44;
  pvStack_40 = param_2;
  UiWindowService_DispatchEvent(pvStack_7c,(void *)0x0,(void *)(param_1 + 4),&fStack_58,0,0);
  UiDrawContext_FlushCommands((int)param_2);
  return;
}

