/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 routing footprint table and kind contract): Analyst name. ECX routing owner,
   stream and UInt32* outSectionSize stack slots RET 8; AL child-result accumulator, not full EAX.
   Missing +9C map returns AL0 before zeroing caller output. Emit subversion 11,count placeholder,
   indexed map key, virtual +98 tag, virtual +9C(stream,owner) payload. Retain/release footprint
   references, repeatedly drain referenced footprints added to +A0 save list, then backpatch
   final+9C map count, free/reset save list, set output=currentPosition-startPosition. Missing map
   row fails after partial writes. Sticky stream status and AL accumulator are distinct. Actual
   decompiler stack/register artifacts remain; original instruction stack offsets/pushes
   authoritative. */

byte __thiscall RoutingFootprintTable_Write(void *this,void *stream,uint *outSectionSize)

{
  int *piVar1;
  byte bVar2;
  char cVar3;
  int iVar4;
  undefined4 *puVar5;
  uint **ppuVar6;
  uint uVar7;
  int iVar8;
  int *piVar9;
  undefined4 unaff_ESI;
  uint *puVar10;
  uint uVar11;
  undefined4 unaff_EDI;
  int *piVar12;
  int *piVar13;
  int *piVar14;
  int *unaff_retaddr;
  void *pvVar15;
  undefined4 uStack_34;
  void *local_30;
  uint *local_24;
  int iStack_20;
  uint *puStack_1c;
  int *piStack_18;
  int *piStack_14;
  int *piStack_10;
  int *piStack_c;
  char *pcStack_8;
  
  if (*(int *)((int)this + 0x9c) == 0) {
    return 0;
  }
  *outSectionSize = 0;
  uStack_34 = CONCAT13(1,(undefined3)uStack_34);
  local_24 = (uint *)StreamContext_GetPositionAndMarkNegative(stream);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),0xb,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  iVar4 = (**(code **)(**(int **)((int)stream + 8) + 0x24))(0);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),0,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  piVar9 = *(int **)((int)this + 0xa0);
  if (piVar9 != (int *)0x0) {
    FUN_00626e10(piVar9);
    Memory_FreeIfNonNull(piVar9);
  }
  puVar5 = (undefined4 *)FUN_004e4500(0x10,"Routing/PathPlanner/FootprintSaveList",0);
  if (puVar5 == (undefined4 *)0x0) {
    puVar5 = (undefined4 *)0x0;
  }
  else {
    *puVar5 = 0;
    puVar5[1] = 0;
    puVar5[2] = 0;
    puVar5[3] = "Routing/PathPlanner/FootprintSaveList";
  }
  *(undefined4 **)(uStack_34 + 0xa0) = puVar5;
  piVar14 = *(int **)(*(int *)(uStack_34 + 0x9c) + 4);
  pcStack_8 = "Routing/PathPlanner/FootprintSaveList";
  puVar10 = (uint *)*piVar14;
  piStack_14 = (int *)0x0;
  piVar12 = (int *)0x0;
  piStack_10 = (int *)0x0;
  piStack_c = (int *)0x0;
  piVar9 = piVar14;
  if (puVar10 == (uint *)0x0) {
    piVar9 = piVar14 + 1;
    iVar8 = piVar14[1];
    while (iVar8 == 0) {
      piVar9 = piVar9 + 1;
      iVar8 = *piVar9;
    }
    puVar10 = (uint *)*piVar9;
  }
  puStack_1c = (uint *)piVar14[*(int *)(*(int *)(uStack_34 + 0x9c) + 8)];
  piVar13 = piVar12;
  local_30 = this;
  if (puVar10 != (uint *)piVar14[*(int *)(*(int *)(uStack_34 + 0x9c) + 8)]) {
    do {
      unaff_retaddr = (int *)*puVar10;
      if (unaff_retaddr != (int *)0x0) {
        (**(code **)(*unaff_retaddr + 0x90))();
      }
      if (piVar13 < piStack_c) {
        piVar12 = piVar13 + 1;
        piStack_10 = piVar12;
        if (piVar13 == (int *)0x0) goto LAB_0062baba;
        *piVar13 = (int)unaff_retaddr;
        if (unaff_retaddr != (int *)0x0) {
          (**(code **)(*unaff_retaddr + 0x90))();
          goto LAB_0062baba;
        }
      }
      else {
        FUN_0062a300(&piStack_14,piVar13,(int *)&stack0x00000000);
        piVar12 = piStack_10;
LAB_0062baba:
        if (unaff_retaddr != (int *)0x0) {
          (**(code **)(*unaff_retaddr + 0x94))();
        }
      }
      puVar10 = (uint *)puVar10[2];
      while (puVar10 == (uint *)0x0) {
        piVar14 = piVar9 + 1;
        piVar9 = piVar9 + 1;
        puVar10 = (uint *)*piVar14;
      }
      piVar13 = piVar12;
    } while (puVar10 != puStack_1c);
    if (piStack_14 != piVar12) {
      do {
        pvVar15 = (void *)0x0;
        local_30 = (void *)((int)piVar12 - (int)piStack_14 >> 2);
        piVar9 = piStack_14;
        piVar14 = piVar12;
        if (local_30 != (void *)0x0) {
          do {
            piVar9 = (int *)piStack_14[(int)pvVar15];
            if (piVar9 != (int *)0x0) {
              (**(code **)(*piVar9 + 0x90))();
            }
            uVar7 = *(uint *)(*(int *)(uStack_34 + 0x9c) + 8);
            iVar8 = *(int *)(*(int *)(uStack_34 + 0x9c) + 4);
            for (puVar10 = *(uint **)(iVar8 + ((uint)piVar9 % uVar7) * 4); puVar10 != (uint *)0x0;
                puVar10 = (uint *)puVar10[2]) {
              if (piVar9 == (int *)*puVar10) {
                local_24 = puVar10;
                iStack_20 = iVar8 + ((uint)piVar9 % uVar7) * 4;
                ppuVar6 = &local_24;
                goto LAB_0062bb73;
              }
            }
            piStack_18 = (int *)(iVar8 + uVar7 * 4);
            puStack_1c = *(uint **)(iVar8 + uVar7 * 4);
            ppuVar6 = &puStack_1c;
LAB_0062bb73:
            if (*ppuVar6 == *(uint **)(iVar8 + uVar7 * 4)) {
              piVar14 = piStack_14;
              piVar12 = piStack_14;
              piVar13 = piStack_10;
              if (piVar9 != (int *)0x0) {
                (**(code **)(*piVar9 + 0x94))();
                piVar14 = piStack_14;
                piVar12 = piStack_14;
                piVar13 = piStack_10;
              }
              for (; piVar1 = piStack_10, piVar9 = piStack_14, piVar14 < piStack_10;
                  piVar14 = piVar14 + 1) {
                piStack_14 = piVar12;
                piStack_10 = piVar13;
                if ((int *)*piVar14 != (int *)0x0) {
                  (**(code **)(*(int *)*piVar14 + 0x94))();
                }
                piVar12 = piStack_14;
                piVar13 = piStack_10;
                piStack_10 = piVar1;
                piStack_14 = piVar9;
              }
              if (piStack_14 != (int *)0x0) {
                piStack_14 = piVar12;
                piStack_10 = piVar13;
                Memory_FreeIfNonNull(piVar9);
              }
              return 0;
            }
            bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),(*ppuVar6)[1],
                                       *(uint *)((int)stream + 0x10));
            StreamReader_AccumulateStatus(stream,bVar2);
            uVar7 = (**(code **)(*piVar9 + 0x98))();
            bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),uVar7,
                                       *(uint *)((int)stream + 0x10));
            StreamReader_AccumulateStatus(stream,bVar2);
            if ((char)((uint)unaff_ESI >> 0x18) == '\0') {
LAB_0062bbe5:
              unaff_ESI = 0;
            }
            else {
              cVar3 = (**(code **)(*piVar9 + 0x9c))(stream,uStack_34);
              unaff_ESI = 0x1000000;
              if (cVar3 == '\0') goto LAB_0062bbe5;
            }
            (**(code **)(*piVar9 + 0x94))();
            pvVar15 = (void *)((int)pvVar15 + 1);
            piVar9 = piStack_14;
            piVar14 = piStack_10;
          } while (pvVar15 < local_30);
        }
        for (; piVar12 = piStack_14, piStack_14 = piVar12, piVar9 < piVar14; piVar9 = piVar9 + 1) {
          if ((int *)*piVar9 != (int *)0x0) {
            (**(code **)(*(int *)*piVar9 + 0x94))();
          }
        }
        uVar11 = (*(int **)(uStack_34 + 0xa0))[1] - **(int **)(uStack_34 + 0xa0) >> 2;
        uVar7 = 0;
        piVar9 = piVar12;
        piStack_10 = piVar12;
        if (uVar11 != 0) {
          do {
            piVar14 = (int *)(**(int **)(uStack_34 + 0xa0) + uVar7 * 4);
            if (piVar9 < piStack_c) {
              piVar12 = piVar9 + 1;
              piStack_10 = piVar12;
              if (piVar9 != (int *)0x0) {
                piVar14 = (int *)*piVar14;
                *piVar9 = (int)piVar14;
                if (piVar14 != (int *)0x0) {
                  (**(code **)(*piVar14 + 0x90))();
                }
              }
            }
            else {
              FUN_0062a300(&piStack_14,piVar9,piVar14);
              piVar12 = piStack_10;
            }
            uVar7 = uVar7 + 1;
            piVar9 = piVar12;
          } while (uVar7 < uVar11);
        }
        puVar5 = *(undefined4 **)(uStack_34 + 0xa0);
        unaff_retaddr = (int *)puVar5[1];
        for (piVar9 = (int *)*puVar5; piVar9 < unaff_retaddr; piVar9 = piVar9 + 1) {
          if ((int *)*piVar9 != (int *)0x0) {
            (**(code **)(*(int *)*piVar9 + 0x94))();
          }
        }
        puVar5[1] = *puVar5;
      } while (piStack_14 != piVar12);
    }
  }
  puVar5 = *(undefined4 **)(uStack_34 + 0xa0);
  if (puVar5 != (undefined4 *)0x0) {
    unaff_retaddr = (int *)puVar5[1];
    for (piVar9 = (int *)*puVar5; piVar9 < unaff_retaddr; piVar9 = piVar9 + 1) {
      if ((int *)*piVar9 != (int *)0x0) {
        (**(code **)(*(int *)*piVar9 + 0x94))();
      }
    }
    if ((void *)*puVar5 != (void *)0x0) {
      Memory_FreeIfNonNull((void *)*puVar5);
    }
    Memory_FreeIfNonNull(puVar5);
  }
  *(undefined4 *)(uStack_34 + 0xa0) = 0;
  uVar7 = *(uint *)(*(int *)(uStack_34 + 0x9c) + 0xc);
  iVar8 = (**(code **)(**(int **)((int)stream + 8) + 0x24))(0);
  if ((iVar8 != -1) &&
     (cVar3 = (**(code **)(**(int **)((int)stream + 8) + 0x28))(local_30,0), cVar3 != '\0')) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),uVar7,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    cVar3 = (**(code **)(**(int **)((int)stream + 8) + 0x28))(iVar8,0);
    if (cVar3 != '\0') goto LAB_0062bdb1;
  }
  *(undefined1 *)((int)stream + 0x14) = 0;
LAB_0062bdb1:
  iVar8 = StreamContext_GetPositionAndMarkNegative(stream);
  piVar14 = piStack_18;
  *unaff_retaddr = iVar8 - iVar4;
  for (piVar9 = piStack_18; piVar9 < piVar12; piVar9 = piVar9 + 1) {
    if ((int *)*piVar9 != (int *)0x0) {
      (**(code **)(*(int *)*piVar9 + 0x94))();
    }
  }
  if (piVar14 != (int *)0x0) {
    Memory_FreeIfNonNull(piVar14);
  }
  return (byte)((uint)unaff_EDI >> 0x18);
}

