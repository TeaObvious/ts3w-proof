/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 render-state pose publication consumer. Physical ECX render state plus pose
   pointer, RET 04. Null pose returns without work. Otherwise lazily allocate receiver+28 matrices
   with checked/saturating 64-byte row allocation size and call00574560 on the selected pose.
   Optional vertex-animation weights come through pose+4C and the actual rig count; native
   allocation groups four lanes using x87 FILD unsigned correction, multiply one quarter, ceil and
   truncating integer conversion. The COMISS/JBE loop replaces strictly negative ordered weights
   with positive zero; zero including negative zero and unordered NaN do not take that write. It
   writes each selected lane into retained receiver+30 storage. Full matrix expansion, rig metadata
   and downstream GPU consumers are separate callees. This whole body has no output
   vertex-byte/packet-stream memo and does not prove absence of such a cache elsewhere. */

void __thiscall AnimationRenderState_PublishPose(void *this,void *param_1)

{
  float *pfVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  longlong lVar5;
  float fVar6;
  uint uVar7;
  undefined4 uVar8;
  void *_Dst;
  undefined4 *puVar9;
  uint uVar10;
  uint uVar11;
  double dVar12;
  int local_50;
  undefined4 local_30 [11];
  
  if (param_1 != (void *)0x0) {
    if (*(int *)((int)this + 0x28) == 0) {
      if (*(int *)((int)this + 0x20) == 0) {
        uVar7 = 0;
      }
      else {
        uVar7 = FUN_00575750(*(int *)((int)this + 0x20) + 0x28);
      }
      uVar8 = FUN_004e4500(-(uint)((int)((ulonglong)uVar7 * 0x40 >> 0x20) != 0) |
                           (uint)((ulonglong)uVar7 * 0x40),"Animation/RenderState/WorldMatrices",0);
      *(undefined4 *)((int)this + 0x28) = uVar8;
    }
    if (*(int *)((int)this + 0x20) != 0) {
      FUN_00575750(*(int *)((int)this + 0x20) + 0x28);
    }
    FUN_00574560(param_1,*(int *)((int)this + 0x28));
    uVar7 = FUN_0057b7d0(*(int *)((int)this + 0x20));
    piVar3 = *(int **)((int)param_1 + 0x4c);
    if ((uVar7 != 0) && (piVar3 != (int *)0x0)) {
      fVar6 = (float)(int)uVar7;
      if ((int)uVar7 < 0) {
        fVar6 = fVar6 + FLOAT_00f99948;
      }
      dVar12 = ceil((double)(fVar6 * DAT_0106f8c8));
      local_50 = (int)(longlong)ROUND(dVar12);
      if (*(int *)((int)this + 0x30) == 0) {
        *(int *)((int)this + 0x2c) = local_50 * 4;
        lVar5 = ((longlong)ROUND(dVar12) & 0xffffffffU) * 0x10;
        _Dst = (void *)FUN_004e4500(-(uint)((int)((ulonglong)lVar5 >> 0x20) != 0) | (uint)lVar5,
                                    "Animation/RenderState/VertexAnimBlendWeights",0);
        *(void **)((int)this + 0x30) = _Dst;
        memset(_Dst,0,local_50 << 4);
      }
      uVar10 = 0;
      if (uVar7 != 0) {
        do {
          iVar4 = *piVar3;
                    /* COMISS zero,weight + JBE skips nonnegative and unordered values: only ordered
                       negative weights are overwritten with positive zero. */
          pfVar1 = (float *)(iVar4 + uVar10 * 4);
          puVar2 = (undefined4 *)(iVar4 + uVar10 * 4);
          if (*pfVar1 <= 0.0 && *pfVar1 != 0.0) {
            *puVar2 = 0;
          }
          puVar9 = (undefined4 *)((uVar10 >> 2) * 0x10 + *(int *)((int)this + 0x30));
          local_30[0] = *puVar9;
          local_30[1] = puVar9[1];
          local_30[2] = puVar9[2];
          local_30[3] = puVar9[3];
          uVar11 = uVar10 & 3;
          uVar10 = uVar10 + 1;
          local_30[uVar11] = *puVar2;
          *puVar9 = local_30[0];
          puVar9[1] = local_30[1];
          puVar9[2] = local_30[2];
          puVar9[3] = local_30[3];
        } while (uVar10 < uVar7);
      }
    }
  }
  return;
}

