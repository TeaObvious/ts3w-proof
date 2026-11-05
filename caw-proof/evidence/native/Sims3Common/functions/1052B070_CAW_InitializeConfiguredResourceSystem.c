/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Initializes the global resource manager and database
   configuration. Calls raw config getter1038A530 for section ResourceSystem/key LoadHashTables and
   compares its UTF-16 output with original L"1" at10AAF2A0 and L"0" at10AE706C. Equality with1
   enables filename-table admission byte+764; equality with0 disables it; missing or other values
   retain its prior state (constructor initializes false). Filename-table enumeration remains lazy
   until the first lookup. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

uint __fastcall CAW_InitializeConfiguredResourceSystem(int *param_1)

{
  short sVar1;
  ushort uVar2;
  int ****ppppiVar3;
  int *****pppppiVar4;
  undefined *puVar5;
  undefined1 uVar6;
  char cVar7;
  bool bVar8;
  undefined4 *puVar9;
  void *pvVar10;
  short *psVar11;
  undefined2 *puVar12;
  short *psVar13;
  ushort *puVar14;
  short *psVar15;
  undefined2 *puVar16;
  LPCWSTR pWVar17;
  undefined1 *puVar18;
  int *piVar19;
  undefined4 uVar20;
  int iVar21;
  ushort *puVar22;
  int *piVar23;
  ushort *unaff_ESI;
  int *****pppppiVar24;
  undefined4 *puVar25;
  uint uVar26;
  float10 fVar27;
  int **ppiVar28;
  int ****local_50c;
  undefined4 *local_508;
  int ****local_504;
  int ****local_500;
  char *local_4fc;
  undefined4 *local_4f8;
  undefined *local_4f4;
  undefined *local_4f0;
  undefined2 *local_4ec;
  char *local_4e8;
  undefined2 *puStack_4e4;
  LPCWSTR local_4e0 [2];
  int local_4d8;
  undefined1 local_4d0 [4];
  int iStack_4cc;
  uint uStack_4c8;
  undefined4 uStack_4c4;
  undefined4 local_4b0;
  int local_4ac;
  int local_4a8;
  int *local_49c;
  int *local_498;
  int *local_494;
  int *local_490;
  char *local_48c;
  undefined4 local_488;
  undefined4 local_484;
  wchar_t *local_480;
  undefined4 local_47c;
  int local_478;
  char *local_474;
  wchar_t *local_470;
  undefined4 local_46c;
  undefined4 *local_468;
  short local_410 [520];
  
  uVar6 = FUN_10388920(L"ResourceSystem",L"AllowAutoUnload",1);
  *(undefined1 *)((int)param_1 + 0x1e9) = uVar6;
  local_468 = (undefined4 *)FUN_10918eb0(0x80228,"ResourceSystem/RWFileSysAllocator",0);
  if (local_468 == (undefined4 *)0x0) {
    local_468 = (undefined4 *)0x0;
    puVar9 = (undefined4 *)0x0;
  }
  else {
    *local_468 = &PTR_FUN_10b18c98;
    InitializeCriticalSection((LPCRITICAL_SECTION)(local_468 + 2));
    puVar9 = (undefined4 *)0xffffffff;
    puVar25 = local_468 + 0x2000a;
    for (iVar21 = 0x80; iVar21 != 0; iVar21 = iVar21 + -1) {
      *puVar25 = 0xffffffff;
      puVar25 = puVar25 + 1;
    }
  }
  param_1[0x75] = (int)local_468;
  if (local_468 != (undefined4 *)0x0) {
    local_470 = (wchar_t *)0x2;
    local_46c = 0x400;
    puVar9 = FUN_1083c760(&local_470);
    if ((puVar9 != (undefined4 *)0x0) && (DAT_10c8f978 != 0)) {
      cVar7 = FUN_10388920(L"ResourceSystem",L"LogRWFSCalls",0);
      if (cVar7 != '\0') {
        Animation_SetMissingAnimationCallback();
      }
      iVar21 = FUN_103889f0(L"ResourceSystem",L"ReadQuantum",0);
      if (0 < iVar21) {
        puVar9[9] = iVar21;
      }
      FUN_10917930(&local_488);
      local_474 = "File System Device";
      local_480 = (wchar_t *)0x2;
      puVar9[3] = local_488;
      puVar9[4] = local_484;
      puVar9[5] = 2;
      puVar9[6] = local_47c;
      puVar9[7] = local_478;
      puVar9[8] = "File System Device";
      FUN_1051cfb0(&local_4b0);
      cVar7 = FUN_1051d370(L"ResourceSystem",L"ThrottleKey");
      if ((cVar7 != '\0') && (local_4ac != local_4a8)) {
        puVar9 = (undefined4 *)FUN_10918eb0(0x14,"ResourceSystem/ThrottleKeyFilter",0);
        if (puVar9 == (undefined4 *)0x0) {
          pvVar10 = (void *)0x0;
        }
        else {
          pvVar10 = (void *)FUN_1051cfb0(puVar9);
        }
        param_1[0x1fc] = (int)pvVar10;
        if (pvVar10 != (void *)0x0) {
          FUN_1051d270(pvVar10,(int)&local_4b0);
          fVar27 = FUN_10388a40(L"ResourceSystem",L"ThrottleInitialDelay",DAT_10b5631c);
          local_508 = (undefined4 *)(float)fVar27;
          fVar27 = FUN_10388a40(L"ResourceSystem",L"ThrottleRate",_DAT_10b196b4);
          local_50c = (int ****)(float)fVar27;
          pvVar10 = (void *)FUN_10918eb0(0x20,"Debug/ThrottledDeviceDriver",0);
          if (pvVar10 == (void *)0x0) {
            puVar9 = (undefined4 *)0x0;
          }
          else {
            puVar9 = FUN_1052c0d0(pvVar10,"throttled:",local_508,(float)local_50c);
          }
          param_1[0x1fa] = (int)puVar9;
          if (puVar9 != (undefined4 *)0x0) {
            puVar9 = FUN_1083c830();
            param_1[0x1fb] = (int)puVar9;
          }
        }
      }
      pvVar10 = (void *)FUN_10918eb0(0x10,"ResourceSystem/ResourceManDeviceDriver",0);
      if (pvVar10 == (void *)0x0) {
        puVar9 = (undefined4 *)0x0;
      }
      else {
        puVar9 = FUN_10520a20(pvVar10,"resman:");
      }
      param_1[0x1fd] = (int)puVar9;
      if (puVar9 != (undefined4 *)0x0) {
        puVar9 = FUN_1083c830();
        param_1[0x1fe] = (int)puVar9;
      }
      pvVar10 = (void *)FUN_10918eb0(0x68,"ResourceSystem/StreamableDeviceDriver",0);
      if (pvVar10 == (void *)0x0) {
        puVar9 = (undefined4 *)0x0;
      }
      else {
        puVar9 = FUN_10520a40(pvVar10,"streamable:","resman:");
      }
      param_1[0x1ff] = (int)puVar9;
      if (puVar9 != (undefined4 *)0x0) {
        puVar9 = FUN_1083c830();
        param_1[0x200] = (int)puVar9;
      }
      pvVar10 = (void *)FUN_10918eb0(0x20,"ResourceSystem/FileExtTypeMap",0);
      if (pvVar10 == (void *)0x0) {
        iVar21 = 0;
      }
      else {
        local_50c = (int ****)0x10b195d4;
        iVar21 = FUN_10050d40(pvVar10,&local_50c);
      }
      param_1[0x1d3] = iVar21;
      cVar7 = FUN_1090f890((int)param_1);
      if (cVar7 != '\0') {
        FUN_108e50e0(-(uint)(param_1 != (int *)0x8) & (uint)param_1);
        local_50c = (int ****)0x10b195b8;
        FUN_10050d40(local_4d0,&local_50c);
        uVar26 = 0;
        if (param_1[0x1d0] - param_1[0x1cf] >> 1 != 0) {
          while( true ) {
            local_508 = (undefined4 *)(param_1[0x1cf] + uVar26 * 2);
            if (*(short *)(param_1[0x1cf] + uVar26 * 2) != 0) {
              local_50c = (int ****)((uint)local_50c & 0xffffff00);
              FUN_10528280(local_4d0,local_4e0,&local_508);
            }
            psVar13 = (short *)param_1[0x1d0];
            psVar15 = (short *)param_1[0x1cf];
            if (((int)psVar13 - (int)psVar15 >> 1 == 0) || (psVar11 = psVar15, psVar15 == psVar13))
            break;
            do {
              if (*psVar11 == (short)uVar26) break;
              psVar11 = psVar11 + 1;
            } while (psVar11 != psVar13);
            if (((psVar11 == psVar13) || (iVar21 = (int)psVar11 - (int)psVar15 >> 1, iVar21 == -1))
               || (uVar26 = iVar21 + 1, (uint)((int)psVar13 - (int)psVar15 >> 1) <= uVar26)) break;
          }
        }
        local_508 = (undefined4 *)param_1[0x1c7];
        local_4f8 = (undefined4 *)param_1[0x1c8];
        local_4fc = "ResourceSystem";
        local_504 = (int ****)&local_504;
        local_500 = (int ****)&local_504;
        local_50c = (int ****)0x0;
        if (local_508 != (undefined4 *)param_1[0x1c8]) {
          do {
            if ((LPCWSTR)*local_508 != (LPCWSTR)local_508[1]) {
              uVar26 = FUN_10910e20((LPCWSTR)*local_508);
              if ((char)uVar26 == '\0') {
LAB_1052b7bc:
                FUN_1041eeb0(&local_504);
                FUN_10001150((int)local_4d0);
                goto LAB_1052b7ce;
              }
              puVar12 = (undefined2 *)FUN_10918eb0(0x464,"ResourceSystem/DBDFAutoUpdate",0);
              if (puVar12 == (undefined2 *)0x0) {
                puVar12 = (undefined2 *)0x0;
              }
              else {
                puVar12 = FUN_108da7f0(puVar12);
              }
              puVar9 = local_508;
              FUN_108da470(puVar12,(LPCWSTR)*local_508);
              puVar9[4] = puVar12;
              piVar23 = (int *)param_1[0x1cb];
              local_49c = (int *)param_1[0x1cc];
              if (piVar23 != (int *)param_1[0x1cc]) {
                do {
                  if ((int *****)*piVar23 == (int *****)local_50c) {
                    FUN_1006a320(local_4e0,local_508);
                    FUN_10922640((int *)local_4e0);
                    FUN_1001f3b0(local_4e0,(int *)piVar23[1],(int *)piVar23[2]);
                    uVar26 = FUN_10910a60(local_4e0[0]);
                    if ((char)uVar26 == '\0') {
                      if ((2 < (int)(local_4d8 - (int)local_4e0[0] & 0xfffffffeU)) &&
                         (local_4e0[0] != (LPCWSTR)0x0)) {
                        FUN_10918e90((int)local_4e0[0]);
                      }
                      goto LAB_1052b7bc;
                    }
                    FUN_10922390(local_410,(ushort *)local_4e0[0]);
                    psVar13 = (short *)FUN_10922000(local_410);
                    local_4f4 = (undefined *)0x0;
                    local_4f0 = (undefined *)0x0;
                    local_4ec = (undefined2 *)0x0;
                    local_4e8 = "ResourceSystem";
                    FUN_1006a620(&local_4f4,psVar13);
                    FUN_109223c0(local_410);
                    local_48c = "ResourceSystem/ControlFileNames";
                    local_498 = (int *)FUN_10918eb0(4,"ResourceSystem/ControlFileNames",0);
                    puVar5 = local_4f4;
                    local_490 = local_498 + 1;
                    *local_498 = (int)local_4f4;
                    pppppiVar24 = &local_504;
                    local_494 = local_498 + 1;
                    puVar18 = local_4d0;
                    ppiVar28 = &local_498;
                    puVar16 = puVar12;
                    puVar14 = (ushort *)FUN_10a2ece0(local_410);
                    FUN_1052a770(puVar14,(uint)ppiVar28,puVar16,(int)puVar18,pppppiVar24);
                    if (local_498 != (int *)0x0) {
                      FUN_10918e90((int)local_498);
                    }
                    if ((2 < (int)((int)local_4ec - (int)puVar5 & 0xfffffffeU)) &&
                       (puVar5 != (undefined *)0x0)) {
                      FUN_10918e90((int)puVar5);
                    }
                    if ((2 < (int)(local_4d8 - (int)local_4e0[0] & 0xfffffffeU)) &&
                       (local_4e0[0] != (LPCWSTR)0x0)) {
                      FUN_10918e90((int)local_4e0[0]);
                    }
                  }
                  piVar23 = piVar23 + 5;
                } while (piVar23 != local_49c);
              }
            }
            local_50c = (int ****)((int)local_50c + 1);
            local_508 = local_508 + 5;
          } while (local_508 != local_4f8);
        }
        local_50c = local_504;
        if ((int *****)local_504 != &local_504) {
          do {
            ppppiVar3 = (int ****)local_50c[2];
            if (ppppiVar3 != (int ****)0x0) {
              iVar21 = param_1[-2];
              (*(code *)(*ppppiVar3)[10])();
              puVar12 = (undefined2 *)(**(code **)(iVar21 + 0x20))();
              if (puVar12 == (undefined2 *)0x0) {
                local_4f4 = &_Dst_10ca8244;
                local_4f0 = &_Dst_10ca8244;
                local_4e8 = "ResourceSystem/PathDdfInfo";
                local_4ec = &DAT_10ca8246;
                puStack_4e4 = puVar12;
                psVar15 = (short *)(*(code *)(*ppppiVar3)[10])();
                sVar1 = *psVar15;
                psVar13 = psVar15;
                while (sVar1 != 0) {
                  psVar13 = psVar13 + 1;
                  sVar1 = *psVar13;
                }
                FUN_1001f8c0(&local_4f4,psVar15,
                             (int *)(psVar15 + ((int)psVar13 - (int)psVar15 >> 1)));
                puVar16 = (undefined2 *)FUN_10918eb0(0x464,"ResourceSystem/DBDFAutoUpdate",0);
                if (puVar16 != (undefined2 *)0x0) {
                  puVar12 = FUN_108da7f0(puVar16);
                }
                pWVar17 = (LPCWSTR)(*(code *)(*ppppiVar3)[10])();
                FUN_108da470(puVar12,pWVar17);
                puVar9 = (undefined4 *)param_1[0x1c8];
                puStack_4e4 = puVar12;
                if (puVar9 < (undefined4 *)param_1[0x1c9]) {
                  param_1[0x1c8] = (int)(puVar9 + 5);
                  if (puVar9 != (undefined4 *)0x0) {
                    FUN_1006a320(puVar9,&local_4f4);
                    puVar9[4] = puVar12;
                  }
                }
                else {
                  FUN_1052a200(param_1 + 0x1c7,puVar9,&local_4f4);
                }
                if ((2 < (int)((int)local_4ec - (int)local_4f4 & 0xfffffffeU)) &&
                   (local_4f4 != (undefined *)0x0)) {
                  FUN_10918e90((int)local_4f4);
                }
              }
              FUN_108da9e0(puVar12,(uint)ppppiVar3,1);
            }
            local_50c = (int ****)*local_50c;
          } while ((int *****)local_50c != &local_504);
        }
        puVar9 = FUN_10919060(0xa0,"ResourceSystem/ResourceCache/AnimationCache",0);
        if (puVar9 == (undefined4 *)0x0) {
          puVar9 = (undefined4 *)0x0;
        }
        else {
          puVar9 = FUN_105253f0(puVar9,DAT_10cabc54);
        }
        param_1[0x77] = (int)puVar9;
        LOCK();
        puVar9[1] = puVar9[1] + 1;
        UNLOCK();
        (**(code **)(*(int *)param_1[0x77] + 4))();
        piVar23 = param_1 + 0x78;
        (**(code **)(*(int *)param_1[0x77] + 0x14))();
        *(undefined4 *)(param_1[0x77] + 0x8c) = 0xf00000;
        (**(code **)(*param_1 + 0x54))(1,param_1[0x77],1000);
        puVar9 = FUN_10919060(0xa0,"ResourceSystem/ResourceCache",0);
        if (puVar9 == (undefined4 *)0x0) {
          puVar9 = (undefined4 *)0x0;
        }
        else {
          puVar9 = FUN_105253f0(puVar9,DAT_10cabc54);
        }
        param_1[0x76] = (int)puVar9;
        LOCK();
        puVar9[1] = puVar9[1] + 1;
        UNLOCK();
        (**(code **)(*(int *)param_1[0x76] + 4))();
        FUN_10525c20(param_1[0x76]);
        (**(code **)(*param_1 + 0x54))(1,param_1[0x76],0);
        puVar18 = (undefined1 *)FUN_10918eb0(0x58,"ResourceSystem/CallbackMan",0);
        if (puVar18 == (undefined1 *)0x0) {
          puVar18 = (undefined1 *)0x0;
        }
        else {
          puVar18 = FUN_1051cbb0(puVar18);
        }
        FUN_1051cb00(puVar18);
        piVar19 = FUN_1051ae60();
        cVar7 = (**(code **)(*piVar19 + 4))();
        if (cVar7 == '\0') {
          (**(code **)(*param_1 + 8))();
          pppppiVar24 = (int *****)local_504;
          if ((int *****)local_504 != &local_504) {
            do {
              pppppiVar4 = (int *****)*pppppiVar24;
              FUN_10918e90((int)pppppiVar24);
              pppppiVar24 = pppppiVar4;
            } while (pppppiVar4 != &local_504);
          }
          FUN_105eb910(iStack_4cc,uStack_4c8);
          uStack_4c4 = 0;
          if (1 < uStack_4c8) {
            FUN_10918e90(iStack_4cc);
          }
LAB_1052b7ce:
          uVar26 = FUN_1051cfd0(&local_4b0);
          return uVar26 & 0xffffff00;
        }
        FUN_105197e0(piVar19);
        pvVar10 = (void *)FUN_10389500();
        if (pvVar10 != (void *)0x0) {
          FUN_105288e0(&local_480,(int *)L"ResourceSystem");
          bVar8 = CAW_ConfigRegistryGetRawValue
                            (pvVar10,local_480,L"LoadHashTables",(wchar_t **)&stack0xfffffaec);
          if (bVar8) {
            puVar22 = (ushort *)&_Str2_10aaf2a0;
            puVar14 = unaff_ESI;
            do {
              uVar2 = *puVar14;
              bVar8 = uVar2 < *puVar22;
              if (uVar2 != *puVar22) {
LAB_1052ba36:
                iVar21 = (1 - (uint)bVar8) - (uint)(bVar8 != 0);
                goto LAB_1052ba3b;
              }
              if (uVar2 == 0) break;
              uVar2 = puVar14[1];
              bVar8 = uVar2 < puVar22[1];
              if (uVar2 != puVar22[1]) goto LAB_1052ba36;
              puVar14 = puVar14 + 2;
              puVar22 = puVar22 + 2;
            } while (uVar2 != 0);
            iVar21 = 0;
LAB_1052ba3b:
            if (iVar21 == 0) {
              *(undefined1 *)(param_1 + 0x1d7) = 1;
            }
            else {
              puVar14 = (ushort *)&_Str2_10ae706c;
              do {
                uVar2 = *unaff_ESI;
                bVar8 = uVar2 < *puVar14;
                if (uVar2 != *puVar14) {
LAB_1052ba76:
                  iVar21 = (1 - (uint)bVar8) - (uint)(bVar8 != 0);
                  goto LAB_1052ba7b;
                }
                if (uVar2 == 0) break;
                uVar2 = unaff_ESI[1];
                bVar8 = uVar2 < puVar14[1];
                if (uVar2 != puVar14[1]) goto LAB_1052ba76;
                unaff_ESI = unaff_ESI + 2;
                puVar14 = puVar14 + 2;
              } while (uVar2 != 0);
              iVar21 = 0;
LAB_1052ba7b:
              if (iVar21 == 0) {
                *(undefined1 *)(param_1 + 0x1d7) = 0;
              }
            }
          }
          if (((2 < (int)(local_478 - (int)local_480 & 0xfffffffeU)) &&
              (local_480 != (wchar_t *)0x0)) && (local_480 != local_470)) {
            FUN_10918e90((int)local_480);
          }
        }
        if (piVar23 != (int *)&stack0xfffffae0) {
          do {
            piVar19 = (int *)*piVar23;
            FUN_10918e90((int)piVar23);
            piVar23 = piVar19;
          } while (piVar19 != (int *)&stack0xfffffae0);
        }
        FUN_105eb910((int)local_4e8,(uint)puStack_4e4);
        local_4e0[0] = (LPCWSTR)0x0;
        if (&DAT_00000001 < puStack_4e4) {
          FUN_10918e90((int)local_4e8);
        }
        uVar20 = FUN_1051cfd0(&iStack_4cc);
        return CONCAT31((int3)((uint)uVar20 >> 8),1);
      }
      puVar9 = (undefined4 *)FUN_1051cfd0(&local_4b0);
    }
  }
  return (uint)puVar9 & 0xffffff00;
}

