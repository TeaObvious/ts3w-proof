/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC 1.67 pose-stream evaluation producer and native cache consumer. Physical cdecl five
   stack DWORD slots: UInt32 key, two stream receivers, binary32 interpolation input, and queryable
   owner; plain RET. Owner virtual+0C queried with17F1D88 yields the actual scene component. The
   optional native pose cache branches call00573EA0 with key and/or key+1 (DWORD ADD wraps), retain
   borrowed hits at+4 before use, create/prepare missing local-pose buffers and publish
   through00573F20. Other branches evaluate without this reuse; global flags and stream header bits
   select them. Complete body publishes selected pose through00573430 at009414F6, then updates
   attachment children through006FC770 at0094153E and continues original dirty/bounds/debug/state
   work. An existing callback/virtual implementation is not inferred here. Every normal exit sets
   AL=1; upper EAX bits are not a defined Boolean result, so stored undefined4 prototype is
   preserved. Decompiler extraout registers, stack aliases and suspicious float/pointer casts remain
   inference artifacts; this annotation establishes instruction-checked ordering/widths, not the
   entire blend kernel or current C# per-vertex upload-memo parity. */

undefined4 __cdecl
SceneAnimation_EvaluatePoseStreams
          (uint param_1,int *param_2,int *param_3,float param_4,int *param_5)

