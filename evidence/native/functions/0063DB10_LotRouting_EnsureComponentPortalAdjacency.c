/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. ECX routing owner plus lotrecord pointer and low16
   component ordinal, RET8, AL-only status. If lotrecord+8C is false require63D3B0 success; unsigned
   component bounds use44hex-byte records. Return existing component ready byte if initialized.
   Otherwise prepare portal-goal/adjoining-node state, cap portal count toFFFE when count>=FFFF,
   select portal From when component matches portal+48 or special selectedcomponent+16C edge bit1,
   otherwise To. Rebuild connected groups via634210, append symmetric neighbor relations, bracket
   existing optional owner+BC service callbacks, mark component byte1 and release scoped temporary
   state. Complete1055 owned bytes/309instructions in two existing ranges, three unowned gap bytes
   excluded; unknown children retain separate contracts. */

undefined1 __thiscall
LotRouting_EnsureComponentPortalAdjacency(void *this,uint *param_1,ushort param_2)

{
  undefined1 *puVar1;
  int iVar2;
  undefined2 *puVar3;
  undefined4 *puVar4;
  bool bVar5;
  float fVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  int ***pppiVar9;
  void *pvVar10;
  uint uVar11;
  int **ppiVar12;
  int **local_bc;
  int local_b8;
  int local_b4;
  undefined4 local_ac;
  int ***local_a8;
  int ***local_a4;
  undefined4 *local_a0;
  undefined4 local_9c;
  int **local_98;
  char *local_94;
  undefined4 local_90;
  float local_8c;
  undefined4 local_88;
  float local_84;
  undefined **local_80;
  uint local_7c;
  void *local_78;
  undefined4 local_74;
  undefined4 local_70;
  char *local_6c;
  uint local_68 [8];
  void *local_48;
  uint local_44;
  undefined4 local_40;
  undefined4 local_28;
  void *local_24;
  undefined ***local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  
  if ((((char)param_1[0x23] == '\0') && (uVar7 = FUN_0063d3b0(this,param_1), (char)uVar7 == '\0'))
     || (uVar11 = (uint)param_2, (uint)((int)(param_1[0x25] - param_1[0x24]) / 0x44) <= uVar11)) {
    return 0;
  }
  puVar1 = (undefined1 *)(param_1[0x24] + uVar11 * 0x44);
  if (*(char *)(param_1[0x24] + uVar11 * 0x44) == '\0') {
    local_80 = &PTR_LAB_00fecd48;
    FUN_0062a020((int)local_68);
    ppiVar12 = (int **)0x0;
    local_20 = &local_80;
    local_28 = 0;
    local_1c = 0;
    local_18 = 0x110000;
    local_14 = 0;
    local_10 = 0;
    local_24 = this;
    if (*(int *)(puVar1 + 0x34) != *(int *)(puVar1 + 0x38)) {
      if (*(void **)((int)this + 0xbc) != (void *)0x0) {
        FUN_0061ebb0(*(void **)((int)this + 0xbc),'\0');
      }
      local_bc = (int **)(*(int *)(puVar1 + 8) - *(int *)(puVar1 + 4) >> 2);
      if ((int **)0xfffe < local_bc) {
        local_bc = (int **)0xfffe;
      }
      local_78 = (void *)0x0;
      local_74 = 0;
      local_70 = 0;
      local_6c = "Routing/portalGoals";
      if (local_bc != (int **)0x0) {
        do {
          iVar2 = *(int *)(*(int *)(puVar1 + 4) + (int)ppiVar12 * 4);
          if (((param_2 == (ushort)param_1[0x5b]) && (iVar2 != 0)) &&
             ((*(byte *)(iVar2 + 0x58) >> 1 & 1) != 0)) {
            bVar5 = true;
          }
          else {
            bVar5 = false;
          }
          if ((*(ushort *)(iVar2 + 0x48) == param_2) ||
             (puVar8 = (undefined4 *)(iVar2 + 0x20), bVar5)) {
            puVar8 = (undefined4 *)(iVar2 + 0x14);
          }
          local_ac = *puVar8;
          local_a8 = (int ***)puVar8[1];
          local_a4 = (int ***)puVar8[2];
          local_94 = (char *)0x0;
          local_a0 = (undefined4 *)0x0;
          local_9c = 0;
          local_98 = ppiVar12;
          FUN_0062b010(&local_78,&local_ac);
          ppiVar12 = (int **)((int)ppiVar12 + 1);
        } while (ppiVar12 < local_bc);
      }
      *(undefined4 *)(puVar1 + 0x28) = *(undefined4 *)(puVar1 + 0x24);
      FUN_006223a0((uint *)(puVar1 + 0x34));
      FUN_00623220(puVar1 + 0x34,(uint)local_bc);
      ppiVar12 = (int **)0x0;
      if (local_bc != (int **)0x0) {
        local_b8 = 0;
        local_b4 = 0;
        do {
          if (*(int *)(*(int *)(puVar1 + 0x34) + local_b8) ==
              ((int *)(*(int *)(puVar1 + 0x34) + local_b8))[1]) {
            puVar3 = *(undefined2 **)(puVar1 + 0x28);
            local_7c = (uint)ppiVar12 & 0xffff;
            if (puVar3 < *(undefined2 **)(puVar1 + 0x2c)) {
              *(undefined2 **)(puVar1 + 0x28) = puVar3 + 1;
              if (puVar3 != (undefined2 *)0x0) {
                *puVar3 = (short)ppiVar12;
              }
            }
            else {
              FUN_005d2730(puVar1 + 0x24,puVar3,(undefined2 *)&local_7c);
            }
            if (1 < (uint)((int)local_bc - (int)ppiVar12)) {
              local_a8 = (int ***)&local_a8;
              local_a0 = (undefined4 *)0x0;
              local_9c = 0;
              local_98 = (int **)0x0;
              local_94 = "Routing/connected";
              local_a4 = local_a8;
              uVar11 = FUN_00634210(this,local_68,*param_1,param_1[1],
                                    (float *)((int)local_78 + local_b4),(int *)&local_78,&local_ac);
              puVar8 = local_a0;
              if (((char)uVar11 != '\0') && (pppiVar9 = local_a4, (int ****)local_a4 != &local_a8))
              {
                do {
                  fVar6 = FLOAT_00f998f8;
                  if (ppiVar12 < pppiVar9[4]) {
                    local_90 = CONCAT22(local_90._2_2_,*(undefined2 *)(pppiVar9 + 4));
                    pvVar10 = (void *)(*(int *)(puVar1 + 0x34) + local_b8);
                    puVar8 = *(undefined4 **)((int)pvVar10 + 4);
                    local_8c = FLOAT_00f998f8;
                    if (puVar8 < *(undefined4 **)((int)pvVar10 + 8)) {
                      *(undefined4 **)((int)pvVar10 + 4) = puVar8 + 2;
                      if (puVar8 != (undefined4 *)0x0) {
                        *puVar8 = local_90;
                        puVar8[1] = fVar6;
                      }
                    }
                    else {
                      FUN_0040c540(pvVar10,puVar8,&local_90);
                    }
                    fVar6 = FLOAT_00f998f8;
                    pvVar10 = (void *)((int)pppiVar9[4] * 0x10 + *(int *)(puVar1 + 0x34));
                    local_88 = CONCAT22(local_88._2_2_,(short)ppiVar12);
                    puVar8 = *(undefined4 **)((int)pvVar10 + 4);
                    local_84 = FLOAT_00f998f8;
                    if (puVar8 < *(undefined4 **)((int)pvVar10 + 8)) {
                      *(undefined4 **)((int)pvVar10 + 4) = puVar8 + 2;
                      if (puVar8 != (undefined4 *)0x0) {
                        *puVar8 = local_88;
                        puVar8[1] = fVar6;
                      }
                    }
                    else {
                      FUN_0040c540(pvVar10,puVar8,&local_88);
                    }
                  }
                  pppiVar9 = (int ***)FUN_004e1030((int *)pppiVar9);
                  puVar8 = local_a0;
                } while ((int ****)pppiVar9 != &local_a8);
              }
              while (puVar8 != (undefined4 *)0x0) {
                FUN_008b19b0((undefined4 *)*puVar8);
                puVar4 = (undefined4 *)puVar8[1];
                Memory_FreeIfNonNull(puVar8);
                puVar8 = puVar4;
              }
            }
          }
          local_b4 = local_b4 + 0x1c;
          local_b8 = local_b8 + 0x10;
          ppiVar12 = (int **)((int)ppiVar12 + 1);
        } while (ppiVar12 < local_bc);
      }
      if (*(void **)((int)this + 0xbc) != (void *)0x0) {
        FUN_0061ebb0(*(void **)((int)this + 0xbc),'\x01');
      }
      if (local_78 != (void *)0x0) {
        Memory_FreeIfNonNull(local_78);
      }
    }
    *puVar1 = 1;
    FUN_009d67f0((int)local_48,local_44);
    local_40 = 0;
    if (1 < local_44) {
      Memory_FreeIfNonNull(local_48);
    }
  }
  return *puVar1;
}

