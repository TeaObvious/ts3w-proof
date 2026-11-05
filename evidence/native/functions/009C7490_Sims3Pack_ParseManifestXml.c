/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. Parse XML manifest stream. Recognizes
   Sims3Package/Sims3ChallengePackage roots; Type/SubType/AGSFlags attributes, version strings,
   display/description, package ID, dependencies, localized names/descriptions, PackagedFile
   children. Each PackagedFile allocates a record then calls field parser. May derive zero package
   GUID from first non-thumbnail entry. XML parser configuration, limits, embedded NUL and complete
   schema/failure policy unresolved. */

undefined1 __fastcall Sims3Pack_ParseManifestXml(int param_1)

{
  int *piVar1;
  int *piVar2;
  bool bVar3;
  undefined4 uVar4;
  int *piVar5;
  byte *pbVar6;
  uint uVar7;
  undefined4 *puVar8;
  uint *puVar9;
  undefined4 *puVar10;
  int iVar11;
  void *pvVar12;
  void *pvVar13;
  longlong lVar14;
  undefined1 local_22d;
  char *pcStack_22c;
  int *piStack_228;
  int local_224;
  int *piStack_220;
  _GUID _Stack_21c;
  int aiStack_20c [4];
  int aiStack_1fc [4];
  int aiStack_1ec [4];
  int aiStack_1dc [8];
  int aiStack_1bc [4];
  undefined4 auStack_1ac [11];
  void *pvStack_180;
  int aiStack_174 [4];
  int aiStack_164 [4];
  undefined4 auStack_154 [4];
  int aiStack_144 [4];
  int aiStack_134 [4];
  undefined4 auStack_124 [4];
  int aiStack_114 [4];
  int aiStack_104 [4];
  undefined1 auStack_f4 [16];
  uint auStack_e4 [4];
  uint auStack_d4 [4];
  undefined4 local_c4 [49];
  
  local_22d = 0;
  local_224 = param_1;
  FUN_004b8890(local_c4,0);
  FUN_004b6c00(local_c4);
  FUN_004b4960(auStack_1ac,(char *)0x0,0);
  uVar4 = FUN_004b52b0(local_c4,auStack_1ac);
  if ((char)uVar4 != '\0') {
    FUN_009c47d0((uint *)(param_1 + 4));
    piVar5 = FUN_004b45a0(auStack_1ac,(int *)&pcStack_22c,(byte *)"Sims3Package");
    pvVar13 = *(void **)(*piVar5 + 8);
    if (pvVar13 == pvStack_180) {
      piVar5 = FUN_004b45a0(auStack_1ac,(int *)&piStack_228,(byte *)"Sims3ChallengePackage");
      pvVar13 = *(void **)(*piVar5 + 8);
      if (pvVar13 == pvStack_180) goto LAB_009c7547;
    }
    if (pvVar13 == (void *)0x0) {
LAB_009c7547:
      FUN_004b47a0(auStack_1ac);
      FUN_004b74d0(local_c4);
      return 0;
    }
    if (*(int **)((int)pvVar13 + 0x38) == (int *)((int)pvVar13 + 0x38)) {
      *(undefined4 *)(param_1 + 0xa8) = 0;
    }
    else {
      pbVar6 = FUN_004b46e0(pvVar13,&DAT_01051304);
      if ((pbVar6 != (byte *)0x0) && (*(char **)(pbVar6 + 0x18) != *(char **)(pbVar6 + 0x1c))) {
        uVar4 = FUN_009b1c40(*(char **)(pbVar6 + 0x18));
        *(undefined4 *)(param_1 + 0xa8) = uVar4;
      }
      pbVar6 = FUN_004b46e0(pvVar13,(byte *)"SubType");
      if ((pbVar6 != (byte *)0x0) && (*(char **)(pbVar6 + 0x18) != *(char **)(pbVar6 + 0x1c))) {
        lVar14 = FUN_004ffbb0(*(char **)(pbVar6 + 0x18),(undefined4 *)0x0,0x10);
        *(int *)(param_1 + 0xac) = (int)lVar14;
      }
      pbVar6 = FUN_004b46e0(pvVar13,(byte *)"AGSFlags");
      if ((pbVar6 != (byte *)0x0) && (*(char **)(pbVar6 + 0x18) != *(char **)(pbVar6 + 0x1c))) {
        lVar14 = FUN_004ffbb0(*(char **)(pbVar6 + 0x18),(undefined4 *)0x0,0x10);
        *(int *)(param_1 + 0xb0) = (int)lVar14;
      }
    }
    piStack_228 = *(int **)((int)pvVar13 + 0x24);
    piStack_220 = (int *)((int)pvVar13 + 0x24);
    local_22d = 1;
    if (piStack_228 != piStack_220) {
      do {
        pvVar13 = (void *)piStack_228[2];
        if (*(int *)((int)pvVar13 + 4) == 2) {
          pvVar12 = (void *)((int)pvVar13 + 8);
          uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"GameVersion");
          if (uVar7 == 0) {
            piVar5 = (int *)((int)pvVar13 + 0x24);
            if ((((int *)*piVar5 != piVar5) && (iVar11 = *(int *)(*piVar5 + 8), iVar11 != 0)) &&
               (*(int *)(iVar11 + 8) != *(int *)(iVar11 + 0xc))) {
              puVar8 = EaString_FromUtf8Bytes
                                 (aiStack_104,*(byte **)(iVar11 + 8),
                                  *(int *)(iVar11 + 0xc) - *(int *)(iVar11 + 8),(byte *)0x0);
              FUN_009c5100((void *)(param_1 + 0x14),(short *)*puVar8);
              FUN_004ef8f0(aiStack_104);
            }
          }
          else {
            uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"ArchiveVersion");
            if (uVar7 == 0) {
              iVar11 = *(int *)(*(int *)((int)pvVar13 + 0x24) + 8);
              if ((iVar11 != 0) && (*(int *)(iVar11 + 8) != *(int *)(iVar11 + 0xc))) {
                ScriptCore.EATrace::EATrace_LogImpl();
              }
            }
            else {
              uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"CodeVersion");
              if (uVar7 != 0) {
                uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"AssetVersion");
                if (uVar7 == 0) {
                  iVar11 = *(int *)(*(int *)((int)pvVar13 + 0x24) + 8);
                  if ((iVar11 != 0) && (*(char **)(iVar11 + 8) != *(char **)(iVar11 + 0xc))) {
                    lVar14 = FUN_008939e0(*(char **)(iVar11 + 8));
                    *(short *)(param_1 + 0xcc) = (short)lVar14;
                  }
                }
                else {
                  uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"MinReqVersion");
                  if (uVar7 == 0) {
                    iVar11 = *(int *)(*(int *)((int)pvVar13 + 0x24) + 8);
                    if ((iVar11 != 0) && (*(char **)(iVar11 + 8) != *(char **)(iVar11 + 0xc))) {
                      puVar8 = FUN_009aec90(auStack_f4,*(char **)(iVar11 + 8));
                      *(undefined4 *)(param_1 + 0xf0) = *puVar8;
                      *(undefined4 *)(param_1 + 0xf4) = puVar8[1];
                      *(undefined4 *)(param_1 + 0xf8) = puVar8[2];
                      *(undefined4 *)(param_1 + 0xfc) = puVar8[3];
                    }
                  }
                  else {
                    uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"DisplayName");
                    if (uVar7 == 0) {
                      piVar5 = (int *)((int)pvVar13 + 0x24);
                      if ((((int *)*piVar5 != piVar5) &&
                          (iVar11 = *(int *)(*piVar5 + 8), iVar11 != 0)) &&
                         (pbVar6 = *(byte **)(iVar11 + 8), pbVar6 != *(byte **)(iVar11 + 0xc))) {
                        puVar8 = EaString_FromUtf8Bytes
                                           (aiStack_144,pbVar6,*(int *)(iVar11 + 0xc) - (int)pbVar6,
                                            (byte *)0x0);
                        FUN_00408f50((void *)(param_1 + 0x88),(short *)*puVar8);
                        FUN_004ef8f0(aiStack_144);
                      }
                    }
                    else {
                      uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"Description");
                      if (uVar7 == 0) {
                        piVar5 = (int *)((int)pvVar13 + 0x24);
                        if ((((int *)*piVar5 != piVar5) &&
                            (iVar11 = *(int *)(*piVar5 + 8), iVar11 != 0)) &&
                           (*(int *)(iVar11 + 8) != *(int *)(iVar11 + 0xc))) {
                          puVar8 = EaString_FromUtf8Bytes
                                             (aiStack_174,*(byte **)(iVar11 + 8),
                                              *(int *)(iVar11 + 0xc) - *(int *)(iVar11 + 8),
                                              (byte *)0x0);
                          FUN_00408f50((void *)(param_1 + 0x98),(short *)*puVar8);
                          FUN_004ef8f0(aiStack_174);
                        }
                      }
                      else {
                        uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"PackageId");
                        if (uVar7 == 0) {
                          piVar5 = (int *)((int)pvVar13 + 0x24);
                          if ((((int *)*piVar5 != piVar5) &&
                              (iVar11 = *(int *)(*piVar5 + 8), iVar11 != 0)) &&
                             (*(int *)(iVar11 + 8) != *(int *)(iVar11 + 0xc))) {
                            FUN_00500c00(auStack_154);
                            puVar9 = FUN_005016a0(auStack_d4,*(byte **)(iVar11 + 8),(uint *)0x0,0x10
                                                 );
                            FUN_00500c90((void *)(param_1 + 0x100),puVar9);
                          }
                        }
                        else {
                          uVar7 = ByteString_CompareCaseInsensitive(pvVar12,(byte *)"Dependencies");
                          if (uVar7 == 0) {
                            pvVar12 = (void *)(local_224 + 0xbc);
                            piVar5 = (int *)((int)pvVar13 + 0x24);
                            *(undefined4 *)(local_224 + 0xc0) = *(undefined4 *)(local_224 + 0xbc);
                            if ((int *)*piVar5 != piVar5) {
                              for (piVar2 = (int *)*piVar5; piVar2 != piVar5;
                                  piVar2 = (int *)*piVar2) {
                                iVar11 = piVar2[2];
                                if (((*(int *)(iVar11 + 4) == 2) &&
                                    (uVar7 = ByteString_CompareCaseInsensitive
                                                       ((void *)(iVar11 + 8),(byte *)"Dependency"),
                                    uVar7 == 0)) &&
                                   ((iVar11 = *(int *)(*(int *)(iVar11 + 0x24) + 8), iVar11 != 0 &&
                                    (*(int *)(iVar11 + 8) != *(int *)(iVar11 + 0xc))))) {
                                  FUN_00500c00(auStack_124);
                                  puVar9 = FUN_005016a0(auStack_e4,*(byte **)(iVar11 + 8),
                                                        (uint *)0x0,0x10);
                                  FUN_00891c70(pvVar12,puVar9);
                                }
                              }
                            }
                          }
                          else {
                            uVar7 = ByteString_CompareCaseInsensitive
                                              (pvVar12,(byte *)"LocalizedNames");
                            if (uVar7 == 0) {
                              puVar8 = (undefined4 *)(param_1 + 0xd0);
                              FUN_009b3000(puVar8);
                              piVar5 = (int *)((int)pvVar13 + 0x24);
                              if ((int *)*piVar5 != piVar5) {
                                for (piVar2 = (int *)*piVar5; piVar2 != piVar5;
                                    piVar2 = (int *)*piVar2) {
                                  pvVar13 = (void *)piVar2[2];
                                  if ((*(int *)((int)pvVar13 + 4) == 2) &&
                                     (uVar7 = ByteString_CompareCaseInsensitive
                                                        ((void *)((int)pvVar13 + 8),
                                                         (byte *)"LocalizedName"), uVar7 == 0)) {
                                    pcStack_22c = "Scratch/DownloadContent/Sims3PackFile/language16"
                                    ;
                                    FUN_004088f0(aiStack_20c,&pcStack_22c);
                                    pcStack_22c = "Scratch/DownloadContent/Sims3PackFile/text16";
                                    FUN_004088f0(aiStack_1bc,&pcStack_22c);
                                    if ((*(int **)((int)pvVar13 + 0x38) !=
                                         (int *)((int)pvVar13 + 0x38)) &&
                                       ((pbVar6 = FUN_004b46e0(pvVar13,(byte *)"Language"),
                                        pbVar6 != (byte *)0x0 &&
                                        (*(int *)(pbVar6 + 0x18) != *(int *)(pbVar6 + 0x1c))))) {
                                      puVar10 = EaString_FromUtf8Bytes
                                                          (aiStack_114,*(byte **)(pbVar6 + 0x18),
                                                           *(int *)(pbVar6 + 0x1c) -
                                                           *(int *)(pbVar6 + 0x18),
                                                           (byte *)
                                                  "Scratch/DownloadContent/Sims3PackFile/language");
                                      FUN_00408e50(aiStack_20c,puVar10);
                                      FUN_004ef8f0(aiStack_114);
                                    }
                                    piVar1 = (int *)((int)pvVar13 + 0x24);
                                    if ((((int *)*piVar1 != piVar1) &&
                                        (iVar11 = *(int *)(*piVar1 + 8), iVar11 != 0)) &&
                                       (*(int *)(iVar11 + 4) == 5)) {
                                      puVar10 = EaString_FromUtf8Bytes
                                                          (aiStack_134,*(byte **)(iVar11 + 8),
                                                           *(int *)(iVar11 + 0xc) -
                                                           *(int *)(iVar11 + 8),
                                                           (byte *)
                                                  "Scratch/DownloadContent/Sims3PackFile/text");
                                      FUN_00408e50(aiStack_1bc,puVar10);
                                      FUN_004ef8f0(aiStack_134);
                                    }
                                    FUN_004563f0(aiStack_1dc,aiStack_20c,aiStack_1bc);
                                    FUN_004f1f20(puVar8,aiStack_1dc);
                                    bVar3 = WideString_EqualsLiteral
                                                      (aiStack_20c,(ushort *)&DAT_00fccff4);
                                    if (bVar3) {
                                      FUN_00408f50(aiStack_1dc,L"no-NO");
                                      FUN_004f1f20(puVar8,aiStack_1dc);
                                    }
                                    FUN_004ef9f0(aiStack_1dc);
                                    FUN_004ef8f0(aiStack_1bc);
                                    FUN_004ef8f0(aiStack_20c);
                                  }
                                }
                              }
                            }
                            else {
                              uVar7 = ByteString_CompareCaseInsensitive
                                                (pvVar12,(byte *)"LocalizedDescriptions");
                              if (uVar7 == 0) {
                                FUN_009b3000((undefined4 *)(param_1 + 0xe0));
                                piVar5 = (int *)((int)pvVar13 + 0x24);
                                if ((int *)*piVar5 != piVar5) {
                                  for (piVar2 = (int *)*piVar5; piVar2 != piVar5;
                                      piVar2 = (int *)*piVar2) {
                                    pvVar13 = (void *)piVar2[2];
                                    if ((*(int *)((int)pvVar13 + 4) == 2) &&
                                       (uVar7 = ByteString_CompareCaseInsensitive
                                                          ((void *)((int)pvVar13 + 8),
                                                           (byte *)"LocalizedDescription"),
                                       uVar7 == 0)) {
                                      pcStack_22c = 
                                      "Scratch/DownloadContent/Sims3PackFile/language16";
                                      FUN_004088f0(aiStack_1fc,&pcStack_22c);
                                      pcStack_22c = "Scratch/DownloadContent/Sims3PackFile/text16";
                                      FUN_004088f0(aiStack_1ec,&pcStack_22c);
                                      if ((*(int **)((int)pvVar13 + 0x38) !=
                                           (int *)((int)pvVar13 + 0x38)) &&
                                         ((pbVar6 = FUN_004b46e0(pvVar13,(byte *)"Language"),
                                          pbVar6 != (byte *)0x0 &&
                                          (*(int *)(pbVar6 + 0x18) != *(int *)(pbVar6 + 0x1c))))) {
                                        puVar8 = EaString_FromUtf8Bytes
                                                           (aiStack_164,*(byte **)(pbVar6 + 0x18),
                                                            *(int *)(pbVar6 + 0x1c) -
                                                            *(int *)(pbVar6 + 0x18),
                                                            (byte *)
                                                  "Scratch/DownloadContent/Sims3PackFile/language");
                                        FUN_00408e50(aiStack_1fc,puVar8);
                                        FUN_004ef8f0(aiStack_164);
                                      }
                                      piVar1 = (int *)((int)pvVar13 + 0x24);
                                      if ((((int *)*piVar1 != piVar1) &&
                                          (iVar11 = *(int *)(*piVar1 + 8), iVar11 != 0)) &&
                                         (*(int *)(iVar11 + 4) == 5)) {
                                        puVar8 = EaString_FromUtf8Bytes
                                                           (&_Stack_21c,*(byte **)(iVar11 + 8),
                                                            *(int *)(iVar11 + 0xc) -
                                                            *(int *)(iVar11 + 8),
                                                            (byte *)
                                                  "Scratch/DownloadContent/Sims3PackFile/text");
                                        FUN_00408e50(aiStack_1ec,puVar8);
                                        FUN_004ef8f0((int *)&_Stack_21c);
                                      }
                                      FUN_004563f0(aiStack_1dc,aiStack_1fc,aiStack_1ec);
                                      FUN_004f1f20((undefined4 *)(param_1 + 0xe0),aiStack_1dc);
                                      FUN_004ef9f0(aiStack_1dc);
                                      FUN_004ef8f0(aiStack_1ec);
                                      FUN_004ef8f0(aiStack_1fc);
                                    }
                                  }
                                }
                              }
                              else {
                                uVar7 = ByteString_CompareCaseInsensitive
                                                  (pvVar12,(byte *)"PackagedFile");
                                if (uVar7 == 0) {
                                  FUN_009c6da0((void *)(param_1 + 4));
                                  bVar3 = Sims3Pack_ParsePackagedFileFields
                                                    ((void *)(*(int *)(param_1 + 8) + -0x868),
                                                     pvVar13);
                                  if (!bVar3) {
                                    local_22d = 0;
                                    break;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        piStack_228 = (int *)*piStack_228;
        param_1 = local_224;
      } while (piStack_228 != piStack_220);
    }
  }
  FUN_00500c50(&_Stack_21c,0);
  iVar11 = _AfxIsEqualGUID(&_Stack_21c,(_GUID *)(param_1 + 0x100));
  if ((((char)iVar11 != '\0') && (iVar11 = *(int *)(param_1 + 4), iVar11 != *(int *)(param_1 + 8)))
     && (iVar11 != *(int *)(param_1 + 8))) {
    do {
      if (*(int *)(iVar11 + 0x85c) == 0) {
        FUN_00500c90(&_Stack_21c,(undefined4 *)(iVar11 + 8));
        FUN_00500c90((_GUID *)(param_1 + 0x100),&_Stack_21c.Data1);
        break;
      }
      iVar11 = iVar11 + 0x868;
    } while (iVar11 != *(int *)(param_1 + 8));
  }
  FUN_004b47a0(auStack_1ac);
  FUN_004b74d0(local_c4);
  return local_22d;
}