{
  byte bVar1;
  int *in_EAX;
  uint3 extraout_var;
  uint3 extraout_var_00;
  uint3 extraout_var_01;
  uint3 extraout_var_02;
  int iVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined3 extraout_var_03;
  uint3 extraout_var_04;
  undefined3 extraout_var_05;
  int *piVar5;
  void *pvVar6;
  char *pcVar7;
  char *pcVar8;
  char cVar9;
  int *extraout_ECX;
  int *extraout_ECX_00;
  int *extraout_ECX_01;
  int *extraout_ECX_02;
  int *extraout_ECX_03;
  uint uVar10;
  undefined4 uStack_1f0;
  undefined4 uStack_1ec;
  char *local_1e8;
  undefined4 *puStack_1e4;
  char *pcStack_1e0;
  int *local_1dc;
  void *pvStack_1d8;
  int *piStack_1d4;
  char *local_1d0;
  int iStack_1cc;
  undefined4 auStack_1c8 [2];
  int iStack_1c0;
  int iStack_1bc;
  int iStack_1b8;
  int iStack_1b4;
  int iStack_1b0;
  int iStack_1ac;
  int iStack_1a8;
  int iStack_1a4;
  int iStack_1a0;
  int iStack_19c;
  int iStack_198;
  int iStack_194;
  int iStack_190;
  int iStack_18c;
  int iStack_188;
  int iStack_184;
  undefined4 uStack_180;
  int *piStack_17c;
  undefined4 *puStack_178;
  undefined4 uStack_174;
  float fStack_170;
  undefined4 uStack_16c;
  undefined1 auStack_160 [56];
  float fStack_128;
  uint uStack_ec;
  undefined4 auStack_e0 [14];
  float fStack_a8;
  uint uStack_6c;
  char cStack_60;
  float afStack_50 [19];
  
  if (param_5 == (int *)0x0) {
    local_1dc = (int *)0x0;
  }
  else {
    in_EAX = (int *)(**(code **)(*param_5 + 0xc))();
    local_1dc = in_EAX;
  }
  local_1e8 = (char *)0x0;
  local_1d0 = (char *)0x0;
  if (-1 < *param_2) {
    *param_2 = 0;
    *(undefined1 *)(param_2 + 5) = 1;
  }
  if (((char)param_2[5] == '\0') && (DAT_010f4ccc <= param_4)) {
    *param_2 = *param_2 + 4;
    if (-1 < *param_2) {
      FUN_00594af0(param_2,4);
      in_EAX = (int *)((uint)extraout_var << 8);
      if (-1 < *param_2) goto LAB_00940b85;
    }
    in_EAX = (int *)param_2[3];
    local_1e8 = *(char **)((int)in_EAX + *param_2 + -3);
  }
LAB_00940b85:
  if (-1 < *param_3) {
    *param_3 = 0;
    *(undefined1 *)(param_3 + 5) = 1;
  }
  if ((char)param_3[5] == '\0') {
    *param_3 = *param_3 + 4;
    if (-1 < *param_3) {
      FUN_00594af0(param_3,4);
      in_EAX = (int *)((uint)extraout_var_00 << 8);
      if (-1 < *param_3) goto LAB_00940bb6;
    }
    in_EAX = (int *)param_3[3];
    local_1d0 = *(char **)((int)in_EAX + *param_3 + -3);
  }
LAB_00940bb6:
  pvStack_1d8 = (void *)0x0;
  piStack_1d4 = (int *)0x0;
  if (-1 < *param_2) {
    *param_2 = 0;
    *(undefined1 *)(param_2 + 5) = 1;
  }
  if (((char)param_2[5] == '\0') && (DAT_010f4ccc <= param_4)) {
    in_EAX = (int *)param_2[4];
    pvStack_1d8 = (void *)((int)in_EAX + *param_2 + 1);
  }
  if (-1 < *param_3) {
    *param_3 = 0;
    *(undefined1 *)(param_3 + 5) = 1;
  }
  if ((char)param_3[5] == '\0') {
    in_EAX = (int *)param_3[4];
    piStack_1d4 = (int *)((int)in_EAX + *param_3 + 1);
  }
  puStack_1e4 = (undefined4 *)0x0;
  pcStack_1e0 = (char *)0x0;
  if (-1 < *param_2) {
    *param_2 = 0;
    *(undefined1 *)(param_2 + 5) = 1;
  }
  if (((char)param_2[5] == '\0') && (DAT_010f4ccc <= param_4)) {
    *param_2 = *param_2 + 4;
    if (-1 < *param_2) {
      FUN_00594af0(param_2,4);
      in_EAX = (int *)((uint)extraout_var_01 << 8);
      if (-1 < *param_2) goto LAB_00940c48;
    }
    in_EAX = (int *)param_2[3];
    puStack_1e4 = *(undefined4 **)((int)in_EAX + *param_2 + -3);
  }
LAB_00940c48:
  if (-1 < *param_3) {
    *param_3 = 0;
    *(undefined1 *)(param_3 + 5) = 1;
  }
  if ((char)param_3[5] == '\0') {
    *param_3 = *param_3 + 4;
    if (-1 < *param_3) {
      FUN_00594af0(param_3,4);
      in_EAX = (int *)((uint)extraout_var_02 << 8);
      if (-1 < *param_3) goto LAB_00940c76;
    }
    in_EAX = (int *)param_3[3];
    pcStack_1e0 = *(char **)((int)in_EAX + *param_3 + -3);
  }
LAB_00940c76:
  uStack_1ec = (undefined4 *)((uint)uStack_1ec & 0xffffff);
  if (local_1dc == (int *)0x0) {
LAB_00940ee2:
    if (-1 < *param_2) {
      *param_2 = 0;
      *(undefined1 *)(param_2 + 5) = 1;
    }
    if (((char)param_2[5] == '\0') && (DAT_010f4ccc <= param_4)) {
      FUN_00594a40(param_2,(uint)((int)pvStack_1d8 + (int)local_1e8));
      in_EAX = (int *)((uint)extraout_var_04 << 8);
    }
    if (-1 < *param_3) {
      *param_3 = 0;
      *(undefined1 *)(param_3 + 5) = 1;
    }
    if ((char)param_3[5] == '\0') {
      FUN_00594a40(param_3,(uint)((int)piStack_1d4 + (int)local_1d0));
      return CONCAT31(extraout_var_05,1);
    }
  }
  else {
    iVar2 = FUN_006f48e0((int)local_1dc);
    if (iVar2 == 0) {
LAB_00940ed1:
      bVar1 = FUN_006f4de0((int)local_1dc);
      in_EAX = (int *)CONCAT31(extraout_var_03,bVar1);
      if (bVar1 == 0) goto LAB_00940ee2;
    }
    else {
      bVar1 = FUN_00573820(iVar2);
      uStack_1ec = (undefined4 *)CONCAT13(bVar1,(undefined3)uStack_1ec);
      if (bVar1 == 0) goto LAB_00940ed1;
      FUN_00573f80(iVar2);
    }
    if ((_DAT_011e9e68 & 1) == 0) {
      _DAT_011e9e68 = _DAT_011e9e68 | 1;
      FUN_0054ca40(0x11e5b28);
      FUN_00f7f381((_onexit_t)&LAB_00f93e10);
    }
    if ((_DAT_011e9e68 & 2) == 0) {
      _DAT_011e9e68 = _DAT_011e9e68 | 2;
      FUN_0054ca40(0x11e17e8);
      FUN_00f7f381((_onexit_t)&LAB_00f93e00);
    }
    if ((_DAT_011e9e68 & 4) == 0) {
      _DAT_011e9e68 = _DAT_011e9e68 | 4;
      FUN_0054ca40(0x11dd4a8);
      FUN_00f7f381((_onexit_t)&LAB_00f93df0);
    }
    FUN_0054c900(0x11e5b28);
    FUN_0054c900(0x11e17e8);
    FUN_0054c900(0x11dd4a8);
    if (-1 < *param_2) {
      *param_2 = 0;
      *(undefined1 *)(param_2 + 5) = 1;
    }
    if ((((char)param_2[5] == '\0') && (DAT_010f4ccc <= param_4)) && (((uint)puStack_1e4 & 1) != 0))
    {
      FUN_0054c8c0(&DAT_011e5b28,param_2);
    }
    if (-1 < *param_3) {
      *param_3 = 0;
      *(undefined1 *)(param_3 + 5) = 1;
    }
    if (((char)param_3[5] == '\0') && (((uint)pcStack_1e0 & 1) != 0)) {
      FUN_0054c8c0(&DAT_011e17e8,param_3);
    }
    if (((*(byte *)((int)local_1dc + 0x29e) & 4) == 0) &&
       (((uStack_1ec._3_1_ != '\0' || (bVar1 = FUN_006f4de0((int)local_1dc), bVar1 != 0)) ||
        (DAT_011dd488 == 0)))) {
      uVar10 = (uint)pcStack_1e0 >> 2;
      pvVar3 = (void *)FUN_006f48e0((int)local_1dc);
      if ((pvVar3 != (void *)0x0) && (iVar2 = FUN_0054c8f0(0x11e17e8), iVar2 != 0)) {
        FUN_0093d3d0(auStack_1c8);
        FUN_0083a990(&iStack_1c0);
        iVar2 = FUN_00573e40(pvVar3,'\0');
        if (iVar2 != 0) {
          puVar4 = (undefined4 *)FUN_00573e40(pvVar3,'\0');
          FUN_0093e170(auStack_160,puVar4);
        }
        puVar4 = uStack_1ec;
        local_1d0 = (char *)(param_1 - uStack_ec);
        iStack_1cc = -(uint)(param_1 < uStack_ec);
        if (((uStack_ec == 0) && (1 < param_1)) || (local_1d0 == (char *)0x0 && iStack_1cc == 0)) {
          if ((param_4 < 0.0) || (fStack_128 < 0.0)) {
            fStack_170 = 0.0;
          }
          else {
            piStack_1d4 = (int *)((param_4 - fStack_128) * DAT_00fc2b9c);
            local_1d0 = (char *)0x0;
            fStack_170 = (float)((uint)piStack_1d4 &
                                (int)(FLOAT_00f998f0 - (float)piStack_1d4) >> 0x1f);
          }
        }
        else {
          fStack_170 = (float)CONCAT44(iStack_1cc,local_1d0) * DAT_00fc2b9c;
          if (0.0 <= fStack_128) {
            fStack_170 = fStack_170 - (FLOAT_00f998f8 - fStack_128) * DAT_00fc2b9c;
          }
          if (0.0 <= param_4) {
            fStack_170 = param_4 * DAT_00fc2b9c + fStack_170;
          }
        }
        iStack_1c0 = local_1dc[0x20];
        iStack_1bc = local_1dc[0x21];
        iStack_1b8 = local_1dc[0x22];
        iStack_1b4 = local_1dc[0x23];
        uStack_180 = *(undefined4 *)((int)pvVar3 + 0x20);
        iStack_1b0 = local_1dc[0x24];
        iStack_1ac = local_1dc[0x25];
        iStack_1a8 = local_1dc[0x26];
        iStack_1a4 = local_1dc[0x27];
        iStack_1a0 = local_1dc[0x28];
        iStack_19c = local_1dc[0x29];
        iStack_198 = local_1dc[0x2a];
        iStack_194 = local_1dc[0x2b];
        iStack_190 = local_1dc[0x2c];
        iStack_18c = local_1dc[0x2d];
        iStack_188 = local_1dc[0x2e];
        iStack_184 = local_1dc[0x2f];
        piStack_17c = local_1dc;
        uStack_16c = 2;
        if (*(int *)((int)pvVar3 + 0x24) == 0) {
          uStack_174 = 0;
        }
        else {
          uStack_174 = *(undefined4 *)(*(int *)((int)pvVar3 + 0x24) + 0xc);
        }
        puStack_178 = auStack_1c8;
        cVar9 = '\0';
        uStack_1ec = (undefined4 *)((uint)uStack_1ec & 0xffffff);
        if (DAT_011ce800 != 0) {
          cVar9 = *(char *)(DAT_011ce800 + 0x36);
          uStack_1ec._0_3_ = SUB43(puVar4,0);
          uStack_1ec = (undefined4 *)
                       CONCAT13(*(undefined1 *)(DAT_011ce800 + 0x37),(undefined3)uStack_1ec);
        }
        local_1e8 = (char *)0x0;
        if (((cVar9 == '\0') || ((uVar10 & 1) != 0)) ||
           ((param_4 < 0.0 || (iVar2 = FUN_0054c8f0(0x11e5b28), iVar2 == 0)))) {
          if ((uStack_1ec._3_1_ == '\0') || (((uint)pcStack_1e0 & 2) == 0)) {
            puVar4 = FUN_005749a0();
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)0x0;
            }
            else {
              piVar5 = extraout_ECX_03;
              FUN_007fd370(&stack0xfffffdfc,*(undefined4 **)((int)pvVar3 + 0x20));
              puVar4 = FUN_00575050(puVar4,piVar5);
            }
            FUN_00566590(&local_1e8,puVar4);
            pcVar7 = local_1e8;
            FUN_005744a0((int)local_1e8);
            FUN_0054c890(0x11e17e8);
          }
          else {
            puVar4 = FUN_005749a0();
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)0x0;
            }
            else {
              piVar5 = extraout_ECX_02;
              FUN_007fd370(&stack0xfffffdfc,*(undefined4 **)((int)pvVar3 + 0x20));
              puVar4 = FUN_00575050(puVar4,piVar5);
            }
            FUN_00566590(&local_1e8,puVar4);
            puStack_1e4 = (undefined4 *)AnimationPoseCache_FindByTick(pvVar3,param_1 + 1);
            pcVar7 = local_1e8;
            if (puStack_1e4 == (undefined4 *)0x0) {
              FUN_005744a0((int)local_1e8);
              FUN_0054c890(0x11e17e8);
              FUN_00574300((int)pcVar7);
              FUN_00574320((int)pcVar7);
              FUN_005742e0((int)pcVar7);
              puVar4 = (undefined4 *)FUN_004e4500(0x3860,"Animation/PoseEvalNode/LocalPoseBuffer",0)
              ;
              if (puVar4 == (undefined4 *)0x0) {
                puVar4 = (undefined4 *)0x0;
              }
              else {
                puVar4[1] = 0;
                *puVar4 = &PTR_FUN_010444a4;
                puVar4[0xe14] = 0;
              }
              FUN_00566590(&uStack_1ec,puVar4);
              puVar4 = uStack_1ec;
              FUN_0055d420(uStack_1ec,pcVar7);
              AnimationPoseCache_StoreByTick(pvVar3,puVar4,param_1 + 1);
              FUN_00565d20(&uStack_1ec);
            }
            else {
              puStack_1e4[1] = puStack_1e4[1] + 1;
              FUN_0055d2a0(puStack_1e4,local_1e8);
              FUN_00565d20((int *)&puStack_1e4);
            }
          }
        }
        else {
          puVar4 = FUN_005749a0();
          if (puVar4 == (undefined4 *)0x0) {
            puVar4 = (undefined4 *)0x0;
          }
          else {
            piVar5 = extraout_ECX;
            FUN_007fd370(&stack0xfffffdfc,*(undefined4 **)((int)pvVar3 + 0x20));
            puVar4 = FUN_00575050(puVar4,piVar5);
          }
          FUN_00566590(&local_1e8,puVar4);
          FUN_005744a0((int)local_1e8);
          piVar5 = (int *)FUN_0093e130(0x11dd4a8);
          piStack_1d4 = piVar5;
          FUN_0054c8e0(&DAT_011dd4a8,piVar5);
          pvStack_1d8 = (void *)FUN_0054c8f0(0x11e5b28);
          pvVar6 = (void *)FUN_0054c8f0(0x11e17e8);
          if ((uStack_1ec._3_1_ != '\0') && ((((uint)pcStack_1e0 | (uint)puStack_1e4) & 2) != 0)) {
            pvStack_1d8 = (void *)FUN_0093e150(0x11e5b28);
                    /* Actual native pose cache uses UInt32 input key; borrowed hit is retained
                       before use. */
            pcVar7 = (char *)AnimationPoseCache_FindByTick(pvVar3,param_1);
            pcStack_1e0 = pcVar7;
            if (pcVar7 == (char *)0x0) {
              puVar4 = (undefined4 *)FUN_004e4500(0x3860,"Animation/PoseEvalNode/LocalPoseBuffer",0)
              ;
              if (puVar4 == (undefined4 *)0x0) {
                puVar4 = (undefined4 *)0x0;
              }
              else {
                puVar4[1] = 0;
                *puVar4 = &PTR_FUN_010444a4;
                puVar4[0xe14] = 0;
              }
              FUN_00566590(&pcStack_1e0,puVar4);
              puVar4 = FUN_005749a0();
              if (puVar4 == (undefined4 *)0x0) {
                pcVar8 = (char *)0x0;
              }
              else {
                piVar5 = extraout_ECX_00;
                FUN_007fd370(&stack0xfffffdfc,*(undefined4 **)((int)pvVar3 + 0x20));
                pcVar8 = FUN_00575050(puVar4,piVar5);
              }
              if (pcVar8 != (char *)0x0) {
                *(int *)(pcVar8 + 4) = *(int *)(pcVar8 + 4) + 1;
              }
              local_1d0 = pcVar8;
              FUN_005744a0((int)pcVar8);
              FUN_0054c890(0x11e5b28);
              pcVar7 = local_1e8;
              FUN_0055d420(local_1e8,pcVar8);
              AnimationPoseCache_StoreByTick(pvVar3,(undefined4 *)pcVar7,param_1);
              FUN_00565d20((int *)&pvStack_1d8);
            }
            else {
              *(int *)(pcVar7 + 4) = *(int *)(pcVar7 + 4) + 1;
            }
            FUN_0055d390(pvStack_1d8,(undefined4 *)pcVar7);
            pvVar6 = (void *)FUN_0093e150(0x11e17e8);
                    /* DWORD key+1 wraps at FFFFFFFF; lookup itself compares zero-extended values,
                       not modular ages. */
            puVar4 = (undefined4 *)AnimationPoseCache_FindByTick(pvVar3,param_1 + 1);
            puStack_1e4 = puVar4;
            if (puVar4 == (undefined4 *)0x0) {
              puVar4 = (undefined4 *)FUN_004e4500(0x3860,"Animation/PoseEvalNode/LocalPoseBuffer",0)
              ;
              if (puVar4 == (undefined4 *)0x0) {
                puVar4 = (undefined4 *)0x0;
              }
              else {
                puVar4[1] = 0;
                *puVar4 = &PTR_FUN_010444a4;
                puVar4[0xe14] = 0;
              }
              FUN_00566590(&puStack_1e4,puVar4);
              puVar4 = FUN_005749a0();
              if (puVar4 == (undefined4 *)0x0) {
                pcVar7 = (char *)0x0;
              }
              else {
                piVar5 = extraout_ECX_01;
                FUN_007fd370(&stack0xfffffdfc,*(undefined4 **)((int)pvVar3 + 0x20));
                pcVar7 = FUN_00575050(puVar4,piVar5);
              }
              if (pcVar7 != (char *)0x0) {
                *(int *)(pcVar7 + 4) = *(int *)(pcVar7 + 4) + 1;
              }
              local_1d0 = pcVar7;
              FUN_005744a0((int)pcVar7);
              FUN_0054c890(0x11e17e8);
              puVar4 = uStack_1ec;
              FUN_0055d420(uStack_1ec,pcVar7);
              AnimationPoseCache_StoreByTick(pvVar3,puVar4,param_1 + 1);
              FUN_00565d20((int *)&pvStack_1d8);
            }
            else {
              puVar4[1] = puVar4[1] + 1;
            }
            FUN_0055d390(pvVar6,puVar4);
            FUN_00565d20((int *)&puStack_1e4);
            FUN_00565d20((int *)&pcStack_1e0);
            piVar5 = piStack_1d4;
          }
          FUN_0054c2b0(pvStack_1d8,FLOAT_00f998f8 - param_4);
          FUN_0054c2b0(pvVar6,param_4);
          (**(code **)(*piVar5 + 0xc))();
          (**(code **)(*piVar5 + 0xc))(pvVar6);
          puVar4 = auStack_1c8;
          FUN_0054c890(0x11dd4a8);
          (**(code **)(*piVar5 + 0x10))(pvVar6,puVar4,uStack_1f0);
          (**(code **)(*piVar5 + 0x10))(uStack_1ec);
          pcVar7 = local_1e8;
        }
                    /* Publish selected pose to render-state matrix/weight consumer before
                       attachment-child transforms. */
        AnimationRenderState_PublishPose(pvVar3,pcVar7);
        pvVar6 = (void *)FUN_005ebac0();
        if ((pvVar6 != (void *)0x0) && (*(int *)((int)pvVar3 + 0x20) != 0)) {
          uVar10 = FUN_005eccd0(pvVar6,(int *)(*(int *)((int)pvVar3 + 0x20) + 8));
          uVar10 = uVar10 & 0xcf00;
          if ((uVar10 == 0x200) || ((uVar10 == 0x400 || (uVar10 == 0x500)))) {
            FUN_005738b0(pvVar3,pcVar7);
          }
        }
        piVar5 = local_1dc;
                    /* Actual attachment-child walk follows pose publication; later dirty/bounds
                       work still executes. */
        SceneObject_UpdateAttachmentChildren(local_1dc);
        FUN_006f4d60((int)piVar5);
        FUN_006fa9f0((int)piVar5);
        if (cStack_60 != '\0') {
          uStack_6c = param_1;
          cStack_60 = '\x01';
          fStack_a8 = param_4;
          pvVar3 = (void *)FUN_00573e40(pvVar3,'\x01');
          if (pvVar3 != (void *)0x0) {
            cStack_60 = '\x01';
            FUN_0093e170(pvVar3,auStack_e0);
          }
        }
        FUN_00565d20((int *)&local_1e8);
        iVar2 = DAT_011ce800;
        if (DAT_011ce800 != 0) {
          if (*(char *)(DAT_011ce800 + 0x2f) != '\0') {
            pvVar3 = LoadPump_ReadFrameServiceGlobal();
            FUN_006facd0(piVar5,afStack_50);
            FUN_0093fc60((int)piVar5,(void *)((int)pvVar3 + 0x328),afStack_50,'\0',(void *)0x0,0,0,0
                         ,0,0,(int *)0x0,0);
          }
          if (*(char *)(iVar2 + 0x2e) != '\0') {
            FUN_0093d730(piVar5);
          }
        }
      }
    }
    FUN_0054c900(0x11e5b28);
    FUN_0054c900(0x11e17e8);
    in_EAX = (int *)FUN_0054c900(0x11dd4a8);
  }
                    /* AL=1 only; preserve inferred undefined4 return rather than claiming upper EAX
                       Boolean bits. */
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

