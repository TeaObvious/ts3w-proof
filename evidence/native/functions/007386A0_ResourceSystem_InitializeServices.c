/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 tree texture instruction contract. ECX resource-system interface, no stack args,
   AL Boolean. Complete body includes configuration/device/package setup, caches, callback service
   and request loader. Scoped selected publication: manager getter global11C88D8 set via4AFE90
   at7389E2 after4DAB90 success. Later7287F0 allocates request service; virtual+4 AL gates success,
   then727160 publishes it at738FE9. Failure calls owner virtual+8 and cleanup before false; normal
   final true. Initial namespace/configuration and cache policies not fully expanded from their
   children. Inherited Animation_SetMissingAnimationCallback label is shared stub4B40C0, not
   evidence of animation dependency. Remaining unaff_ESI/stack aliases in C's configuration tail are
   decompiler artifacts; selected publisher sequence verified raw, not borrowed from those aliases.
    */

bool __thiscall ResourceSystem_InitializeServices(void *this)

{
  short sVar1;
  ushort uVar2;
  int ****ppppiVar3;
  int *****pppppiVar4;
  undefined1 *allocation;
  undefined1 uVar5;
  char cVar6;
  void *pvVar7;
  undefined4 *puVar8;
  short *psVar9;
  undefined2 *puVar10;
  short *psVar11;
  ushort *puVar12;
  short *psVar13;
  undefined2 *puVar14;
  LPCWSTR pWVar15;
  undefined1 *puVar16;
  int *piVar17;
  undefined4 uVar18;
  int iVar19;
  ushort *puVar20;
  int *piVar21;
  ushort *unaff_ESI;
  int *****pppppiVar22;
  uint uVar23;
  bool bVar24;
  float10 fVar25;
  undefined4 **ppuVar26;
  int ****local_50c;
  undefined4 *local_508;
  int ****local_504;
  int ****local_500;
  char *local_4fc;
  undefined4 *local_4f8;
  undefined1 *local_4f4;
  undefined1 *local_4f0;
  undefined2 *local_4ec;
  char *local_4e8;
  undefined2 *puStack_4e4;
  LPCWSTR local_4e0 [2];
  int local_4d8;
  undefined1 local_4d0 [4];
  void *pvStack_4cc;
  uint uStack_4c8;
  undefined4 uStack_4c4;
  undefined4 local_4b0;
  int local_4ac;
  int local_4a8;
  int *local_49c;
  undefined4 *local_498;
  undefined4 *local_494;
  undefined4 *local_490;
  char *local_48c;
  undefined4 local_488;
  undefined4 local_484;
  short *local_480;
  undefined4 local_47c;
  int local_478;
  char *local_474;
  short *local_470;
  undefined4 local_46c;
  undefined4 *local_468;
  short local_410 [520];
  
  uVar5 = FUN_0058ae30(L"ResourceSystem",L"AllowAutoUnload",1);
  *(undefined1 *)((int)this + 0x1e9) = uVar5;
  local_468 = (undefined4 *)FUN_004e4500(0x80228,"ResourceSystem/RWFileSysAllocator",0);
  if (local_468 == (undefined4 *)0x0) {
    local_468 = (undefined4 *)0x0;
  }
  else {
    *local_468 = &PTR_FUN_00fff040;
    InitializeCriticalSection((LPCRITICAL_SECTION)(local_468 + 2));
    puVar8 = local_468 + 0x2000a;
    for (iVar19 = 0x80; iVar19 != 0; iVar19 = iVar19 + -1) {
      *puVar8 = 0xffffffff;
      puVar8 = puVar8 + 1;
    }
  }
  *(undefined4 **)((int)this + 0x1d4) = local_468;
  if (local_468 != (undefined4 *)0x0) {
    local_470 = (short *)0x2;
    local_46c = 0x400;
    pvVar7 = FUN_00402100(&local_470);
    if ((pvVar7 != (void *)0x0) && (DAT_011b0588 != 0)) {
      cVar6 = FUN_0058ae30(L"ResourceSystem",L"LogRWFSCalls",0);
      if (cVar6 != '\0') {
        ScriptCore.Animation::Animation_SetMissingAnimationCallback();
      }
      iVar19 = FUN_0058af00(L"ResourceSystem",L"ReadQuantum",0);
      if (0 < iVar19) {
        *(int *)((int)pvVar7 + 0x24) = iVar19;
      }
      FUN_004e2e70(&local_488);
      local_474 = "File System Device";
      local_480 = (short *)0x2;
      *(undefined4 *)((int)pvVar7 + 0xc) = local_488;
      *(undefined4 *)((int)pvVar7 + 0x10) = local_484;
      *(undefined4 *)((int)pvVar7 + 0x14) = 2;
      *(undefined4 *)((int)pvVar7 + 0x18) = local_47c;
      *(int *)((int)pvVar7 + 0x1c) = local_478;
      *(char **)((int)pvVar7 + 0x20) = "File System Device";
      FUN_0072a940(&local_4b0);
      cVar6 = FUN_0072ad00(L"ResourceSystem",L"ThrottleKey");
      if ((cVar6 != '\0') && (local_4ac != local_4a8)) {
        puVar8 = (undefined4 *)FUN_004e4500(0x14,"ResourceSystem/ThrottleKeyFilter",0);
        if (puVar8 == (undefined4 *)0x0) {
          pvVar7 = (void *)0x0;
        }
        else {
          pvVar7 = (void *)FUN_0072a940(puVar8);
        }
        *(void **)((int)this + 0x7f0) = pvVar7;
        if (pvVar7 != (void *)0x0) {
          FUN_0072ac00(pvVar7,(int)&local_4b0);
          fVar25 = FUN_0058af50(L"ResourceSystem",L"ThrottleInitialDelay",DAT_00f998f4);
          local_508 = (undefined4 *)(float)fVar25;
          fVar25 = FUN_0058af50(L"ResourceSystem",L"ThrottleRate",_DAT_00fffa84);
          local_50c = (int ****)(float)fVar25;
          pvVar7 = (void *)FUN_004e4500(0x20,"Debug/ThrottledDeviceDriver",0);
          if (pvVar7 == (void *)0x0) {
            pvVar7 = (void *)0x0;
          }
          else {
            pvVar7 = FUN_007396d0(pvVar7,"throttled:",local_508,(float)local_50c);
          }
          *(void **)((int)this + 0x7e8) = pvVar7;
          if (pvVar7 != (void *)0x0) {
            puVar8 = FUN_004021d0();
            *(undefined4 **)((int)this + 0x7ec) = puVar8;
          }
        }
      }
      pvVar7 = (void *)FUN_004e4500(0x10,"ResourceSystem/ResourceManDeviceDriver",0);
      if (pvVar7 == (void *)0x0) {
        pvVar7 = (void *)0x0;
      }
      else {
        pvVar7 = FUN_0072e1a0(pvVar7,"resman:");
      }
      *(void **)((int)this + 0x7f4) = pvVar7;
      if (pvVar7 != (void *)0x0) {
        puVar8 = FUN_004021d0();
        *(undefined4 **)((int)this + 0x7f8) = puVar8;
      }
      pvVar7 = (void *)FUN_004e4500(0x68,"ResourceSystem/StreamableDeviceDriver",0);
      if (pvVar7 == (void *)0x0) {
        pvVar7 = (void *)0x0;
      }
      else {
        pvVar7 = FUN_0072e1c0(pvVar7,"streamable:","resman:");
      }
      *(void **)((int)this + 0x7fc) = pvVar7;
      if (pvVar7 != (void *)0x0) {
        puVar8 = FUN_004021d0();
        *(undefined4 **)((int)this + 0x800) = puVar8;
      }
      pvVar7 = (void *)FUN_004e4500(0x20,"ResourceSystem/FileExtTypeMap",0);
      if (pvVar7 == (void *)0x0) {
        pvVar7 = (void *)0x0;
      }
      else {
        local_50c = (int ****)0xfff9a4;
        pvVar7 = PickCandidateMap_Construct(pvVar7,&local_50c);
      }
      *(void **)((int)this + 0x74c) = pvVar7;
      cVar6 = FUN_004dab90((int)this);
      if (cVar6 != '\0') {
        FUN_004afe90(-(uint)(this != (void *)0x8) & (uint)this);
        local_50c = (int ****)0xfff988;
        PickCandidateMap_Construct(local_4d0,&local_50c);
        uVar23 = 0;
        if (*(int *)((int)this + 0x740) - *(int *)((int)this + 0x73c) >> 1 != 0) {
          while( true ) {
            local_508 = (undefined4 *)(*(int *)((int)this + 0x73c) + uVar23 * 2);
            if (*(short *)(*(int *)((int)this + 0x73c) + uVar23 * 2) != 0) {
              local_50c = (int ****)((uint)local_50c & 0xffffff00);
              FUN_007356c0(local_4d0,local_4e0,&local_508);
            }
            psVar11 = *(short **)((int)this + 0x740);
            psVar13 = *(short **)((int)this + 0x73c);
            if (((int)psVar11 - (int)psVar13 >> 1 == 0) || (psVar9 = psVar13, psVar13 == psVar11))
            break;
            do {
              if (*psVar9 == (short)uVar23) break;
              psVar9 = psVar9 + 1;
            } while (psVar9 != psVar11);
            if (((psVar9 == psVar11) || (iVar19 = (int)psVar9 - (int)psVar13 >> 1, iVar19 == -1)) ||
               (uVar23 = iVar19 + 1, (uint)((int)psVar11 - (int)psVar13 >> 1) <= uVar23)) break;
          }
        }
        local_508 = *(undefined4 **)((int)this + 0x71c);
        local_4f8 = *(undefined4 **)((int)this + 0x720);
        local_4fc = "ResourceSystem";
        local_504 = (int ****)&local_504;
        local_500 = (int ****)&local_504;
        local_50c = (int ****)0x0;
        if (local_508 != *(undefined4 **)((int)this + 0x720)) {
          do {
            if ((LPCWSTR)*local_508 != (LPCWSTR)local_508[1]) {
              uVar23 = FUN_004dc130((LPCWSTR)*local_508);
              if ((char)uVar23 == '\0') {
LAB_00738dec:
                FUN_00734900(&local_504);
                FUN_00d10b90((int)local_4d0);
                goto LAB_00738dfe;
              }
              puVar10 = (undefined2 *)FUN_004e4500(0x464,"ResourceSystem/DBDFAutoUpdate",0);
              if (puVar10 == (undefined2 *)0x0) {
                puVar10 = (undefined2 *)0x0;
              }
              else {
                puVar10 = FUN_004a48e0(puVar10);
              }
              puVar8 = local_508;
              FUN_004a4450(puVar10,(LPCWSTR)*local_508);
              puVar8[4] = puVar10;
              piVar21 = *(int **)((int)this + 0x72c);
              local_49c = *(int **)((int)this + 0x730);
              if (piVar21 != *(int **)((int)this + 0x730)) {
                do {
                  if ((int *****)*piVar21 == (int *****)local_50c) {
                    FUN_00408df0(local_4e0,local_508);
                    FUN_004ee420((int *)local_4e0);
                    FUN_00408b90(local_4e0,(undefined2 *)piVar21[1],(undefined2 *)piVar21[2]);
                    uVar23 = FUN_004dbd70(local_4e0[0]);
                    if ((char)uVar23 == '\0') {
                      if ((2 < (int)(local_4d8 - (int)local_4e0[0] & 0xfffffffeU)) &&
                         (local_4e0[0] != (LPCWSTR)0x0)) {
                        Memory_FreeIfNonNull(local_4e0[0]);
                      }
                      goto LAB_00738dec;
                    }
                    FUN_004ee170(local_410,(ushort *)local_4e0[0]);
                    psVar11 = (short *)FUN_004edd10(local_410);
                    local_4f4 = (undefined1 *)0x0;
                    local_4f0 = (undefined1 *)0x0;
                    local_4ec = (undefined2 *)0x0;
                    local_4e8 = "ResourceSystem";
                    FUN_0040b590(&local_4f4,psVar11);
                    FUN_004ee1a0(local_410);
                    local_48c = "ResourceSystem/ControlFileNames";
                    local_498 = (undefined4 *)FUN_004e4500(4,"ResourceSystem/ControlFileNames",0);
                    allocation = local_4f4;
                    local_490 = local_498 + 1;
                    *local_498 = local_4f4;
                    pppppiVar22 = &local_504;
                    local_494 = local_498 + 1;
                    puVar16 = local_4d0;
                    ppuVar26 = &local_498;
                    puVar14 = puVar10;
                    puVar12 = (ushort *)FUN_007e51a0(local_410);
                    FUN_00737da0(puVar12,ppuVar26,puVar14,(int)puVar16,pppppiVar22);
                    if (local_498 != (undefined4 *)0x0) {
                      Memory_FreeIfNonNull(local_498);
                    }
                    if ((2 < (int)((int)local_4ec - (int)allocation & 0xfffffffeU)) &&
                       (allocation != (undefined1 *)0x0)) {
                      Memory_FreeIfNonNull(allocation);
                    }
                    if ((2 < (int)(local_4d8 - (int)local_4e0[0] & 0xfffffffeU)) &&
                       (local_4e0[0] != (LPCWSTR)0x0)) {
                      Memory_FreeIfNonNull(local_4e0[0]);
                    }
                  }
                  piVar21 = piVar21 + 5;
                } while (piVar21 != local_49c);
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
              iVar19 = *(int *)((int)this + -8);
              (*(code *)(*ppppiVar3)[10])();
              puVar10 = (undefined2 *)(**(code **)(iVar19 + 0x20))();
              if (puVar10 == (undefined2 *)0x0) {
                local_4f4 = &DAT_011c8e54;
                local_4f0 = &DAT_011c8e54;
                local_4e8 = "ResourceSystem/PathDdfInfo";
                local_4ec = &DAT_011c8e56;
                puStack_4e4 = puVar10;
                psVar13 = (short *)(*(code *)(*ppppiVar3)[10])();
                sVar1 = *psVar13;
                psVar11 = psVar13;
                while (sVar1 != 0) {
                  psVar11 = psVar11 + 1;
                  sVar1 = *psVar11;
                }
                FUN_00408d60(&local_4f4,psVar13,psVar13 + ((int)psVar11 - (int)psVar13 >> 1));
                puVar14 = (undefined2 *)FUN_004e4500(0x464,"ResourceSystem/DBDFAutoUpdate",0);
                if (puVar14 != (undefined2 *)0x0) {
                  puVar10 = FUN_004a48e0(puVar14);
                }
                pWVar15 = (LPCWSTR)(*(code *)(*ppppiVar3)[10])();
                FUN_004a4450(puVar10,pWVar15);
                puVar8 = *(undefined4 **)((int)this + 0x720);
                puStack_4e4 = puVar10;
                if (puVar8 < *(undefined4 **)((int)this + 0x724)) {
                  *(undefined4 **)((int)this + 0x720) = puVar8 + 5;
                  if (puVar8 != (undefined4 *)0x0) {
                    FUN_00408df0(puVar8,&local_4f4);
                    puVar8[4] = puVar10;
                  }
                }
                else {
                  FUN_00737830((void *)((int)this + 0x71c),puVar8,&local_4f4);
                }
                if ((2 < (int)((int)local_4ec - (int)local_4f4 & 0xfffffffeU)) &&
                   (local_4f4 != (undefined1 *)0x0)) {
                  Memory_FreeIfNonNull(local_4f4);
                }
              }
              FUN_004a4c60(puVar10,(uint)ppppiVar3,1);
            }
            local_50c = (int ****)*local_50c;
          } while ((int *****)local_50c != &local_504);
        }
        puVar8 = FUN_004e4760(0xa0,"ResourceSystem/ResourceCache/AnimationCache",0);
        if (puVar8 == (undefined4 *)0x0) {
          pvVar7 = (void *)0x0;
        }
        else {
          pvVar7 = FUN_00732820(puVar8,DAT_011cc864);
        }
        *(void **)((int)this + 0x1dc) = pvVar7;
        LOCK();
        *(int *)((int)pvVar7 + 4) = *(int *)((int)pvVar7 + 4) + 1;
        UNLOCK();
        (**(code **)(**(int **)((int)this + 0x1dc) + 4))();
        piVar21 = (int *)((int)this + 0x1e0);
        (**(code **)(**(int **)((int)this + 0x1dc) + 0x14))();
        *(undefined4 *)(*(int *)((int)this + 0x1dc) + 0x8c) = 0xf00000;
        (**(code **)(*(int *)this + 0x54))(1,*(undefined4 *)((int)this + 0x1dc),1000);
        puVar8 = FUN_004e4760(0xa0,"ResourceSystem/ResourceCache",0);
        if (puVar8 == (undefined4 *)0x0) {
          pvVar7 = (void *)0x0;
        }
        else {
          pvVar7 = FUN_00732820(puVar8,DAT_011cc864);
        }
        *(void **)((int)this + 0x1d8) = pvVar7;
        LOCK();
        *(int *)((int)pvVar7 + 4) = *(int *)((int)pvVar7 + 4) + 1;
        UNLOCK();
        (**(code **)(**(int **)((int)this + 0x1d8) + 4))();
        FUN_00733050(*(int *)((int)this + 0x1d8));
        (**(code **)(*(int *)this + 0x54))(1,*(undefined4 *)((int)this + 0x1d8),0);
        puVar16 = (undefined1 *)FUN_004e4500(0x58,"ResourceSystem/CallbackMan",0);
        if (puVar16 == (undefined1 *)0x0) {
          puVar16 = (undefined1 *)0x0;
        }
        else {
          puVar16 = FUN_0072a540(puVar16);
        }
        FUN_0072a490(puVar16);
        piVar17 = ResourceRequests_Allocate();
        cVar6 = (**(code **)(*piVar17 + 4))();
        if (cVar6 == '\0') {
          (**(code **)(*(int *)this + 8))();
          pppppiVar22 = (int *****)local_504;
          if ((int *****)local_504 != &local_504) {
            do {
              pppppiVar4 = (int *****)*pppppiVar22;
              Memory_FreeIfNonNull(pppppiVar22);
              pppppiVar22 = pppppiVar4;
            } while (pppppiVar4 != &local_504);
          }
          FUN_00ae0410((int)pvStack_4cc,uStack_4c8);
          uStack_4c4 = 0;
          if (1 < uStack_4c8) {
            Memory_FreeIfNonNull(pvStack_4cc);
          }
LAB_00738dfe:
          FUN_0072a960(&local_4b0);
          return false;
        }
        ResourceRequests_ExchangeGlobal(piVar17);
        pvVar7 = (void *)FUN_0058bbd0();
        if (pvVar7 != (void *)0x0) {
          FUN_00735e60(&local_480,L"ResourceSystem");
          uVar18 = FUN_0058c5e0(pvVar7,local_480,L"LoadHashTables",(undefined4 *)&stack0xfffffaec);
          if ((char)uVar18 != '\0') {
            puVar20 = &DAT_00fcd26c;
            puVar12 = unaff_ESI;
            do {
              uVar2 = *puVar12;
              bVar24 = uVar2 < *puVar20;
              if (uVar2 != *puVar20) {
LAB_00739066:
                iVar19 = (1 - (uint)bVar24) - (uint)(bVar24 != 0);
                goto LAB_0073906b;
              }
              if (uVar2 == 0) break;
              uVar2 = puVar12[1];
              bVar24 = uVar2 < puVar20[1];
              if (uVar2 != puVar20[1]) goto LAB_00739066;
              puVar12 = puVar12 + 2;
              puVar20 = puVar20 + 2;
            } while (uVar2 != 0);
            iVar19 = 0;
LAB_0073906b:
            if (iVar19 == 0) {
              *(undefined1 *)((int)this + 0x75c) = 1;
            }
            else {
              puVar12 = &DAT_00fcd268;
              do {
                uVar2 = *unaff_ESI;
                bVar24 = uVar2 < *puVar12;
                if (uVar2 != *puVar12) {
LAB_007390a6:
                  iVar19 = (1 - (uint)bVar24) - (uint)(bVar24 != 0);
                  goto LAB_007390ab;
                }
                if (uVar2 == 0) break;
                uVar2 = unaff_ESI[1];
                bVar24 = uVar2 < puVar12[1];
                if (uVar2 != puVar12[1]) goto LAB_007390a6;
                unaff_ESI = unaff_ESI + 2;
                puVar12 = puVar12 + 2;
              } while (uVar2 != 0);
              iVar19 = 0;
LAB_007390ab:
              if (iVar19 == 0) {
                *(undefined1 *)((int)this + 0x75c) = 0;
              }
            }
          }
          if (((2 < (int)(local_478 - (int)local_480 & 0xfffffffeU)) && (local_480 != (short *)0x0))
             && (local_480 != local_470)) {
            Memory_FreeIfNonNull(local_480);
          }
        }
        if (piVar21 != (int *)&stack0xfffffae0) {
          do {
            piVar17 = (int *)*piVar21;
            Memory_FreeIfNonNull(piVar21);
            piVar21 = piVar17;
          } while (piVar17 != (int *)&stack0xfffffae0);
        }
        FUN_00ae0410((int)local_4e8,(uint)puStack_4e4);
        local_4e0[0] = (LPCWSTR)0x0;
        if ((undefined2 *)0x1 < puStack_4e4) {
          Memory_FreeIfNonNull(local_4e8);
        }
        FUN_0072a960(&pvStack_4cc);
        return true;
      }
      FUN_0072a960(&local_4b0);
    }
  }
  return false;
}

