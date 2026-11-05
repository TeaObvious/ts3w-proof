/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Rebuilds valid per-level puddle part sets from candidates. Exposure/room
   checks reject sheltered/interior parts; upper levels require floor-pattern admission, ground
   requires flatness. Iterates lot levels and publishes retained part sets. This is distinct from
   merely checking point shelter. */

void __fastcall Seasons_RebuildValidLotPuddleParts(int param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  int iVar3;
  void *pvVar4;
  bool bVar5;
  char cVar6;
  short sVar7;
  undefined4 uVar8;
  int iVar9;
  undefined2 *puVar10;
  int *piVar11;
  undefined2 local_38;
  undefined1 local_36;
  undefined1 local_35;
  int local_34;
  uint local_30;
  undefined4 local_2c [3];
  undefined4 local_20;
  undefined4 *local_1c;
  uint local_18;
  undefined4 local_14;
  float local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  bVar5 = FlagWord_TestAnyMask(&DAT_011cede0,0x8000);
  if (bVar5) {
    if (*(char *)(param_1 + 0x38) == '\0') {
      Seasons_CollectLotPuddleCandidates(param_1);
    }
    FUN_00a43240(*(uint *)(param_1 + 0x24),*(uint *)(param_1 + 0x28));
    *(undefined4 *)(param_1 + 0x28) = *(undefined4 *)(param_1 + 0x24);
    iVar2 = *(int *)(param_1 + 0x34);
    if (((*(int *)(iVar2 + 0x408) != 1) || (*(int *)(iVar2 + 0x40c) != 0x50)) &&
       (local_34 = 0, -1 < *(int *)(iVar2 + 0x180))) {
      do {
        this = *(undefined4 **)(param_1 + 0x28);
        local_10 = 1.0;
        local_c = 0x40000000;
        local_4 = "Scratch/RainPuddleManager/PuddleValidTilePartSet";
        local_18 = 1;
        local_1c = &DAT_0114d900;
        local_14 = 0;
        local_8 = 0;
        if (this < *(undefined4 **)(param_1 + 0x2c)) {
          *(undefined4 **)(param_1 + 0x28) = this + 8;
          if (this != (undefined4 *)0x0) {
            FUN_00aa1590(this,&local_20);
          }
        }
        else {
          FUN_00aa4660((int *)(param_1 + 0x24),this,&local_20);
        }
        FUN_00ae0410((int)local_1c,local_18);
        local_14 = 0;
        if (1 < local_18) {
          Memory_FreeIfNonNull(local_1c);
        }
        piVar11 = *(int **)(param_1 + 8);
        iVar9 = local_34 * 0x20;
        iVar2 = *(int *)(param_1 + 0x24);
        puVar10 = (undefined2 *)*piVar11;
        if (puVar10 == (undefined2 *)0x0) {
          piVar11 = piVar11 + 1;
          iVar3 = *piVar11;
          while (iVar3 == 0) {
            piVar11 = piVar11 + 1;
            iVar3 = *piVar11;
          }
          puVar10 = (undefined2 *)*piVar11;
        }
        if (puVar10 != *(undefined2 **)(*(int *)(param_1 + 8) + *(int *)(param_1 + 0xc) * 4)) {
          do {
            local_38 = *puVar10;
            local_35 = *(undefined1 *)((int)puVar10 + 3);
            local_36 = (undefined1)local_34;
            bVar5 = FUN_00abc5d0(*(void **)(param_1 + 0x34),(char *)&local_38);
            if (((bVar5) &&
                ((((pvVar4 = *(void **)(*(int *)(param_1 + 0x34) + 0x290), pvVar4 == (void *)0x0 ||
                   (local_34 < 1)) ||
                  (cVar6 = FUN_00a8e0b0(pvVar4,(char *)&local_38,0xf,'\x01'), cVar6 != '\0')) &&
                 ((pvVar4 = *(void **)(*(int *)(param_1 + 0x34) + 0x298), pvVar4 == (void *)0x0 ||
                  (sVar7 = FUN_00b470e0(pvVar4,(char *)&local_38,0,'\x01'), sVar7 == 0)))))) &&
               ((local_34 != 0 ||
                (uVar8 = TestFloorCellCornerHeightAgreement
                                   (*(int *)(param_1 + 0x34),(char *)&local_38), (char)uVar8 != '\0'
                )))) {
              local_30 = local_30 & 0xffffff00;
              FUN_00a56160((void *)(iVar9 + iVar2),local_2c,(char *)&local_38);
            }
            puVar10 = *(undefined2 **)(puVar10 + 2);
            while (puVar10 == (undefined2 *)0x0) {
              piVar1 = piVar11 + 1;
              piVar11 = piVar11 + 1;
              puVar10 = (undefined2 *)*piVar1;
            }
          } while (puVar10 != *(undefined2 **)(*(int *)(param_1 + 8) + *(int *)(param_1 + 0xc) * 4))
          ;
        }
        local_34 = local_34 + 1;
      } while (local_34 <= *(int *)(*(int *)(param_1 + 0x34) + 0x180));
    }
  }
  return;
}

