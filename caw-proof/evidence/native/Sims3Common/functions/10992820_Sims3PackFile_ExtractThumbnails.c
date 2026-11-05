/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10992b79) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Sims3PackFile_ExtractThumbnails. Export
   ordinal(s): 2402. Entry VA: 0x10992820. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A24. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl Sims3PackFile_ExtractThumbnails(void *param_1,ushort param_2)

{
  short sVar1;
  LPCVOID pvVar2;
  char cVar3;
  bool bVar4;
  int iVar5;
  undefined4 *this;
  int *piVar6;
  int *piVar7;
  uint uVar8;
  undefined **ppuVar9;
  short *psVar10;
  int *piVar11;
  int *piVar12;
  undefined ***pppuVar13;
  int *piStack_4a8;
  undefined **local_4a4;
  undefined *local_4a0;
  int *local_49c;
  short *local_498;
  int *local_494;
  short *local_490;
  undefined *local_48c;
  char *local_488;
  char *local_484;
  undefined4 uStack_480;
  undefined **ppuStack_47c;
  undefined **ppuStack_478;
  int iStack_474;
  undefined4 uStack_470;
  LPCVOID pvStack_46c;
  char *apcStack_468 [3];
  undefined **ppuStack_45c;
  int aiStack_458 [4];
  wchar_t *apwStack_448 [4];
  undefined4 auStack_438 [140];
  WCHAR local_208 [260];
  
                    /* 0x992820  2402  Sims3PackFile_ExtractThumbnails */
  FUN_10910d20(local_208,0x104);
  local_498 = (short *)0x10b97590;
  local_4a4 = (undefined **)&_Dst_10ca8244;
  local_4a0 = &_Dst_10ca8244;
  local_49c = (int *)&DAT_10ca8246;
  FUN_1006aff0(&local_4a4,(ushort *)L"%s%s");
  FUN_10922640((int *)&local_4a4);
  FUN_107b50b0(param_1,param_2,(LPCWSTR)local_4a4);
  local_484 = "Scratch/Sims3PackFile_ExtractThumbnails/packagePath";
  local_490 = (short *)&_Dst_10ca8244;
  local_48c = &_Dst_10ca8244;
  local_488 = (char *)&DAT_10ca8246;
  iVar5 = FUN_107b4260(param_1,param_2);
  FUN_1006aff0(&local_490,(ushort *)&DAT_10af4254);
  piVar6 = *(int **)(iVar5 + 0x28);
  sVar1 = (short)*piVar6;
  piVar7 = piVar6;
  while (sVar1 != 0) {
    piVar7 = (int *)((int)piVar7 + 2);
    sVar1 = *(short *)piVar7;
  }
  FUN_1001f3b0(&local_490,piVar6,(int *)((int)piVar6 + ((int)piVar7 - (int)piVar6 >> 1) * 2));
  iVar5 = FUN_10722830();
  if (iVar5 == 0) {
    uVar8 = (int)local_488 - (int)local_490;
    psVar10 = local_490;
  }
  else {
    this = FUN_10919060(0x398,"Scratch/Sims3PackFile_ExtractThumbnails/pPackageDB",0);
    psVar10 = local_490;
    if ((this == (undefined4 *)0x0) ||
       (piVar6 = FUN_108defd0(this,local_490,iVar5), piVar6 == (int *)0x0)) {
      uVar8 = (int)local_488 - (int)psVar10;
    }
    else {
      piVar7 = piVar6 + 1;
      local_494 = piVar7;
      (**(code **)piVar6[1])();
      cVar3 = (**(code **)(*piVar6 + 4))();
      if ((cVar3 != '\0') && (cVar3 = (**(code **)(*piVar6 + 0x18))(), cVar3 != '\0')) {
        pppuVar13 = &ppuStack_47c;
        ppuStack_47c = &PTR_LAB_10ab5a24;
        ppuStack_478 = (undefined **)0x2e75c767;
        iStack_474 = 0;
        uStack_470 = 0;
        pvStack_46c = (LPCVOID)0x0;
        apcStack_468[0] = "Scratch/Sims3PackFile_ExtractThumbnails/packageKeyList";
        (**(code **)(*piVar6 + 0x30))();
        ppuStack_45c = ppuStack_478;
        ppuVar9 = ppuStack_47c;
        if (ppuStack_47c != ppuStack_478) {
          do {
            piVar12 = (int *)&DAT_00000001;
            piVar11 = (int *)&DAT_00000001;
            cVar3 = (**(code **)(*piVar6 + 0x34))(ppuVar9,&stack0xfffffb50);
            if (cVar3 == '\0') {
LAB_10992c61:
              (**(code **)(*piVar6 + 8))();
              (**(code **)(*piVar7 + 4))();
              if (piStack_4a8 != (int *)0x0) {
                (**(code **)(*piStack_4a8 + 8))();
              }
              goto LAB_10992c83;
            }
            piVar12 = (int *)(**(code **)(*piVar12 + 0x18))();
            if (piVar12 == (int *)0x0) {
              psVar10 = (short *)0x0;
              goto LAB_10992c61;
            }
            uVar8 = (**(code **)(*piVar12 + 0x1c))();
            local_484 = (char *)0x0;
            uStack_480 = 0;
            ppuStack_47c = (undefined **)0x0;
            ppuStack_478 = (undefined **)0x10b974c0;
            FUN_10001600(&local_484,uVar8);
            iVar5 = (**(code **)(*piVar12 + 0x30))(local_484,uVar8);
            if (iVar5 == 0) {
              (**(code **)(*piVar6 + 8))();
              (*(code *)(*pppuVar13)[1])();
LAB_10992bd0:
              if (local_48c != (undefined *)0x0) {
                FUN_10918e90((int)local_48c);
              }
              if (piVar11 != (int *)0x0) {
                (**(code **)(*piVar11 + 8))();
              }
              if (local_49c != (int *)0x0) {
                FUN_10918e90((int)local_49c);
              }
              local_4a4 = &PTR_LAB_10ab3a7c;
              FUN_1001f4e0((int *)&stack0xfffffb48);
              FUN_1001f4e0((int *)&stack0xfffffb34);
              return;
            }
            (**(code **)(*piVar11 + 0x20))();
            local_488 = "Scratch/Sims3PackFile_ExtractThumbnails/basename";
            FUN_1001e630(aiStack_458,&local_488);
            local_488 = "Scratch/Sims3PackFile_ExtractThumbnails/outputFile";
            FUN_1001e630(apwStack_448,&local_488);
            FUN_108e4b30((int)ppuVar9,aiStack_458,(int *)0x0,(int *)0x0,(short *)0x0);
            FUN_1006aff0(apwStack_448,(ushort *)L"%s%s");
            FUN_10910830(auStack_438,apwStack_448[0]);
            piVar11 = (int *)0x2;
            bVar4 = FUN_10910380(auStack_438,2,2,1,0);
            pvVar2 = pvStack_46c;
            if (!bVar4) {
              (**(code **)(*piVar6 + 8))();
              (**(code **)(*local_49c + 4))();
              FUN_10910890(aiStack_458);
              FUN_1001f4e0((int *)apcStack_468);
              FUN_1001f4e0((int *)&ppuStack_478);
              goto LAB_10992bd0;
            }
            FUN_10910760(auStack_438,pvStack_46c,uVar8);
            FUN_109104c0((int)auStack_438);
            FUN_10910890(auStack_438);
            FUN_1001f4e0((int *)apwStack_448);
            FUN_1001f4e0(aiStack_458);
            if (pvVar2 != (LPCVOID)0x0) {
              FUN_10918e90((int)pvVar2);
            }
            ppuVar9 = ppuVar9 + 4;
            piVar7 = local_49c;
            psVar10 = local_498;
          } while (ppuVar9 != ppuStack_45c);
        }
        (**(code **)(*piVar6 + 8))();
        (**(code **)(*piVar7 + 4))();
        FUN_10911b20((LPCWSTR)local_4a4,'\x01');
LAB_10992c83:
        if (iStack_474 != 0) {
          FUN_10918e90(iStack_474);
        }
        ppuStack_47c = &PTR_LAB_10ab3a7c;
        if ((2 < (int)((int)local_488 - (int)psVar10 & 0xfffffffeU)) && (psVar10 != (short *)0x0)) {
          FUN_10918e90((int)psVar10);
        }
        uVar8 = (int)local_49c - (int)local_4a4;
        goto joined_r0x10992cc7;
      }
      (**(code **)(*piVar6 + 8))();
      (**(code **)(*piVar7 + 4))();
      uVar8 = (int)local_488 - (int)psVar10;
    }
  }
  if ((2 < (int)(uVar8 & 0xfffffffe)) && (psVar10 != (short *)0x0)) {
    FUN_10918e90((int)psVar10);
  }
  uVar8 = (int)local_49c - (int)local_4a4;
joined_r0x10992cc7:
  if ((2 < (int)(uVar8 & 0xfffffffe)) && (local_4a4 != (undefined **)0x0)) {
    FUN_10918e90((int)local_4a4);
  }
  return;
}

