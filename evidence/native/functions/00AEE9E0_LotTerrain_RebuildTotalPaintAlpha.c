/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 selected derived-map role: when aggregate+70 has dimensions, clear it and walk all paint
   layers at each sample. Add raw bytes in DWORD temporary then write LOW BYTE into aggregate map;
   this is not a saturating blend or the AEA6F0 any-paint predicate. Rebuild is invoked by AEFF20
   when aggregate allocation is initialized. Host full snapshot/render rebuild need not retain an
   unread duplicate transient coverage cache; raw layer bytes remain authoritative. */

int __fastcall LotTerrain_RebuildTotalPaintAlpha(int param_1)

{
  ushort uVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  uint uVar7;
  byte local_19;
  int local_18;
  uint local_14;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
  iVar3 = 0;
  if (*(int *)(param_1 + 0x74) * *(int *)(param_1 + 0x70) != 0) {
    local_19 = 0;
    local_4 = param_1;
    FUN_00aeb350((void *)(param_1 + 0x70),&local_19);
    iVar4 = *(int *)(param_1 + 0x34) - *(int *)(param_1 + 0x30);
    iVar3 = iVar4 * 0x2aaaaaab;
    iVar4 = iVar4 / 0x18;
    if ((iVar4 != 0) && (local_14 = 0, 0 < *(int *)(param_1 + 0x20))) {
      iVar3 = *(int *)(param_1 + 0x1c);
      local_8 = iVar4;
      do {
        uVar7 = 0;
        uVar6 = local_14;
        if (0 < iVar3) {
          do {
            local_18 = 0;
            if (iVar4 != 0) {
              piVar5 = *(int **)(param_1 + 0x60);
              local_c = (int)uVar7 >> 2;
              local_10 = iVar4;
              do {
                iVar3 = *piVar5;
                uVar2 = *(int *)(iVar3 + 8) * ((int)uVar6 >> 2) + local_c;
                uVar1 = *(ushort *)(*(int *)(iVar3 + 0x30) + uVar2 * 2);
                if ((short)uVar1 < 0) {
                  iVar3 = *(int *)(iVar3 + 0x10);
                }
                else {
                  iVar3 = *(int *)(iVar3 + 0x20) + ((local_14 & 3) + (uint)uVar1 * 4) * 4;
                  uVar2 = uVar7 & 3;
                }
                local_18 = local_18 + (uint)*(byte *)(iVar3 + uVar2);
                piVar5 = piVar5 + 1;
                local_10 = local_10 + -1;
              } while (local_10 != 0);
              local_10 = 0;
              iVar4 = local_8;
              param_1 = local_4;
              uVar6 = local_14;
            }
            local_19 = (byte)local_18;
            FUN_00aee310((void *)(param_1 + 0x70),(char *)&local_19,uVar7,uVar6);
            iVar3 = *(int *)(param_1 + 0x1c);
            uVar7 = uVar7 + 1;
          } while ((int)uVar7 < iVar3);
        }
        local_14 = uVar6 + 1;
      } while ((int)local_14 < *(int *)(param_1 + 0x20));
    }
  }
  return iVar3;
}

