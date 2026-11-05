/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   Receiver ECX is Tree component; two stackwords are destination manager and optional callback pointer; RET8, no Boolean success result. Row is0x50 bytes. 938CC0 clone internals and callback ABI remain unresolved. Failed clone/manager insertion skips that row; source destruction belongs to C71AB0, not this body. Rotation pseudo-vector scalar artifacts are not a quaternion algorithm specification; actual SSE instructions govern. Retained data/message3359DC3C and later dispatcher/renderer lifetime are separate. */
void __thiscall FUN_0095c620(void *this,int *param_1,undefined4 *param_2)

{
  float *pfVar1;
  undefined1 auVar2 [16];
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  char cVar5;
  void *this_00;
  int *piVar6;
  void *pvVar7;
  undefined4 *this_01;
  void *this_02;
  float *pfVar8;
  int iVar9;
  float *worldPosition;
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  undefined1 auVar16 [16];
  uint local_14c;
  uint local_144;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  undefined8 uStack_100;
  void *pvStack_f8;
  float fStack_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float fStack_d4;
  undefined4 uStack_d0;
  undefined **ppuStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  undefined4 auStack_c0 [16];
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 auStack_50 [19];
  
  iVar9 = *(int *)((int)this + 8);
  if ((iVar9 != 0) && (1 < (uint)((*(int *)(iVar9 + 0xc) - *(int *)(iVar9 + 8)) / 0x50))) {
    this_00 = ObjectRegistry_GetGlobal();
    piVar6 = (int *)FUN_0068f130(*(int *)((int)this + 4));
    if ((*(void **)((int)this + 4) == (void *)0x0) ||
       (pvVar7 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011edf08),
       pvVar7 == (void *)0x0)) {
      local_144 = 0;
    }
    else {
      local_144 = -(uint)(*(uint *)((int)pvVar7 + 0x18) != 0x7fffffff) &
                  *(uint *)((int)pvVar7 + 0x18);
    }
    worldPosition = *(float **)(*(int *)((int)this + 8) + 8);
    pfVar1 = *(float **)(*(int *)((int)this + 8) + 0xc);
    local_14c = 0;
    for (; worldPosition != pfVar1; worldPosition = worldPosition + 0x14) {
      this_01 = FUN_00938cc0(this_00,*(undefined4 **)((int)this + 4),0,0,0xffffffff);
      if (this_01 != (undefined4 *)0x0) {
        pvVar7 = Object_GetComponentByMask(this_01,DAT_011edf08);
        if (pvVar7 != (void *)0x0) {
          *(uint *)((int)pvVar7 + 0x2c) = *(uint *)((int)pvVar7 + 0x2c) & 0xffffff7f;
        }
        this_02 = Object_GetComponentByMask(this_01,DAT_011ea158);
        if (this_02 != (void *)0x0) {
          TransformComponent_SetWorldPosition(this_02,worldPosition);
        }
        cVar5 = (**(code **)(*piVar6 + 0x30))(this_01);
        if (cVar5 != '\0') {
          pfVar8 = (float *)TreePrimitive_WriteYawMatrix(worldPosition,auStack_50);
          fStack_80 = *pfVar8;
          fStack_7c = pfVar8[1];
          fStack_78 = pfVar8[2];
          fStack_74 = pfVar8[3];
          fStack_70 = pfVar8[4];
          fStack_6c = pfVar8[5];
          fStack_68 = pfVar8[6];
          fStack_64 = pfVar8[7];
          fStack_60 = pfVar8[8];
          fStack_5c = pfVar8[9];
          fStack_58 = pfVar8[10];
          fStack_54 = pfVar8[0xb];
          auVar14._4_4_ = fStack_80;
          auVar14._0_4_ = fStack_80;
          auVar14._8_4_ = fStack_80;
          auVar14._12_4_ = fStack_80;
          auVar12._4_4_ = fStack_6c;
          auVar12._0_4_ = fStack_6c;
          auVar12._8_4_ = fStack_6c;
          auVar12._12_4_ = fStack_6c;
          fStack_f0 = fStack_80 + fStack_6c;
          fStack_ec = fStack_80 + fStack_6c;
          fStack_e8 = fStack_80 + fStack_6c;
          fStack_e4 = fStack_80 + fStack_6c;
          fStack_e0 = fStack_f0 + fStack_58;
          fStack_dc = fStack_ec + fStack_58;
          fStack_d8 = fStack_e8 + fStack_58;
          fStack_d4 = fStack_e4 + fStack_58;
          if (fStack_e0 <= 0.0) {
            if ((fStack_80 <= fStack_6c) || (fStack_80 <= fStack_58)) {
              if (fStack_6c <= fStack_58) {
                auVar10._0_4_ = (fStack_58 - fStack_f0) + 1.0;
                auVar10._4_4_ = (fStack_58 - fStack_ec) + 1.0;
                auVar10._8_4_ = (fStack_58 - fStack_e8) + 1.0;
                auVar10._12_4_ = (fStack_58 - fStack_e4) + 1.0;
                auVar12 = sqrtps(auVar14,auVar10);
                auVar16._8_4_ = 0x3f000000;
                auVar16._0_8_ = 0x3f0000003f000000;
                auVar16._12_4_ = 0x3f000000;
                auVar14 = divps(auVar16,auVar12);
                fStack_110 = (fStack_78 + fStack_60) * auVar14._0_4_;
                fStack_10c = (fStack_68 + fStack_5c) * auVar14._4_4_;
                fStack_108 = auVar12._8_4_ * 0.5;
                fStack_104 = (fStack_7c - fStack_70) * auVar14._12_4_;
              }
              else {
                auVar4._4_4_ = (fStack_6c - (fStack_58 + fStack_80)) + 1.0;
                auVar4._0_4_ = (fStack_6c - (fStack_58 + fStack_80)) + 1.0;
                auVar4._8_4_ = (fStack_6c - (fStack_58 + fStack_80)) + 1.0;
                auVar4._12_4_ = (fStack_6c - (fStack_58 + fStack_80)) + 1.0;
                auVar14 = sqrtps(ZEXT416((uint)fStack_6c),auVar4);
                auVar13._8_4_ = 0x3f000000;
                auVar13._0_8_ = 0x3f0000003f000000;
                auVar13._12_4_ = 0x3f000000;
                auVar12 = divps(auVar13,auVar14);
                fStack_110 = (fStack_7c + fStack_70) * auVar12._0_4_;
                fStack_10c = auVar14._4_4_ * 0.5;
                fStack_108 = (fStack_68 + fStack_5c) * auVar12._8_4_;
                fStack_104 = (fStack_60 - fStack_78) * auVar12._12_4_;
              }
            }
            else {
              auVar3._4_4_ = (fStack_80 - (fStack_58 + fStack_6c)) + 1.0;
              auVar3._0_4_ = (fStack_80 - (fStack_58 + fStack_6c)) + 1.0;
              auVar3._8_4_ = (fStack_80 - (fStack_58 + fStack_6c)) + 1.0;
              auVar3._12_4_ = (fStack_80 - (fStack_58 + fStack_6c)) + 1.0;
              auVar12 = sqrtps(auVar12,auVar3);
              auVar15._8_4_ = 0x3f000000;
              auVar15._0_8_ = 0x3f0000003f000000;
              auVar15._12_4_ = 0x3f000000;
              auVar14 = divps(auVar15,auVar12);
              fStack_110 = auVar12._0_4_ * 0.5;
              fStack_10c = (fStack_7c + fStack_70) * auVar14._4_4_;
              fStack_108 = (fStack_78 + fStack_60) * auVar14._8_4_;
              fStack_104 = (fStack_68 - fStack_5c) * auVar14._12_4_;
            }
          }
          else {
            auVar2._4_4_ = fStack_dc + 1.0;
            auVar2._0_4_ = fStack_e0 + 1.0;
            auVar2._8_4_ = fStack_d8 + 1.0;
            auVar2._12_4_ = fStack_d4 + 1.0;
            auVar14 = sqrtps(ZEXT416((uint)fStack_e0),auVar2);
            auVar11._8_4_ = 0x3f000000;
            auVar11._0_8_ = 0x3f0000003f000000;
            auVar11._12_4_ = 0x3f000000;
            auVar12 = divps(auVar11,auVar14);
            fStack_110 = (fStack_68 - fStack_5c) * auVar12._0_4_;
            fStack_10c = (fStack_60 - fStack_78) * auVar12._4_4_;
            fStack_108 = (fStack_7c - fStack_70) * auVar12._8_4_;
            fStack_104 = auVar14._12_4_ * 0.5;
          }
          TransformComponent_SetWorldQuaternion(this_02,&fStack_110);
          LocationComponent_NotifyManagedLotUpdate((int)pvVar7);
          FUN_00c89a20(pvVar7,0xff,(int *)0x0);
          pvVar7 = Object_GetComponentByMask(this_01,DAT_011ea290);
          TreeData_CopySelectedPrimitive
                    (*(void **)((int)this + 8),local_14c,*(int *)((int)pvVar7 + 8));
          FUN_0095b910(pvVar7);
          uStack_c8 = this_01[2];
          uStack_c4 = this_01[3];
          uStack_d0 = 0x3359dc3c;
          ppuStack_cc = &PTR_PTR_0117cbf8;
          auStack_c0[0] = 0;
          FUN_008753c0(auStack_c0,(int *)((int)pvVar7 + 8));
          RenderCommand_EnqueueIfDispatcherExists((byte *)&uStack_d0);
          pvStack_f8 = LoadPump_ReadFrameServiceGlobal();
          if (param_2 != (undefined4 *)0x0) {
            (**(code **)*param_2)(this_01[2],this_01[3]);
          }
          iVar9 = (**(code **)(*param_1 + 0x40))();
          if (iVar9 == 1) {
            uStack_100 = FUN_00ab3de0(param_1,local_144,1);
          }
          ObjectEvents_Dispatch(0xb,this_01,&uStack_100);
          if (ppuStack_cc != (undefined **)0x0) {
            (**(code **)*ppuStack_cc)(auStack_c0);
          }
        }
      }
      local_14c = local_14c + 1;
    }
  }
  return;
}

