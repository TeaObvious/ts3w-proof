/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Selected original NOBJ table read: validates
   header/version and stream status, reads reference metadata, resource lookup and object/factory
   allocation records before consuming object deserialization phases. Current C0000000 staged SACS
   tokens are not this native identity ABI. Whole generic object graph, all factory dispatch and
   saved VM-stack continuation remain separate contracts. */

uint __thiscall NativeObjectTable_ReadAndMaterialize(void *this,void *param_1)

{
  void *this_00;
  bool bVar1;
  uint uVar2;
  uint extraout_EAX;
  uint uVar3;
  uint extraout_EAX_00;
  int *piVar4;
  uint extraout_EAX_01;
  int *piVar5;
  undefined4 *puVar6;
  int iVar7;
  undefined4 unaff_EBX;
  uint unaff_EDI;
  uint *outUInt32;
  int iVar8;
  uint uStack_38;
  uint local_34 [2];
  uint local_2c;
  uint local_28;
  uint local_24;
  uint local_20;
  int iStack_1c;
  uint local_18;
  uint local_14 [2];
  int iStack_c;
  uint uStack_4;
  
  this_00 = param_1;
  uVar2 = StreamContext_GetPositionAndMarkNegative(param_1);
  local_18 = uVar2;
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_2c,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_28,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&param_1,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_20,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),local_34,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),local_14,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_24,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  uVar3 = extraout_EAX;
  if ((((*(char *)((int)this_00 + 0x14) == '\0') || (local_2c != 0x4a424f4e)) ||
      (uVar3 = local_28 & 0xffffff00, uVar3 == 0)) || (0x100 < uVar3)) {
    return uVar3 & 0xffffff00;
  }
  *(uint *)((int)this + 8) = local_24 + uVar2;
  piVar4 = *(int **)((int)this_00 + 8);
  (**(code **)(*piVar4 + 0x28))(local_20 + uVar2,0);
  FUN_007d46d0((void *)((int)this + 0xc),uStack_4);
  uStack_38 = 0;
  if (uStack_4 != 0) {
    iVar8 = 0;
    do {
      outUInt32 = (uint *)(*(int *)((int)this + 0xc) + iVar8);
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),&local_24,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      outUInt32[1] = local_24;
      bVar1 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),outUInt32,
                                *(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      uVar3 = extraout_EAX_00;
      if (*(char *)((int)this_00 + 0x14) == '\0') goto LAB_007d4e12;
      iVar8 = iVar8 + 0x10;
      uStack_38 = uStack_38 + 1;
      uVar2 = local_20;
    } while (uStack_38 < uStack_4);
  }
  (**(code **)(*piVar4 + 0x28))(iStack_1c + uVar2,0);
  local_28 = 0;
  FUN_00c2a4e0((void *)((int)this + 0x1c),unaff_EDI,&local_28);
  piVar4 = (int *)FUN_004afe80();
  uVar2 = 0;
  local_20 = 0;
  iStack_1c = 0;
  local_18 = 0;
  local_14[0] = 0;
  if (unaff_EDI != 0) {
    do {
      bVar1 = Stream_ReadResourceKeyTGI
                        (*(void **)((int)this_00 + 8),&local_20,*(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar1);
      uVar3 = extraout_EAX_01;
      if (*(char *)((int)this_00 + 0x14) == '\0') {
LAB_007d4e12:
        return uVar3 & 0xffffff00;
      }
      (**(code **)(*piVar4 + 0xc))(&local_20,*(int *)((int)this + 0x1c) + uVar2 * 4,0,0,0,0);
      uVar2 = uVar2 + 1;
    } while (uVar2 < unaff_EDI);
  }
  iStack_c = iStack_c + -1;
  *(void **)((int)this + 4) = this_00;
  if (-1 < iStack_c) {
    iVar8 = iStack_c * 0x10;
    iVar7 = iStack_c;
    do {
      piVar4 = (int *)(*(int *)((int)this + 0xc) + iVar8);
      if (((char)piVar4[3] == '\0') && (*(undefined1 *)(piVar4 + 3) = 1, -1 < *piVar4)) {
        piVar5 = (int *)FUN_004d8eb0();
        puVar6 = (undefined4 *)(**(code **)(*piVar5 + 0x20))(piVar4[1],0x519dc8c,0,0);
        if (puVar6 != (undefined4 *)0x0) {
          (**(code **)*puVar6)();
        }
        piVar4[2] = (int)puVar6;
      }
      if ((*(char *)((int)piVar4 + 0xd) == '\0') && (piVar4[2] != 0)) {
        piVar5 = *(int **)(*(int *)((int)this + 4) + 8);
        local_2c = (**(code **)(*piVar5 + 0x24))(0);
        (**(code **)(*piVar5 + 0x28))(*(int *)((int)this + 8) + *piVar4,0);
        (**(code **)(*(int *)piVar4[2] + 0x14))(*(undefined4 *)((int)this + 4),this);
        (**(code **)(*piVar5 + 0x28))(unaff_EBX,0);
      }
      iVar7 = iVar7 + -1;
      iStack_c = iVar8 + -0x10;
      iVar8 = iStack_c;
    } while (-1 < iVar7);
  }
  return CONCAT31((int3)((uint)iStack_c >> 8),*(undefined1 *)((int)this_00 + 0x14));
}

