/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: FileType branch at108D8311 builds configuration-local
   extension mappings, including optional leading period and reset. These maps are passed to
   directory/database resource producers; this branch does not write the global manager TNMap.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

undefined4 __thiscall
CAW_ResourceConfigParse(void *this,wchar_t *param_1,void *param_2,undefined1 *param_3)

{
  WCHAR WVar1;
  short sVar2;
  short sVar3;
  ushort uVar4;
  bool bVar5;
  uint uVar6;
  int iVar7;
  WCHAR *pWVar8;
  int iVar9;
  undefined4 *puVar10;
  long lVar11;
  void *pvVar12;
  undefined4 *puVar13;
  undefined4 uVar14;
  undefined4 *puVar15;
  code *pcVar16;
  ushort *puVar17;
  WCHAR *pWVar18;
  wchar_t *pwVar19;
  uint uVar20;
  short *psVar21;
  undefined4 *puVar22;
  int *piVar23;
  short **ppsVar24;
  int local_9c8;
  WCHAR *local_9c4;
  char local_9bd;
  short *local_9bc;
  undefined4 *local_9b8;
  undefined4 *local_9b4;
  undefined4 local_9b0;
  int *local_9ac;
  undefined4 local_9a8;
  char *local_9a4;
  undefined4 *local_9a0;
  undefined4 *local_99c;
  undefined4 *local_998;
  char *local_994;
  short *local_990;
  int local_98c [14];
  wchar_t *local_954;
  undefined4 *local_950;
  undefined4 *local_94c;
  void *local_948;
  int local_944;
  void *local_940;
  char *local_93c;
  undefined4 local_938;
  undefined4 local_934;
  undefined4 local_930;
  undefined4 local_92c;
  undefined4 local_928;
  undefined4 local_924;
  undefined4 local_920;
  undefined4 local_91c;
  undefined4 local_918;
  undefined4 local_914;
  undefined4 local_910;
  undefined4 local_90c;
  undefined4 local_908;
  undefined4 local_904;
  undefined4 local_900;
  int local_8fc;
  undefined4 local_8f8;
  int local_8f4 [138];
  short *local_6cc [55];
  uint local_5f0 [55];
  short local_514 [260];
  WCHAR local_30c [130];
  WCHAR local_208 [259];
  undefined2 local_2;
  
  piVar23 = *(int **)this;
  local_9bd = '\0';
  local_9b8 = (undefined4 *)0x0;
  local_9b4 = (undefined4 *)0x0;
  local_9b0 = 0;
  local_9a8 = 0;
  local_9a4 = "ResourceSystem/ResourceConfig/scopes";
  local_9ac = piVar23;
  FUN_10910830(local_8f4,param_1);
  FUN_10910240((int)local_8f4);
  bVar5 = FUN_10910380(local_8f4,1,6,1,0);
  puVar10 = (undefined4 *)0x0;
  if (bVar5) {
    FUN_10913770(local_98c,0x10000,0x10000,local_8f4,*(int *)this);
    FUN_10913060((int)local_98c);
    local_9c8 = 0;
    local_9a0 = (undefined4 *)0x0;
    local_99c = (undefined4 *)0x0;
    local_998 = (undefined4 *)0x0;
    local_994 = "ResourceSystem/ResourceConfig/Argv";
    uVar6 = FUN_10912930(local_98c,(char *)local_30c);
    while (-1 < (int)uVar6) {
      uVar6 = FUN_109278f0(local_208,uVar6,local_30c,uVar6);
      local_9c8 = local_9c8 + 1;
      pWVar8 = local_208 + uVar6;
      local_2 = 0;
      puVar15 = puVar10;
      local_99c = puVar10;
      pcVar16 = isspace_exref;
      for (pWVar18 = local_208; local_9c4 = pWVar18, pWVar18 < pWVar8; pWVar18 = pWVar18 + 1) {
        iVar7 = (*pcVar16)();
        if (iVar7 == 0) {
          WVar1 = *pWVar18;
          puVar15 = local_9a0;
          if (WVar1 == L'#') break;
          if ((WVar1 == L'\"') || (WVar1 == L'\'')) {
            local_9c4 = pWVar18 + 1;
            if (puVar10 < local_998) {
              local_99c = puVar10 + 1;
              pWVar18 = local_9c4;
              if (puVar10 != (undefined4 *)0x0) {
                *puVar10 = local_9c4;
              }
            }
            else {
              FUN_105ee480(&local_9a0,puVar10,&local_9c4);
              pWVar18 = local_9c4;
            }
            for (; (pcVar16 = isspace_exref, puVar10 = local_99c, pWVar18 < pWVar8 &&
                   (*pWVar18 != WVar1)); pWVar18 = pWVar18 + 1) {
            }
          }
          else {
            if (puVar10 < local_998) {
              local_99c = puVar10 + 1;
              puVar15 = local_99c;
              if (puVar10 != (undefined4 *)0x0) {
                *puVar10 = pWVar18;
              }
            }
            else {
              FUN_105ee480(&local_9a0,puVar10,&local_9c4);
              pWVar18 = local_9c4;
              puVar15 = local_99c;
            }
            for (; puVar10 = local_99c, local_99c = puVar15, pWVar18 < pWVar8; pWVar18 = pWVar18 + 1
                ) {
              iVar7 = (*pcVar16)();
              if ((iVar7 != 0) || (*pWVar18 == L'#')) {
                if ((pWVar18 < pWVar8) && (*pWVar18 == L'#')) {
                  *pWVar18 = L'\0';
                  puVar15 = local_9a0;
                  goto LAB_108d800a;
                }
                break;
              }
              puVar15 = local_99c;
              local_99c = puVar10;
            }
          }
          *pWVar18 = L'\0';
        }
        puVar15 = local_9a0;
      }
LAB_108d800a:
      pcVar16 = _wcsicmp_exref;
      uVar6 = (int)puVar10 - (int)puVar15 >> 2;
      if (uVar6 != 0) {
        iVar7 = _wcsicmp((wchar_t *)*puVar15,L"StopScan");
        if (iVar7 == 0) {
          *param_3 = 1;
          goto LAB_108d89ca;
        }
        pWVar8 = (WCHAR *)_wcsicmp((wchar_t *)*puVar15,L"Group");
        iVar7 = local_9c8;
        if (pWVar8 == (WCHAR *)0x0) {
          if (uVar6 < 2) {
            *(undefined4 *)((int)this + 0x2ec) = 0xd06b0004;
            if (*(code **)((int)this + 0x2e4) != (code *)0x0) {
              (**(code **)((int)this + 0x2e4))(0xd06b0004);
            }
            FUN_10918e90((int)puVar15);
            FUN_109137e0(local_98c);
            FUN_10910890(local_8f4);
            uVar6 = 0;
            if (local_9b8 != (undefined4 *)0x0) {
              uVar6 = (**(code **)(*local_9ac + 0xc))();
            }
            return uVar6 & 0xffffff00;
          }
          if (3 < uVar6) {
            iVar9 = -0x2f94fffd;
            goto LAB_108d8af3;
          }
          local_9c4 = pWVar8;
          iVar9 = _wcsicmp((wchar_t *)puVar15[1],L"reset");
          if (iVar9 == 0) {
            local_9c4 = (WCHAR *)0xffffffff;
          }
          else {
            uVar14 = FUN_108d6de0((wchar_t *)puVar15[1],(ulong *)&local_9c4);
            if ((char)uVar14 == '\0') {
              FUN_108d6ee0(this,param_1,local_9c8,0xd06b0005);
              FUN_10918e90((int)puVar15);
              FUN_109137e0(local_98c);
              FUN_10910890(local_8f4);
              uVar6 = FUN_108d74f0((int *)&local_9b8);
              return uVar6 & 0xffffff00;
            }
          }
          pwVar19 = L".../";
          if ((2 < uVar6) && (pwVar19 = (wchar_t *)puVar15[2], *pwVar19 == L'\0')) {
            FUN_108d6ee0(this,param_1,local_9c8,0xd06b0002);
            FUN_10918e90((int)puVar15);
            FUN_109137e0(local_98c);
            FUN_10910890(local_8f4);
            uVar6 = FUN_108d74f0((int *)&local_9b8);
            return uVar6 & 0xffffff00;
          }
          uVar14 = FUN_10921c20((ushort *)pwVar19,5);
          if ((char)uVar14 != '\0') goto LAB_108d8bd0;
          FUN_10921e80(pwVar19,local_514,0x5c);
          psVar21 = local_514;
          sVar2 = local_514[0];
          while (sVar2 == 0x2e) {
            sVar2 = psVar21[1];
            if (((sVar2 != 0x5c) && (sVar2 != 0x2f)) && (sVar2 != 0x3a)) {
              if (((*psVar21 == 0x2e) && (psVar21[1] == 0x2e)) &&
                 (uVar14 = FUN_10526770((uint)(ushort)psVar21[2]), (char)uVar14 != '\0'))
              goto LAB_108d8bda;
              break;
            }
            psVar21 = psVar21 + 2;
            sVar2 = *psVar21;
          }
          iVar7 = 0;
          sVar2 = *psVar21;
          local_9bc = psVar21;
          sVar3 = sVar2;
          while (sVar3 != 0) {
            if (sVar2 == 0x2e) {
              if (((psVar21[1] == 0x2e) && (psVar21[2] == 0x2e)) &&
                 (uVar14 = FUN_10526770((uint)(ushort)psVar21[3]), (char)uVar14 != '\0')) {
                iVar7 = iVar7 + 4;
              }
            }
            else if (sVar2 == 0x2a) {
              iVar7 = iVar7 + 2;
            }
            else if (sVar2 == 0x3f) {
              iVar7 = iVar7 + 1;
            }
            local_9bc = local_9bc + 1;
            sVar3 = *local_9bc;
          }
          puVar10 = (undefined4 *)FUN_108d6f30(0x14,(void *)((int)this + 4));
          *puVar10 = 0;
          puVar10[2] = 0;
          if (local_9b8 != local_9b4) {
            puVar10[2] = local_9b4[-1];
          }
          puVar10[1] = local_9c4;
          puVar10[3] = -iVar7;
          *(undefined1 *)(puVar10 + 4) = 0;
          *(undefined1 *)((int)puVar10 + 0x11) = 0;
          *(undefined1 *)((int)puVar10 + 0x12) = 0;
          local_938 = 0;
          local_934 = 0;
          local_930 = 0;
          local_92c = 0;
          local_928 = 0;
          FUN_108d7d10(param_2,&local_938);
          *(undefined4 **)(*(int *)((int)param_2 + 4) + -0x14) = puVar10;
          iVar7 = *(int *)((int)param_2 + 4);
          uVar14 = FUN_108d7330(this,psVar21);
          *(undefined4 *)(iVar7 + -0x10) = uVar14;
          *(undefined4 *)(*(int *)((int)param_2 + 4) + -0xc) = 0;
          *(undefined2 *)(*(int *)((int)param_2 + 4) + -8) = 0;
          *(undefined2 *)(*(int *)((int)param_2 + 4) + -6) = 0;
          goto LAB_108d89ca;
        }
        iVar9 = _wcsicmp((wchar_t *)*puVar15,L"Priority");
        if (iVar9 == 0) {
          if (uVar6 == 2) {
            lVar11 = wcstol((wchar_t *)puVar15[1],&local_954,0);
            if (local_954 != (wchar_t *)puVar15[1]) {
              *(long *)((int)this + 0x2d4) = lVar11;
              goto LAB_108d89ca;
            }
            iVar9 = -0x2f94fffb;
          }
          else {
LAB_108d8c19:
            iVar9 = -0x2f94fffc;
          }
          goto LAB_108d8af3;
        }
        iVar9 = _wcsicmp((wchar_t *)*puVar15,L"FileType");
        if (iVar9 == 0) {
          if (local_9bd == '\0') {
            iVar9 = 0x24;
            local_9bd = '\x01';
            puVar10 = (undefined4 *)0x108d8343;
            pvVar12 = (void *)FUN_108d6f30(0x24,(void *)((int)this + 4));
            if (pvVar12 == (void *)0x0) {
              pvVar12 = (void *)0x0;
            }
            else {
              local_93c = "EASTL";
              local_940 = (void *)((int)this + 4);
              pvVar12 = (void *)FUN_108d7750(pvVar12,&local_940);
            }
            puVar22 = *(undefined4 **)
                       (*(int *)(*(int *)((int)this + 0x2e0) + 4) +
                       *(int *)(*(int *)((int)this + 0x2e0) + 8) * 4);
            FUN_103255b0(*(void **)((int)this + 0x2e0),(int *)&stack0xfffff614);
            FUN_108d7d60(pvVar12,puVar10,iVar9,puVar22);
            *(void **)((int)this + 0x2e0) = pvVar12;
            pcVar16 = _wcsicmp_exref;
          }
          if (uVar6 < 2) goto LAB_108d88d1;
          local_9bc = (short *)0xffffffff;
          iVar9 = (*pcVar16)();
          if (iVar9 == 0) {
            if (uVar6 == 2) goto LAB_108d89ca;
          }
          else {
            uVar14 = FUN_108d6de0((wchar_t *)puVar15[1],(ulong *)&local_9bc);
            if ((char)uVar14 == '\0') {
              iVar9 = -0x2f94fffb;
              goto LAB_108d8af3;
            }
          }
          uVar20 = 2;
          if (2 < uVar6) {
            do {
              local_9c4 = (WCHAR *)puVar15[uVar20];
              if (*local_9c4 == L'.') {
                local_9c4 = local_9c4 + 1;
              }
              if (local_9bc == (short *)0xffffffff) {
                FUN_108d7520(*(void **)((int)this + 0x2e0),&local_9c4);
              }
              else {
                local_9c4 = (WCHAR *)FUN_108d7330(this,local_9c4);
                puVar10 = (undefined4 *)
                          FUN_108d7cb0(*(void **)((int)this + 0x2e0),(int *)&local_9c4);
                *puVar10 = local_9bc;
              }
              uVar20 = uVar20 + 1;
            } while (uVar20 < uVar6);
          }
          goto LAB_108d89ca;
        }
        iVar9 = _wcsicmp((wchar_t *)*puVar15,L"Scan");
        if (iVar9 != 0) {
          iVar9 = _wcsicmp((wchar_t *)*puVar15,L"DirectoryFiles");
          if (iVar9 != 0) {
            iVar9 = _wcsicmp((wchar_t *)*puVar15,L"PackedFile");
            if (iVar9 == 0) {
              if (uVar6 < 2) {
LAB_108d88d1:
                iVar9 = -0x2f94fffc;
                goto LAB_108d8af3;
              }
              puVar17 = (ushort *)puVar15[1];
              if (*puVar17 == 0) goto LAB_108d8bd0;
              uVar14 = FUN_10921c20(puVar17,5);
              if ((char)uVar14 != '\0') goto LAB_108d8c3a;
              uVar4 = *puVar17;
              while ((uVar4 == 0x2e &&
                     (uVar14 = FUN_10526770((uint)puVar17[1]), (char)uVar14 != '\0'))) {
                puVar17 = puVar17 + 2;
                uVar4 = *puVar17;
              }
              FUN_10922350((short *)puVar17,&local_8f8,&local_990,&local_8fc);
              puVar10 = (undefined4 *)FUN_108d6f30(0x14,(void *)((int)this + 4));
              *puVar10 = 1;
              puVar10[1] = 0x2a43bd44;
              puVar10[2] = 0;
              if (local_9b8 != local_9b4) {
                puVar10[2] = local_9b4[-1];
              }
              local_910 = 0;
              local_90c = 0;
              local_908 = 0;
              local_904 = 0;
              local_900 = 0;
              puVar10[3] = *(undefined4 *)((int)this + 0x2d4);
              *(undefined1 *)(puVar10 + 4) = 0;
              *(undefined1 *)((int)puVar10 + 0x11) = 0;
              *(undefined1 *)((int)puVar10 + 0x12) = 0;
              FUN_108d7d10(param_2,&local_910);
              *(undefined4 **)(*(int *)((int)param_2 + 4) + -0x14) = puVar10;
              iVar7 = *(int *)((int)param_2 + 4);
              uVar14 = FUN_108d7330(this,local_990);
              *(undefined4 *)(iVar7 + -0xc) = uVar14;
              *local_990 = 0;
              FUN_10921e80((short *)puVar17,local_514,0x5c);
              iVar7 = *(int *)((int)param_2 + 4);
              uVar14 = FUN_108d7330(this,local_514);
              puVar13 = local_99c;
              *(undefined4 *)(iVar7 + -0x10) = uVar14;
              *(undefined2 *)(*(int *)((int)param_2 + 4) + -8) = 0;
              *(undefined2 *)(*(int *)((int)param_2 + 4) + -6) = 0;
              for (puVar22 = puVar15 + 2; puVar22 != puVar13; puVar22 = puVar22 + 1) {
                iVar7 = _wcsicmp((wchar_t *)*puVar22,L"writable");
                if (iVar7 == 0) {
                  *(undefined1 *)((int)puVar10 + 0x11) = 1;
                }
              }
            }
            else {
              iVar9 = _wcsicmp((wchar_t *)*puVar15,L"Priority");
              if (iVar9 == 0) {
                if (uVar6 < 2) goto LAB_108d88d1;
              }
              else {
                iVar9 = _wcsicmp((wchar_t *)*puVar15,L"Select");
                if (iVar9 == 0) {
                  if (uVar6 < 2) goto LAB_108d8c19;
                  local_950 = puVar15 + 1;
                  local_944 = 0;
                  local_94c = puVar10;
                  local_948 = (void *)((int)this + 4);
                  puVar10 = FUN_108d71e0((int *)&local_950);
                  iVar9 = local_944;
                  if (local_944 < 0) goto LAB_108d8af3;
                  if (local_9b8 == local_9b4) {
                    ppsVar24 = &local_9bc;
                    local_9bc = (short *)0x0;
                  }
                  else {
                    ppsVar24 = (short **)(local_9b4 + -1);
                  }
                  FUN_108d7e10(&local_9b8,ppsVar24);
                  puVar22 = local_9b4;
                  if (puVar10 != (undefined4 *)0x0) {
                    if (local_9b4[-1] == 0) {
                      local_9b4[-1] = puVar10;
                    }
                    else {
                      puVar13 = (undefined4 *)FUN_108d6f30(0xc,(void *)((int)this + 4));
                      if (puVar13 == (undefined4 *)0x0) {
                        puVar22[-1] = 0;
                      }
                      else {
                        uVar14 = puVar22[-1];
                        *puVar13 = &PTR_LAB_10b87288;
                        puVar13[1] = uVar14;
                        puVar13[2] = puVar10;
                        puVar22[-1] = puVar13;
                      }
                    }
                  }
                }
                else {
                  iVar7 = _wcsicmp((wchar_t *)*puVar15,(wchar_t *)&_Str2_10b872cc);
                  if (iVar7 != 0) {
                    iVar7 = -0x2f94fffd;
                    iVar9 = local_9c8;
                    goto LAB_108d8af3;
                  }
                  local_9b4 = local_9b4 + -1;
                }
              }
            }
            goto LAB_108d89ca;
          }
          if (uVar6 < 2) {
            iVar9 = -0x2f94fffc;
          }
          else {
            puVar17 = (ushort *)puVar15[1];
            if (*puVar17 == 0) goto LAB_108d8c51;
            uVar14 = FUN_10921c20(puVar17,5);
            if ((char)uVar14 == '\0') {
              FUN_10921e80((short *)puVar17,local_514,0x5c);
              psVar21 = local_514;
              sVar2 = local_514[0];
              while (sVar2 == 0x2e) {
                uVar14 = FUN_10526770((uint)(ushort)psVar21[1]);
                if ((char)uVar14 == '\0') {
                  if (((*psVar21 == 0x2e) && (psVar21[1] == 0x2e)) &&
                     (uVar14 = FUN_10526770((uint)(ushort)psVar21[2]), (char)uVar14 != '\0'))
                  goto LAB_108d8bda;
                  break;
                }
                psVar21 = psVar21 + 2;
                sVar2 = *psVar21;
              }
              puVar10 = (undefined4 *)FUN_108d6f30(0x14,(void *)((int)this + 4));
              *puVar10 = 1;
              puVar10[1] = 0x34728492;
              puVar10[2] = 0;
              if (local_9b8 != local_9b4) {
                puVar10[2] = local_9b4[-1];
              }
              local_924 = 0;
              local_920 = 0;
              local_91c = 0;
              local_918 = 0;
              local_914 = 0;
              puVar10[3] = *(undefined4 *)((int)this + 0x2d4);
              *(undefined1 *)(puVar10 + 4) = 0;
              *(undefined1 *)((int)puVar10 + 0x11) = 0;
              *(undefined1 *)((int)puVar10 + 0x12) = 0;
              FUN_108d7d10(param_2,&local_924);
              *(undefined4 **)(*(int *)((int)param_2 + 4) + -0x14) = puVar10;
              iVar7 = *(int *)((int)param_2 + 4);
              uVar14 = FUN_108d7330(this,psVar21);
              *(undefined4 *)(iVar7 + -0x10) = uVar14;
              *(undefined4 *)(*(int *)((int)param_2 + 4) + -0xc) = 0;
              *(undefined2 *)(*(int *)((int)param_2 + 4) + -8) = 0;
              puVar22 = puVar15 + 2;
              *(undefined2 *)(*(int *)((int)param_2 + 4) + -6) = 0;
              if (puVar22 != local_99c) {
                do {
                  iVar7 = _wcsicmp((wchar_t *)*puVar22,L"autoupdate");
                  if (iVar7 == 0) {
                    *(undefined1 *)(puVar10 + 4) = 1;
                  }
                  else {
                    iVar7 = _wcsicmp((wchar_t *)*puVar22,L"writable");
                    if (iVar7 == 0) {
                      *(undefined1 *)((int)puVar10 + 0x11) = 1;
                    }
                  }
                  puVar22 = puVar22 + 1;
                } while (puVar22 != local_99c);
              }
              goto LAB_108d89ca;
            }
LAB_108d8bd0:
            iVar9 = -0x2f94fffe;
          }
          goto LAB_108d8af3;
        }
        if (uVar6 < 2) goto LAB_108d8c19;
        puVar17 = (ushort *)puVar15[1];
        if (*puVar17 == 0) {
LAB_108d8c3a:
          iVar9 = -0x2f94fffe;
LAB_108d8af3:
          FUN_108d6ee0(this,param_1,iVar7,iVar9);
        }
        else {
          uVar14 = FUN_10921c20(puVar17,5);
          if ((char)uVar14 != '\0') {
LAB_108d8c51:
            iVar9 = -0x2f94fffe;
            goto LAB_108d8af3;
          }
          FUN_100721e0(local_6cc,(int *)((int)this + 0x2c));
          FUN_100721e0(local_5f0,(int *)puVar17);
          FUN_109154b0((int *)local_6cc,local_5f0);
          iVar7 = FUN_109151e0((uint *)local_6cc,local_5f0);
          if (((char)iVar7 == '\0') &&
             (iVar7 = FUN_109151e0(local_5f0,local_6cc), (char)iVar7 == '\0')) {
            local_9bc = (short *)FUN_108d7330(this,local_6cc[0]);
            FUN_106ae5d0((void *)((int)this + 0x234),&local_9bc);
            FUN_10072120((int *)local_5f0);
            FUN_10072120((int *)local_6cc);
            goto LAB_108d89ca;
          }
          FUN_108d6ee0(this,local_6cc[0],local_9c8,0xd06b000b);
          FUN_10072120((int *)local_5f0);
          FUN_10072120((int *)local_6cc);
        }
        goto LAB_108d8af8;
      }
LAB_108d89ca:
      uVar6 = FUN_10912930(local_98c,(char *)local_30c);
      piVar23 = local_9ac;
      puVar10 = puVar15;
    }
    FUN_10913690((int)local_98c);
    FUN_109104c0((int)local_8f4);
    if (puVar10 != (undefined4 *)0x0) {
      FUN_10918e90((int)puVar10);
    }
    FUN_109137e0(local_98c);
    puVar10 = local_9b8;
  }
  uVar14 = FUN_10910890(local_8f4);
  if (puVar10 != (undefined4 *)0x0) {
    uVar14 = (**(code **)(*piVar23 + 0xc))();
  }
  return CONCAT31((int3)((uint)uVar14 >> 8),1);
LAB_108d8bda:
  FUN_108d6ee0(this,param_1,local_9c8,0xd06b0002);
  if (puVar15 != (undefined4 *)0x0) {
LAB_108d8af8:
    FUN_10918e90((int)puVar15);
  }
  FUN_109137e0(local_98c);
  FUN_10910890(local_8f4);
  uVar6 = FUN_108d74f0((int *)&local_9b8);
  return uVar6 & 0xffffff00;
}

