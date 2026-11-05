/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, PC 1.67 TS3W.exe. SACS play-animation node producer. Validate node
   actor/key, determine timing/priority, resolve CLIP metadata and namespace rows, construct a
   controller request, create and submit a ClipController, then register listener/state outputs. The
   all-zero instance check reports -1 at the entry. A null resolved CLIP metadata reference does not
   itself return: namespace setup is skipped but request creation continues to 0x0093D620, whose
   null request clip invokes the animation manager's configured fallback. Verify raw instructions
   for indirect-call ABI and the guessed request structure; fallback duration and actual retail
   execution are not claimed.
   
   Analyst note (PC1.67 SACS migration contract): ECX play node; complete producer.007F8F22..61
   tests actor loop/interrupt bytes+72/+73 and retained loop+18, consumes first-animation token
   via007FFD50, then AtEnd bit1.007F9637..67 queries0093CA00 tail interruptibility only for a
   nonstable append candidate; NEG AL/SBB EAX,EAX/AND FFFFFFFE/ADD2 yields native mode0 when
   admitted,2 otherwise. This is one play producer, not a separate stop-node entry. Existing CLIP
   fallback/namespace/timing comments remain bounded. */

void __thiscall
SacsPlayAnimationNode_SubmitResolvedClip
          (void *this,void *param_1,int *param_2,undefined4 param_3,int *param_4)

