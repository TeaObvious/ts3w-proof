/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Actual FloorManager save dispatcher.
   Writes floor visibility flags group93D6A5, pattern93DEB7 through A92A00, rotationA6D544 through
   A95080, optional additional grids and key map AA4D60 group93D9D1. C6D880 emits each v1 grid
   header. Complete original status/resource-close order is retained.
   
   Flags identity correction: first manager+28 grid written under0093D6A5 is FloorManager FLAGS
   (byte visibility), not elevation as earlier plate wording suggested. LotGrid_WriteHeaderResource
   emits header, raw byte vector10..14 follows, accumulated contextstatus andclose. No flag
   recomputation from floor pattern IDs is performed in this selected save branch. Other saved
   pattern/rotation/map branches preserved. Complete physicalbody retains nonowned alignment gap. */

void __thiscall
FloorManager_WriteResources(void *this,char *param_1,void *param_2,undefined4 param_3,int *param_4)

{
  int iVar1;
  int *piVar2;
  byte bVar3;
  undefined4 uVar4;
  int *piVar5;
  ushort *puVar6;
  ushort *local_10;
  int local_c;
  undefined4 local_8;
  char *local_4;
  
  FUN_00a90120((int)this);
  if ((*(int *)((int)this + 0xd8) != 0) && (*(char *)(*(int *)((int)this + 0xd8) + 0x80) != '\0')) {
    FUN_00a92270((int)this);
  }
  if (param_1[0x14] != '\0') {
    LotGrid_WriteHeaderResource(*(void **)((int)this + 0x28),param_1,0x93d6a5,param_3,param_4);
    if (param_1[0x14] != '\0') {
      iVar1 = *(int *)(*(int *)((int)this + 0x28) + 0x10);
      bVar3 = FUN_004dde50(*(int **)(param_1 + 8),iVar1,
                           *(int *)(*(int *)((int)this + 0x28) + 0x14) - iVar1);
      StreamReader_AccumulateStatus(param_1,bVar3);
    }
    ResourceStreamContext_Close(param_1);
    if (param_1[0x14] != '\0') {
      LotGrid_WriteHeaderResource(*(void **)((int)this + 0x2c),param_1,0x93deb7,param_3,param_4);
      if (param_1[0x14] != '\0') {
        local_10 = (ushort *)0x0;
        local_c = 0;
        local_8 = 0;
        local_4 = "Lot/FloorManager/Tmp1";
        FloorPatterns_FlattenFourHalfwords(*(void **)((int)this + 0x2c),(int *)&local_10);
        puVar6 = local_10;
        uVar4 = FUN_004ddea0(*(int **)(param_1 + 8),local_10,(local_c - (int)local_10 >> 3) * 4,
                             *(uint *)(param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,(byte)uVar4);
        if (puVar6 != (ushort *)0x0) {
          Memory_FreeIfNonNull(puVar6);
        }
      }
      ResourceStreamContext_Close(param_1);
      if (param_1[0x14] != '\0') {
        LotGrid_WriteHeaderResource(*(void **)((int)this + 0x30),param_1,0xa6d544,param_3,param_4);
        if (param_1[0x14] != '\0') {
          local_10 = (ushort *)0x0;
          local_c = 0;
          local_8 = 0;
          local_4 = "Lot/FloorManager/TmpPatternRotation";
          FloorRotations_FlattenBytes(*(void **)((int)this + 0x30),(int *)&local_10);
          puVar6 = local_10;
          bVar3 = FUN_004dde50(*(int **)(param_1 + 8),local_10,local_c - (int)local_10);
          StreamReader_AccumulateStatus(param_1,bVar3);
          if (puVar6 != (ushort *)0x0) {
            Memory_FreeIfNonNull(puVar6);
          }
        }
        ResourceStreamContext_Close(param_1);
        if ((param_1[0x14] != '\0') &&
           (FUN_00a90980(this,param_1,param_3,param_4), param_1[0x14] != '\0')) {
          if ((*(void **)((int)this + 0x48) != (void *)0x0) &&
             (*(int *)((int)this + 0x34) != *(int *)((int)this + 0x38))) {
            LotGrid_WriteHeaderResource
                      (*(void **)((int)this + 0x48),param_1,0x8153da,param_3,param_4);
            if (param_1[0x14] != '\0') {
              local_10 = (ushort *)0x0;
              local_c = 0;
              local_8 = 0;
              local_4 = "Lot/FloorManager/Tmp1";
              FloorPatterns_FlattenFourHalfwords(*(void **)((int)this + 0x48),(int *)&local_10);
              puVar6 = local_10;
              FUN_005a2fe0(param_1,local_10,(local_c - (int)local_10 >> 3) * 4);
              if (puVar6 != (ushort *)0x0) {
                Memory_FreeIfNonNull(puVar6);
              }
            }
            ResourceStreamContext_Close(param_1);
          }
          if (param_1[0x14] != '\0') {
            if ((*(void **)((int)this + 0x4c) != (void *)0x0) &&
               (*(int *)((int)this + 0x34) != *(int *)((int)this + 0x38))) {
              LotGrid_WriteHeaderResource
                        (*(void **)((int)this + 0x4c),param_1,0x8153e1,param_3,param_4);
              if (param_1[0x14] != '\0') {
                local_10 = (ushort *)0x0;
                local_c = 0;
                local_8 = 0;
                local_4 = "Lot/FloorManager/TmpPatternRotation";
                FloorRotations_FlattenBytes(*(void **)((int)this + 0x4c),(int *)&local_10);
                puVar6 = local_10;
                FUN_007d4e50(param_1,local_10,local_c - (int)local_10);
                if (puVar6 != (ushort *)0x0) {
                  Memory_FreeIfNonNull(puVar6);
                }
              }
              ResourceStreamContext_Close(param_1);
            }
            if (param_1[0x14] != '\0') {
              FloorPatternMap_WriteResource
                        (*(void **)((int)this + 0xd8),param_1,param_2,0x93d9d1,param_3,param_4);
              piVar2 = *(int **)(*(int *)((int)this + 0xd8) + 4);
              puVar6 = (ushort *)*piVar2;
              piVar5 = piVar2;
              if (puVar6 == (ushort *)0x0) {
                piVar5 = piVar2 + 1;
                iVar1 = piVar2[1];
                while (iVar1 == 0) {
                  piVar5 = piVar5 + 1;
                  iVar1 = *piVar5;
                }
                puVar6 = (ushort *)*piVar5;
              }
              local_10 = (ushort *)piVar2[*(int *)(*(int *)((int)this + 0xd8) + 8)];
              if (puVar6 != local_10) {
                do {
                  if (*(int *)(puVar6 + 0xc) != 0) {
                    FUN_00ab09c0(*(void **)((int)this + 4),(uint *)(puVar6 + 8));
                  }
                  if (*(int *)(puVar6 + 0x14) != 0) {
                    FUN_00ab09c0(*(void **)((int)this + 4),(uint *)(puVar6 + 0x10));
                  }
                  if (*(int *)(puVar6 + 0x1c) != 0) {
                    FUN_00ab09f0(*(void **)((int)this + 4),(uint *)(puVar6 + 0x18));
                  }
                  puVar6 = *(ushort **)(puVar6 + 0x24);
                  while (puVar6 == (ushort *)0x0) {
                    piVar2 = piVar5 + 1;
                    piVar5 = piVar5 + 1;
                    puVar6 = (ushort *)*piVar2;
                  }
                } while (puVar6 != local_10);
              }
              if (param_1[0x14] != '\0') {
                FUN_00a8d500((void *)((int)this + 0x150),param_1,param_2,param_3,param_4);
                FUN_00a8e570((void *)((int)this + 0x150),*(void **)((int)this + 4));
              }
            }
          }
        }
      }
    }
  }
  return;
}

