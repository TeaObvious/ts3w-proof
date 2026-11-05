/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical ECX resource, stream word/RET4. Writes
   magic4F454742/version300, four LODs, LOD offset8/stride12, calculated counts and three
   backpatched offsets. Stored absolute map words become differential only when low-two flags are
   nonzero; a zero-flag word leaves the running previous pointer unchanged. Writes compact ushort3
   vector bank. Decompiler stack aliases and apparent pointer arithmetic are not recovered source
   declarations; complete original Listing retains the real writes/seeks. */

uint __thiscall BlendGeometry_WriteResource(void *this,int *param_1)

{
  ushort value;
  undefined1 uVar1;
  byte bVar2;
  char cVar3;
  int *piVar4;
  undefined4 uVar5;
  uint uVar6;
  undefined4 extraout_EAX;
  int iVar7;
  ushort uVar8;
  int *piVar9;
  int iVar10;
  short sVar11;
  undefined4 unaff_ESI;
  int *piVar12;
  int iVar13;
  uint *puVar14;
  int *unaff_EDI;
  int *local_28;
  int *local_24;
  int *piStack_20;
  int *piStack_1c;
  int *local_18;
  int *piStack_14;
  int *local_10;
  uint uStack_c;
  uint local_8;
  
  StreamReader_Construct(&local_18,param_1,1);
  bVar2 = Stream_WriteUInt32(local_10,0x4f454742,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  bVar2 = Stream_WriteUInt32(local_10,0x300,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  bVar2 = Stream_WriteUInt32(local_10,*(uint *)((int)this + 0x2c),local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  bVar2 = Stream_WriteUInt32(local_10,4,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  iVar7 = *(int *)((int)this + 0x2c);
  piVar9 = (int *)0x0;
  piVar12 = (int *)0x0;
  local_28 = (int *)0x0;
  local_24 = (int *)0x0;
  if (iVar7 != 0) {
    piVar4 = (int *)(*(int *)((int)this + 0x28) + 0x34);
    do {
      piVar9 = (int *)((int)piVar9 + piVar4[-10] + piVar4[-5] + piVar4[5] + *piVar4);
      piVar12 = (int *)((int)piVar12 + piVar4[-9] + piVar4[6] + piVar4[-4] + piVar4[1]);
      iVar7 = iVar7 + -1;
      piVar4 = piVar4 + 0x16;
      local_28 = piVar9;
      local_24 = piVar12;
    } while (iVar7 != 0);
  }
  piVar12 = local_24;
  piVar9 = local_28;
  bVar2 = Stream_WriteUInt32(local_10,(uint)local_28,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  bVar2 = Stream_WriteUInt32(local_10,(uint)piVar12,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  bVar2 = Stream_WriteUInt32(local_10,8,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  bVar2 = Stream_WriteUInt32(local_10,0xc,local_8);
  StreamReader_AccumulateStatus(&local_18,bVar2);
  iVar7 = 0;
  uVar5 = (**(code **)(*local_10 + 0x24))();
  bVar2 = Stream_WriteUInt32(piStack_14,0,uStack_c);
  StreamReader_AccumulateStatus(&piStack_1c,bVar2);
  local_28 = (int *)(**(code **)(*piStack_14 + 0x24))(0);
  bVar2 = Stream_WriteUInt32(local_18,0,(uint)local_10);
  StreamReader_AccumulateStatus(&piStack_20,bVar2);
  local_28 = (int *)(**(code **)(*local_18 + 0x24))(0);
  bVar2 = Stream_WriteUInt32(piStack_1c,0,(uint)piStack_14);
  StreamReader_AccumulateStatus(&local_24,bVar2);
  uVar6 = (**(code **)(*piStack_1c + 0x24))(0);
  if ((uVar6 == 0xffffffff) || (cVar3 = (**(code **)(*piStack_20 + 0x28))(uVar5,0), cVar3 == '\0'))
  {
LAB_005a3314:
    piStack_14 = (int *)((uint)piStack_14 & 0xffffff00);
  }
  else {
    bVar2 = Stream_WriteUInt32(piStack_20,uVar6,(uint)local_18);
    StreamReader_AccumulateStatus(&local_28,bVar2);
    cVar3 = (**(code **)(*piStack_20 + 0x28))(uVar6,0);
    if (cVar3 == '\0') goto LAB_005a3314;
  }
  uStack_c = 0;
  if (*(int *)((int)this + 0x2c) != 0) {
    iVar10 = 0;
    piVar9 = unaff_EDI;
    do {
      iVar13 = *(int *)((int)this + 0x28) + iVar10;
      bVar2 = Stream_WriteUInt32(piStack_20,*(uint *)(*(int *)((int)this + 0x28) + iVar10),
                                 (uint)local_18);
      StreamReader_AccumulateStatus(&local_28,bVar2);
      bVar2 = Stream_WriteUInt32(piStack_20,*(uint *)(iVar13 + 4),(uint)local_18);
      StreamReader_AccumulateStatus(&local_28,bVar2);
      puVar14 = (uint *)(iVar13 + 0x10);
      iVar13 = 4;
      do {
        bVar2 = Stream_WriteUInt32(piStack_20,puVar14[-2],(uint)local_18);
        StreamReader_AccumulateStatus(&local_28,bVar2);
        bVar2 = Stream_WriteUInt32(piStack_20,puVar14[-1],(uint)local_18);
        StreamReader_AccumulateStatus(&local_28,bVar2);
        bVar2 = Stream_WriteUInt32(piStack_20,*puVar14,(uint)local_18);
        StreamReader_AccumulateStatus(&local_28,bVar2);
        puVar14 = puVar14 + 5;
        iVar13 = iVar13 + -1;
      } while (iVar13 != 0);
      uStack_c = uStack_c + 1;
      iVar10 = iVar10 + 0x58;
    } while (uStack_c < *(uint *)((int)this + 0x2c));
  }
  uVar6 = (**(code **)(*piStack_20 + 0x24))(0);
  if ((uVar6 == 0xffffffff) || (cVar3 = (**(code **)(*local_24 + 0x28))(unaff_ESI,0), cVar3 == '\0')
     ) {
LAB_005a345b:
    local_18 = (int *)((uint)local_18 & 0xffffff00);
  }
  else {
    bVar2 = Stream_WriteUInt32(local_24,uVar6,(uint)piStack_1c);
    StreamReader_AccumulateStatus(&stack0xffffffd4,bVar2);
    cVar3 = (**(code **)(*local_24 + 0x28))(uVar6,0);
    if (cVar3 == '\0') goto LAB_005a345b;
  }
  local_10 = *(int **)((int)this + 0x30);
  if (piVar9 != (int *)0x0) {
    sVar11 = 0;
    piVar12 = (int *)0x0;
    if (piVar9 != (int *)0x0) {
      do {
        value = *(ushort *)((int)local_10 + (int)piVar12 * 2);
        uVar8 = value & 3;
        if (uVar8 == 0) {
          bVar2 = Stream_WriteUInt16(local_24,value,(uint)piStack_1c);
          StreamReader_AccumulateStatus(&stack0xffffffd4,bVar2);
        }
        else {
          bVar2 = Stream_WriteUInt16(local_24,((value - uVar8) - sVar11) + uVar8,(uint)piStack_1c);
          StreamReader_AccumulateStatus(&stack0xffffffd4,bVar2);
          sVar11 = value - uVar8;
        }
        piVar12 = (int *)((int)piVar12 + 1);
      } while (piVar12 < piVar9);
    }
  }
  uVar6 = (**(code **)(*local_24 + 0x24))(0);
  if ((uVar6 != 0xffffffff) && (cVar3 = (**(code **)(*local_28 + 0x28))(unaff_ESI,0), cVar3 != '\0')
     ) {
    bVar2 = Stream_WriteUInt32(local_28,uVar6,(uint)piStack_20);
    StreamReader_AccumulateStatus(&stack0xffffffd0,bVar2);
    cVar3 = (**(code **)(*local_28 + 0x28))(uVar6,0);
    if (cVar3 != '\0') goto LAB_005a3538;
  }
  piStack_1c = (int *)((uint)piStack_1c & 0xffffff00);
LAB_005a3538:
  uVar5 = FUN_004ddea0(local_28,(ushort *)((int)piStack_14 + (int)piVar9 * 2),iVar7 * 3,
                       (uint)piStack_20);
  StreamReader_AccumulateStatus(&stack0xffffffd0,(byte)uVar5);
  uVar1 = piStack_1c._0_1_;
  StreamReader_ReleaseAuxiliary(&stack0xffffffd0);
  return CONCAT31((int3)((uint)extraout_EAX >> 8),uVar1);
}

