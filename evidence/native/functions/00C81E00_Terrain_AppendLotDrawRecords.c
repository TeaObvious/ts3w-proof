/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 lot-bearing terrain draw-record producer. Physical ECX terrain owner plus three
   stack DWORDs; the third argument is tested as a low byte; RET 0C. First obtains native per-lot
   chunk vector through 00C81300. Each visited chunk supplies signed DWORD coordinates converted
   using CVTSI2SS, and the same incoming lot pointer is stored in stack record+8. Chunk state 4 or
   nonzero flag calls 00C81790 with chunk and that lot. Returned material subsets have signed SAR 4
   count and 16-byte stride; selected material reference changes retain before releasing the
   previous local reference. Output appends advance 36 bytes and call 00AF5930 or the existing
   vector growth path. Other chunk states/additional records and local flags remain separate in this
   complete body. Native lot-ID memoization is not the current managed range/span-reference cache.
   The first memo call dereferences lot before the later nullable readiness branch; no global
   safe-null guarantee. Three non-owned alignment bytes separate the two owned ranges. */

void __thiscall Terrain_AppendLotDrawRecords(void *this,void *param_1,void *param_2,char param_3)

{
  void *this_00;
  int *piVar1;
  undefined4 *puVar2;
  bool bVar3;
  bool bVar4;
  int *piVar5;
  uchar uVar6;
  bool bVar7;
  undefined4 *puVar8;
  uint uVar9;
  int *piVar10;
  int iVar11;
  undefined4 *puVar12;
  int iVar13;
  int local_34;
  float local_24;
  float local_20;
  void *local_1c;
  int *local_18;
  undefined4 local_14;
  undefined4 local_10;
  int local_c;
  undefined4 uStack_8;
  byte local_4;
  
  bVar4 = false;
  puVar8 = Terrain_GetLotChunkMembership(this,param_1);
  if ((param_1 != (void *)0x0) && (uVar6 = Lot_ReadDetailReadinessByte(param_1), uVar6 != '\0')) {
    bVar7 = FUN_00a8b2c0(*(int *)((int)param_1 + 0x290));
    bVar3 = true;
    if (bVar7) goto LAB_00c81e45;
  }
  bVar3 = false;
LAB_00c81e45:
  puVar12 = (undefined4 *)*puVar8;
  puVar8 = (undefined4 *)puVar8[1];
  do {
    if (puVar12 == puVar8) {
      return;
    }
    this_00 = (void *)*puVar12;
    FUN_00af5300((int)&local_24);
    local_4 = local_4 & 0xfe;
                    /* Signed CVTSI2SS of chunk DWORD coordinates; the record's next word already
                       holds the incoming lot pointer. */
    local_24 = (float)*(int *)((int)this_00 + 0xc);
    local_20 = (float)*(int *)((int)this_00 + 0x10);
    local_1c = param_1;
    if (*(int *)((int)this_00 + 0x108) == 0) {
      FUN_00c81720(this,(int)this_00);
    }
    iVar11 = *(int *)((int)this_00 + 0x5c);
    if ((iVar11 == 4) || (param_3 != '\0')) {
                    /* Same incoming lot pointer plus selected chunk go to the complete lot terrain
                       material producer. */
      piVar10 = Terrain_BuildLotMaterialLayers(this,(int)this_00,param_1);
      if (piVar10 != (int *)0x0) {
        FUN_00c85b30((int)this_00);
                    /* SAR 4 counts signed 16-byte material-subset rows; output records advance
                       separately by 0x24 bytes. */
        iVar11 = piVar10[1] - *piVar10 >> 4;
        local_34 = 0;
        if (0 < iVar11) {
          iVar13 = 0;
          do {
            piVar5 = local_18;
            piVar1 = *(int **)(iVar13 + 4 + *piVar10);
            local_c = local_34;
            if (piVar1 != local_18) {
              if (piVar1 != (int *)0x0) {
                (**(code **)*piVar1)();
              }
              local_18 = piVar1;
              if (piVar5 != (int *)0x0) {
                (**(code **)(*piVar5 + 4))();
              }
            }
            local_14 = *(undefined4 *)(iVar13 + 8 + *piVar10);
            local_10 = *(undefined4 *)(iVar13 + 0xc + *piVar10);
            local_4 = local_4 & 0xfd;
            if ((local_18 != (int *)0x0) && (param_3 != '\0')) {
              FUN_006c9cb0((int)local_18);
            }
            puVar2 = *(undefined4 **)((int)param_2 + 4);
            if (puVar2 < *(undefined4 **)((int)param_2 + 8)) {
              *(undefined4 **)((int)param_2 + 4) = puVar2 + 9;
              if (puVar2 != (undefined4 *)0x0) {
                TerrainLotDrawRecord_CopyConstruct(puVar2,&local_24);
              }
            }
            else {
              FUN_00925140(param_2,puVar2,&local_24);
            }
            local_34 = local_34 + 1;
            iVar13 = iVar13 + 0x10;
          } while (local_34 < iVar11);
        }
        goto LAB_00c82104;
      }
      if (local_18 != (int *)0x0) {
        (**(code **)(*local_18 + 4))();
      }
    }
    else {
      if (iVar11 == 3) {
        uVar9 = FUN_00c85370(this_00,3);
        piVar10 = local_18;
        if ((char)uVar9 != '\0') {
          local_c = 0;
          piVar1 = *(int **)((int)this_00 + 0x104);
          if (piVar1 != local_18) {
            if (piVar1 != (int *)0x0) {
              (**(code **)*piVar1)();
            }
            local_18 = piVar1;
            if (piVar10 != (int *)0x0) {
              (**(code **)(*piVar10 + 4))();
            }
          }
          local_14 = *(undefined4 *)((int)this_00 + 0x118);
          if (bVar3) {
            local_10 = *(undefined4 *)((int)this_00 + 0x11c);
          }
          else {
            local_10 = 0;
          }
          puVar2 = *(undefined4 **)((int)param_2 + 4);
          local_4 = local_4 & 0xfd;
          if (puVar2 < *(undefined4 **)((int)param_2 + 8)) {
            *(undefined4 **)((int)param_2 + 4) = puVar2 + 9;
            if (puVar2 != (undefined4 *)0x0) {
              TerrainLotDrawRecord_CopyConstruct(puVar2,&local_24);
            }
          }
          else {
            FUN_00925140(param_2,puVar2,&local_24);
          }
        }
      }
      else if (((iVar11 == 2) || (iVar11 == 1)) &&
              (uVar9 = FUN_00c85370(this_00,1), piVar10 = local_18, (char)uVar9 != '\0')) {
        local_c = 0;
        piVar1 = *(int **)((int)this_00 + 0x100);
        if (piVar1 != local_18) {
          if (piVar1 != (int *)0x0) {
            (**(code **)*piVar1)();
          }
          local_18 = piVar1;
          if (piVar10 != (int *)0x0) {
            (**(code **)(*piVar10 + 4))();
          }
        }
        local_14 = *(undefined4 *)((int)this_00 + 0x114);
        local_4 = local_4 & 0xfd;
        puVar2 = *(undefined4 **)((int)param_2 + 4);
        if (puVar2 < *(undefined4 **)((int)param_2 + 8)) {
          *(undefined4 **)((int)param_2 + 4) = puVar2 + 9;
          if (puVar2 != (undefined4 *)0x0) {
            TerrainLotDrawRecord_CopyConstruct(puVar2,&local_24);
          }
        }
        else {
          FUN_00925140(param_2,puVar2,&local_24);
        }
      }
LAB_00c82104:
      piVar10 = local_18;
      if (!bVar4) {
        local_c = 2000;
        piVar1 = *(int **)((int)this_00 + 0x108);
        if (piVar1 != local_18) {
          if (piVar1 != (int *)0x0) {
            (**(code **)*piVar1)();
          }
          local_18 = piVar1;
          if (piVar10 != (int *)0x0) {
            (**(code **)(*piVar10 + 4))();
          }
        }
        local_14 = *(undefined4 *)((int)this_00 + 0x10c);
        local_10 = *(undefined4 *)((int)this_00 + 0x110);
        puVar2 = *(undefined4 **)((int)param_2 + 4);
        local_4 = local_4 & 0xfb | 10;
        if (puVar2 < *(undefined4 **)((int)param_2 + 8)) {
          *(undefined4 **)((int)param_2 + 4) = puVar2 + 9;
          if (puVar2 != (undefined4 *)0x0) {
            TerrainLotDrawRecord_CopyConstruct(puVar2,&local_24);
          }
        }
        else {
          FUN_00925140(param_2,puVar2,&local_24);
        }
        piVar1 = local_18;
        local_c = 4000;
        piVar10 = *(int **)((int)this_00 + 0x108);
        if (piVar10 != local_18) {
          if (piVar10 != (int *)0x0) {
            (**(code **)*piVar10)();
          }
          local_18 = piVar10;
          if (piVar1 != (int *)0x0) {
            (**(code **)(*piVar1 + 4))();
          }
        }
        local_14 = *(undefined4 *)((int)this_00 + 0x10c);
        local_10 = *(undefined4 *)((int)this_00 + 0x110);
        puVar2 = *(undefined4 **)((int)param_2 + 4);
        local_4 = local_4 & 0xfb | 10;
        uStack_8 = 1;
        if (puVar2 < *(undefined4 **)((int)param_2 + 8)) {
          *(undefined4 **)((int)param_2 + 4) = puVar2 + 9;
          if (puVar2 != (undefined4 *)0x0) {
            TerrainLotDrawRecord_CopyConstruct(puVar2,&local_24);
          }
        }
        else {
          FUN_00925140(param_2,puVar2,&local_24);
        }
        piVar1 = local_18;
        local_c = 2000;
        piVar10 = *(int **)((int)this_00 + 0x108);
        if (piVar10 != local_18) {
          if (piVar10 != (int *)0x0) {
            (**(code **)*piVar10)();
          }
          local_18 = piVar10;
          if (piVar1 != (int *)0x0) {
            (**(code **)(*piVar1 + 4))();
          }
        }
        local_14 = *(undefined4 *)((int)this_00 + 0x10c);
        local_10 = *(undefined4 *)((int)this_00 + 0x110);
        puVar2 = *(undefined4 **)((int)param_2 + 4);
        local_4 = local_4 & 0xf7 | 6;
        uStack_8 = 3;
        if (puVar2 < *(undefined4 **)((int)param_2 + 8)) {
          *(undefined4 **)((int)param_2 + 4) = puVar2 + 9;
          if (puVar2 != (undefined4 *)0x0) {
            TerrainLotDrawRecord_CopyConstruct(puVar2,&local_24);
          }
        }
        else {
          FUN_00925140(param_2,puVar2,&local_24);
        }
        bVar4 = true;
      }
      if (local_18 != (int *)0x0) {
        (**(code **)(*local_18 + 4))();
      }
    }
    puVar12 = puVar12 + 1;
  } while( true );
}