{
  byte bVar1;
  bool bVar2;
  char cVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined4 *puVar6;
  int *piVar7;
  char *pcVar8;
  int *piVar9;
  uint *puVar10;
  int *piVar11;
  int iVar12;
  ushort *puVar13;
  int iVar14;
  LPCWSTR pWVar15;
  void *pvVar16;
  uint uVar17;
  bool bVar18;
  bool bVar19;
  uint *puVar20;
  undefined4 **ppuVar21;
  char local_452;
  int *local_448;
  uint local_444;
  undefined4 *local_440;
  ushort *local_43c;
  int *local_438;
  int *resolvedClipMetadata;
  void *local_430;
  ushort *local_42c;
  void *local_428;
  int local_424;
  void *local_420;
  undefined4 *puStack_41c;
  int *local_418 [2];
  int *local_410;
  uint local_40c;
  uint local_408;
  uint local_404;
  uint local_400;
  uint local_3fc;
  int local_3f8;
  int local_3f4;
  undefined4 *local_3f0 [2];
  undefined4 auStack_3e8 [6];
  int *local_3d0 [4];
  ushort local_3c0 [2];
  uint local_3bc [103];
  undefined1 local_220 [8];
  undefined1 local_218 [4];
  undefined1 local_214 [8];
  int local_20c;
  int *local_204;
  float local_200;
  undefined4 local_1fc;
  undefined1 local_1f8;
  undefined1 local_1f7;
  byte local_1f6;
  undefined1 local_1f5;
  undefined1 uStack_1f4;
  undefined2 uStack_1f3;
  undefined4 local_1f0 [56];
  WCHAR local_110 [134];
  
  if (param_1 == (void *)0x0) {
    return;
  }
  local_410 = (int *)*param_4;
  if (local_410 == (int *)0x0) {
    return;
  }
  local_430 = (void *)*local_410;
  if (local_430 == (void *)0x0) {
    return;
  }
  if ((local_410[6] == 0) && (local_410[7] == 0)) {
    SacsWalker_TrySetExecutionStatus(param_1,-1);
    return;
  }
  iVar12 = *(int *)((int)this + 0x78);
  local_452 = (char)param_2[0x35];
  bVar18 = false;
  uVar4 = SacsContext_AdmitActorNode(param_2,(int)param_1,iVar12);
  if ((char)uVar4 == '\0') {
    if ((iVar12 != 0) && (iVar12 != *(int *)((int)local_430 + 0x20))) {
      return;
    }
  }
  else {
    bVar18 = ((byte)*(undefined4 *)((int)this + 0x50) & 0x60) != 0x60;
    if (((iVar12 != 0) && (bVar2 = FUN_007f3ce0(param_2), bVar2)) &&
       ((local_452 != '\0' || (local_430 != *(void **)((int)param_1 + 8))))) {
      local_452 = '\x01';
    }
  }
  uVar5 = *(uint *)((int)this + 0x50) & 0x60;
  if (uVar5 == 0x20) {
    if ((char)param_2[0x35] == '\0') {
      bVar18 = true;
      local_452 = '\0';
    }
  }
  else if (uVar5 == 0x40) {
    bVar18 = true;
    local_452 = '\x01';
  }
  else if (bVar18) {
    uVar4 = FUN_007f3b50(param_2);
    if (((char)uVar4 != '\0') && (*(int *)(*param_2 + 0x40) != 0)) {
      local_452 = local_430 != *(void **)(*(int *)(*param_2 + 0x40) + 8);
    }
  }
  else {
    local_452 = '\0';
  }
  pvVar16 = local_430;
  local_428 = (void *)FUN_00581870(local_430,'\0');
  if (local_428 == (void *)0x0) {
    local_420 = (void *)0x0;
  }
  else {
    local_420 = (void *)FUN_0055e030(local_428);
  }
  bVar2 = false;
  if (((*(char *)((int)param_1 + 0x72) == '\0') && (*(char *)((int)param_1 + 0x73) == '\0')) &&
     (*(int *)((int)param_1 + 0x18) != 0)) {
LAB_007f8f4c:
    bVar19 = true;
    if (((byte)*(undefined4 *)((int)this + 0x50) & 1) != 1) goto LAB_007f8f5c;
  }
  else {
    cVar3 = FUN_007ffd50((int)pvVar16);
    bVar2 = true;
    if (cVar3 == '\0') goto LAB_007f8f4c;
LAB_007f8f5c:
    bVar19 = false;
  }
  uVar4 = *(undefined4 *)(*(int *)((int)this + 0x28) + 0x68);
  if (((byte)*(undefined4 *)((int)this + 0x50) & 4) == 4) {
    local_424 = *(int *)((int)this + 0x58);
  }
  else {
    local_424 = SacsContext_ResolveAnimationPriority(param_2);
  }
  if (local_428 == (void *)0x0) {
    return;
  }
  if (local_420 == (void *)0x0) {
    return;
  }
  local_400 = local_410[6];
  local_3fc = local_410[7];
  local_3f8 = local_410[8];
  local_3f4 = local_410[9];
  resolvedClipMetadata = (int *)0x0;
  puVar6 = FUN_007f7700(param_2,&local_400);
  FUN_0054e080(&resolvedClipMetadata,puVar6);
  puVar6 = (undefined4 *)FUN_004e4500(0x18,0x1020184,0);
  if (puVar6 == (undefined4 *)0x0) {
    local_440 = (undefined4 *)0x0;
  }
  else {
    local_440 = FUN_00582340(puVar6);
  }
  piVar9 = resolvedClipMetadata;
                    /* The resolved resource reference controls namespace setup only. Null takes the
                       branch at 0x007F9002 to controller-request construction at 0x007F90E9 instead
                       of returning. The request clip member is populated at 0x007F9113 and consumed
                       by the factory at 0x007F9624. */
  if (resolvedClipMetadata != (int *)0x0) {
    local_444 = local_3fc ^ local_400;
    puVar10 = &local_444;
    puVar20 = &local_408;
    piVar7 = FUN_007f5a40(param_2);
    FUN_007fd910(piVar7,puVar20,puVar10);
    piVar7 = FUN_007f5a40(param_2);
    uVar5 = *(uint *)(piVar7[1] + piVar7[2] * 4);
    uVar17 = local_408;
    if (local_408 == uVar5) {
      pcVar8 = FUN_0057ab30((int)piVar9);
      local_444 = HashLowercasedCStringFNV1(pcVar8);
      puVar10 = &local_444;
      ppuVar21 = local_3f0;
      piVar9 = FUN_007f5a40(param_2);
      puVar10 = (uint *)FUN_007fd910(piVar9,ppuVar21,puVar10);
      uVar17 = *puVar10;
      local_404 = puVar10[1];
      if (uVar17 != uVar5) goto LAB_007f9081;
    }
    else {
LAB_007f9081:
      PickCandidateMap_Begin((void *)(uVar17 + 4),local_418);
      piVar9 = *(int **)(*(int *)(uVar17 + 8) + *(int *)(uVar17 + 0xc) * 4);
      piVar7 = local_418[0];
      while (local_418[0] = piVar7, piVar7 != piVar9) {
        piVar11 = (int *)SacsContext_FindActorByHash(param_2,piVar7[1]);
        if (piVar11 != (int *)0x0) {
          AnimationNamespaces_InsertFirstBinding(local_440,*piVar7,piVar11);
        }
        FUN_007f6310((int *)local_418);
        piVar7 = local_418[0];
      }
    }
    puVar6 = local_440;
    SacsNamespaces_AppendParameterAliases(this,param_2,local_440);
    SacsNamespaces_AppendDriverActors(param_2,puVar6);
  }
  FUN_00940680(local_3d0);
  local_20c = local_424;
  local_1fc = uVar4;
  StatePointerSlots_AssignVirtualLifetime(local_220,(int *)&resolvedClipMetadata);
  local_204 = *(int **)((int)this + 0x68);
  if ((float)*(int **)((int)this + 0x68) == DAT_010f4ccc) {
    local_204 = (int *)FLOAT_00fab218;
  }
  FUN_00874fb0(local_214,local_440);
  if (((*(uint *)((int)this + 0x50) & 0x100) != 0) &&
     (local_200 = *(float *)((int)this + 0x6c), local_200 == DAT_010f4ccc)) {
    local_200 = FLOAT_00fab218;
  }
  puVar10 = (uint *)((int)this + 0xc0);
  FUN_007f6050(puVar10);
  if (((*puVar10 & 3) == 0) && (*puVar10 != 0)) {
    if ((*puVar10 & 3) == 0) {
      piVar9 = (int *)*puVar10;
    }
    else {
      piVar9 = (int *)0x0;
    }
    FUN_008c8d00(local_218,piVar9);
  }
  local_1f8 = *(undefined1 *)((int)local_430 + 0x25);
  bVar1 = (byte)*(undefined4 *)((int)this + 0x50);
  local_1f7 = (bVar1 & 0x80) == 0x80;
  if (*(uint *)((int)this + 0x54) < 0x104) {
    piVar9 = (int *)FUN_004afe80();
    cVar3 = (**(code **)(*piVar9 + 0xc))(&local_400,&local_448,0,0,0,0);
    if (cVar3 != '\0') {
      puVar6 = (undefined4 *)FUN_007f6090(local_448);
      FUN_007fd370(&local_438,puVar6);
      (**(code **)(*local_448 + 4))();
      piVar9 = local_438;
      if ((char)local_438[10] != '\0') {
        uVar4 = AnimationClipResource_GetFlags((int)local_438);
        local_1f6 = (byte)uVar4 & 1;
      }
      (**(code **)(*piVar9 + 4))();
    }
  }
  else {
    local_1f6 = (bVar1 & 2) == 2;
  }
  iVar12 = FUN_007f3b40(*(int *)((int)this + 0x28));
  if (((((byte)*(undefined4 *)(iVar12 + 0x3c) & 8) == 8) ||
      ((*(uint *)((int)this + 0x50) & 0x8000) != 0)) ||
     ((local_1f5 = 0, local_20c == 10000 && (iVar12 = FUN_00571950(local_428), iVar12 != 0)))) {
    local_1f5 = 1;
  }
  piVar9 = resolvedClipMetadata;
  if (*(char *)(*(int *)(*(int *)((int)this + 0x28) + 0x68) + 0x4d) != '\0') {
    local_1f6 = 1;
    local_1f7 = 1;
  }
  piVar7 = *(int **)((int)this + 0xc4);
  if ((piVar7 != (int *)0x0) || (*(int *)((int)this + 200) != 0)) {
    local_448 = (int *)0x0;
    if (piVar7 != (int *)0x0) {
      uVar5 = (*piVar7 + 1) * 0x10;
      if (0x1b0 < uVar5) {
        FUN_007f6460((int)local_3d0);
        if (resolvedClipMetadata == (int *)0x0) {
          return;
        }
        (**(code **)(*resolvedClipMetadata + 4))();
        return;
      }
      memcpy(local_3d0,piVar7,uVar5);
    }
    local_42c = local_3c0;
    if (piVar9 != (int *)0x0) {
      if ((char)piVar9[10] != '\0') {
        FUN_00578e70(local_1f0);
        FUN_00579460(local_1f0,piVar9[0x13],10);
        piVar9 = (int *)0x0;
        local_438 = (int *)0x0;
        iVar12 = FUN_00577a80((int)local_1f0);
        if (iVar12 != 0) {
          do {
            local_444 = 0;
            iVar12 = FUN_00577ae0(local_1f0,(uint)piVar9);
            if (iVar12 != 0) {
              do {
                local_43c = local_42c;
                if (*(uint **)((int)this + 0xc4) != (uint *)0x0) {
                  uVar5 = **(uint **)((int)this + 0xc4);
                  uVar17 = 1;
                  if (uVar5 != 0) {
                    puVar13 = local_3c0;
                    do {
                      if (((int *)(uint)*puVar13 == piVar9) && (*(uint *)(puVar13 + 2) == local_444)
                         ) {
                        local_43c = puVar13;
                        if (puVar13 != local_42c) goto LAB_007f9415;
                        break;
                      }
                      uVar17 = uVar17 + 1;
                      puVar13 = puVar13 + 8;
                    } while (uVar17 <= uVar5);
                  }
                }
                FUN_007f6140(local_1f0,(uint)piVar9,local_444,(int *)&local_43c);
LAB_007f9415:
                if ((local_43c != (ushort *)0x0) && (local_408 = 0, *(int *)((int)this + 200) != 0))
                {
                  do {
                    puVar6 = local_440;
                    piVar9 = (int *)(*(int *)((int)this + 0xcc) + local_408 * 8);
                    if (*(int *)(local_43c + 4) == *piVar9) {
LAB_007f9476:
                      if (local_43c == local_42c) {
                        local_42c = local_42c + 8;
                        local_448 = (int *)((int)local_448 + 1);
                      }
                      pWVar15 = (LPCWSTR)SacsContext_ReadParameterText(param_2,piVar9[1]);
                      if ((pWVar15 != (LPCWSTR)0x0) && (*pWVar15 != L'\0')) {
                        local_110[0]._0_1_ = 0;
                        uVar5 = Utf_EncodeWideBufferReportedLength
                                          (local_110,0xff,pWVar15,0xffffffff);
                        iVar12 = *piVar9;
                        *(undefined1 *)((int)local_110 + uVar5) = 0;
                        local_40c = uVar5;
                        pvVar16 = (void *)FUN_00581b70(local_440,iVar12);
                        if ((pvVar16 != (void *)0x0) &&
                           ((pvVar16 = Object_GetComponentByMask(pvVar16,DAT_011dd484),
                            pvVar16 != (void *)0x0 &&
                            (iVar12 = (**(code **)(*(int *)((int)pvVar16 + 8) + 0x20))(),
                            iVar12 != 0)))) {
                          piVar9 = (int *)(iVar12 + 0x28);
                          local_418[0] = piVar9;
                          puStack_41c = (undefined4 *)FUN_00575750((int)piVar9);
                          local_3f0[0] = (undefined4 *)0x0;
                          if (puStack_41c != (undefined4 *)0x0) {
                            do {
                              pcVar8 = (char *)FUN_00575770(piVar9,(int)local_3f0[0]);
                              uVar17 = FUN_004fe2a0(pcVar8);
                              if (uVar5 < uVar17) {
                                uVar5 = uVar17 - local_40c;
                                iVar12 = CString_CompareFoldedTableBytes
                                                   (pcVar8 + uVar5,(char *)local_110);
                                if ((iVar12 == 0) &&
                                   (uVar5 = HashLowercasedBufferFNV1((int)pcVar8,uVar5),
                                   uVar5 == *(uint *)(local_43c + 6))) {
                                  uVar5 = HashLowercasedBufferFNV1((int)pcVar8,uVar17);
                                  *(uint *)(local_43c + 6) = uVar5;
                                }
                              }
                              local_3f0[0] = (undefined4 *)((int)local_3f0[0] + 1);
                              uVar5 = local_40c;
                              piVar9 = local_418[0];
                            } while (local_3f0[0] < puStack_41c);
                          }
                        }
                      }
                    }
                    else {
                      iVar12 = FUN_00581b40(local_440,*(int *)(local_43c + 4));
                      iVar14 = FUN_00581b40(puVar6,*piVar9);
                      if (iVar12 == iVar14) goto LAB_007f9476;
                    }
                    local_408 = local_408 + 1;
                    piVar9 = local_438;
                  } while (local_408 < *(uint *)((int)this + 200));
                }
                uVar17 = local_444 + 1;
                local_444 = uVar17;
                uVar5 = FUN_00577ae0(local_1f0,(uint)piVar9);
              } while (uVar17 < uVar5);
            }
            piVar9 = (int *)((int)piVar9 + 1);
            local_438 = piVar9;
            piVar7 = (int *)FUN_00577a80((int)local_1f0);
          } while (piVar9 < piVar7);
        }
        FUN_00578dc0(local_1f0);
      }
      local_3d0[0] = local_448;
    }
  }
  pvVar16 = local_420;
                    /* Create the ClipController even when the resolved clip metadata reference is
                       null. The factory at 0x0093D620 then uses the animation manager's configured
                       fallback CLIP. Subsequent component submission/listener setup still runs;
                       deleting this node would remove those ownership and timing effects. */
  puVar6 = AnimationComponent_CreateClipController(local_420,(uint *)local_3d0);
  iVar12 = local_424;
  if (puVar6 != (undefined4 *)0x0) {
    puVar6[1] = puVar6[1] + 1;
  }
  puStack_41c = puVar6;
  if ((bVar19) && (bVar2)) {
    uVar4 = FUN_0093ca00(pvVar16,local_424);
    bVar19 = (char)uVar4 == '\0';
  }
  iVar14 = (-(uint)bVar19 & 0xfffffffe) + 2;
  if (bVar18) {
    pvVar16 = (void *)FUN_007f3bd0((int)param_2);
    if (pvVar16 != (void *)0x0) {
      local_448 = local_204;
      if ((float)local_204 < 0.0) {
        local_448 = (int *)0x0;
      }
      if (local_452 == '\0') {
        FUN_00582650(pvVar16,puVar6,iVar12,iVar14,local_448,local_200,local_1f7,local_1f5);
        *(undefined1 *)(param_2 + 0x35) = 1;
      }
      else {
        FUN_005825a0(pvVar16,puVar6,iVar12,0,local_448,local_200,local_1f7,local_1f5);
      }
    }
  }
  else {
    pvVar16 = (void *)FUN_007f3c20((int)param_2);
    if (pvVar16 == (void *)0x0) {
      (**(code **)(*(int *)((int)local_420 + 8) + 0x14))
                (iVar12,puVar6,iVar14,local_204,local_200,
                 CONCAT13(uStack_1f4,CONCAT12(local_1f5,CONCAT11(local_1f6,local_1f7))),0,0,
                 CONCAT22(uStack_1f3,CONCAT11(uStack_1f4,local_1f5)));
    }
    else {
      FUN_005825a0(pvVar16,puVar6,iVar12,iVar14,local_204,local_200,local_1f7,local_1f5);
    }
  }
  iVar14 = SacsContext_ResolveAnimationPriority(param_2);
  if (iVar12 == iVar14) {
    local_438 = (int *)CONCAT31(local_438._1_3_,1);
    if (*(void **)((int)param_1 + 8) != local_430) goto LAB_007f977e;
  }
  else {
LAB_007f977e:
    local_438 = (int *)((uint)local_438 & 0xffffff00);
  }
  FUN_007f6360(auStack_3e8,*(undefined4 *)((int)local_428 + 8),*(undefined4 *)((int)local_428 + 0xc)
               ,puVar6[8],1,(char)local_438,0,(int)puVar6,(int)local_440);
  FUN_00805d90(*(void **)((int)param_1 + 100),auStack_3e8,
               *(int *)(*(int *)((int)this + 0x28) + 0x68));
  uVar4 = SacsContext_UsesUnilateralTiming(param_2);
  if ((char)uVar4 == '\0') {
    SacsWalker_TrySetExecutionStatus(param_1,1);
    uVar5 = puVar6[8];
  }
  else {
    if ((local_452 != '\0') || (((byte)*(undefined4 *)((int)this + 0x50) & 0x60) == 0x60))
    goto LAB_007f980b;
    SacsWalker_TrySetExecutionStatus(param_1,1);
    uVar5 = puVar6[8];
  }
  RecordField14_StoreDword(*(void **)((int)param_1 + 100),uVar5);
LAB_007f980b:
  local_410[2] = *(int *)((int)local_428 + 8);
  local_410[3] = *(int *)((int)local_428 + 0xc);
  local_410[5] = iVar12;
  local_410[4] = puVar6[8];
  FUN_007f64d0((int)auStack_3e8);
  FUN_00565d20((int *)&puStack_41c);
  FUN_007f6460((int)local_3d0);
  if (resolvedClipMetadata != (int *)0x0) {
    (**(code **)(*resolvedClipMetadata + 4))();
  }
  return;
}

