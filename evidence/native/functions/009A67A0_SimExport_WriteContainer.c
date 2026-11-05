/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX export, stream and optional package-remap stack words/RET8; AL
   status. Always UInt16 version4 and UInt16 key/ID counts. Each key emitted
   instance64/group32/type32 after optional exact remap; IDs64, property-stream byte count/payload,
   stored Boolean and counted UTF16 source. Ordinary managed writer keeps supplied keys;
   export-package remap is a separate caller choice. Decompiler undefined5 array stride/stack
   artifacts must be checked against complete original Listing. */

undefined4 __thiscall SimExport_WriteContainer(void *this,int *param_1,void *param_2)

{
  uint *puVar1;
  int iVar2;
  undefined5 *puVar3;
  ushort uVar4;
  byte bVar5;
  bool readSucceeded;
  int *piVar6;
  uint uVar7;
  undefined4 extraout_EAX;
  uint uVar8;
  uint value;
  uint *puVar9;
  undefined5 *puVar10;
  undefined4 uVar11;
  undefined4 local_30 [2];
  uint local_28;
  uint local_24;
  uint local_20;
  uint local_1c;
  undefined1 local_18 [8];
  int *local_10;
  uint local_8;
  
  StreamReader_Construct(local_18,param_1,1);
  bVar5 = Stream_WriteUInt16(local_10,4,local_8);
  StreamReader_AccumulateStatus(local_18,bVar5);
  uVar4 = (ushort)(*(int *)((int)this + 0x2c) - *(int *)((int)this + 0x28) >> 4);
  bVar5 = Stream_WriteUInt16(local_10,uVar4,local_8);
  StreamReader_AccumulateStatus(local_18,bVar5);
  if (uVar4 != 0) {
    puVar1 = *(uint **)((int)this + 0x2c);
    for (puVar9 = *(uint **)((int)this + 0x28); puVar9 != puVar1; puVar9 = puVar9 + 4) {
      uVar7 = *puVar9;
      uVar8 = puVar9[1];
      value = puVar9[2];
      local_1c = puVar9[3];
      local_28 = uVar7;
      local_24 = uVar8;
      local_20 = value;
      if (param_2 != (void *)0x0) {
        piVar6 = (int *)DbpfIndex_FindIterator(param_2,local_30,&local_28);
        iVar2 = *piVar6;
        if (iVar2 != *(int *)(*(int *)((int)param_2 + 4) + *(int *)((int)param_2 + 8) * 4)) {
          local_1c = *(uint *)(iVar2 + 0x1c);
          uVar7 = *(uint *)(iVar2 + 0x10);
          uVar8 = *(uint *)(iVar2 + 0x14);
          value = *(uint *)(iVar2 + 0x18);
        }
      }
      bVar5 = FUN_004de0c0(local_10,CONCAT44(uVar8,uVar7),local_8);
      StreamReader_AccumulateStatus(local_18,bVar5);
      bVar5 = Stream_WriteUInt32(local_10,local_1c,local_8);
      StreamReader_AccumulateStatus(local_18,bVar5);
      bVar5 = Stream_WriteUInt32(local_10,value,local_8);
      StreamReader_AccumulateStatus(local_18,bVar5);
    }
  }
  uVar4 = (ushort)(*(int *)((int)this + 0x3c) - *(int *)((int)this + 0x38) >> 3);
  bVar5 = Stream_WriteUInt16(local_10,uVar4,local_8);
  StreamReader_AccumulateStatus(local_18,bVar5);
  if (uVar4 != 0) {
    puVar3 = *(undefined5 **)((int)this + 0x3c);
    for (puVar10 = *(undefined5 **)((int)this + 0x38); puVar10 != puVar3; puVar10 = puVar10 + 1) {
      bVar5 = FUN_004de0c0(local_10,CONCAT26((short)((uint)*(undefined4 *)((int)puVar10 + 4) >> 0x10
                                                    ),CONCAT15((char)((uint)*(undefined4 *)
                                                                             ((int)puVar10 + 4) >> 8
                                                                     ),*puVar10)),local_8);
      StreamReader_AccumulateStatus(local_18,bVar5);
    }
  }
  uVar7 = (**(code **)(*(int *)((int)this + 0x48) + 0x1c))();
  bVar5 = Stream_WriteUInt32(local_10,uVar7,local_8);
  StreamReader_AccumulateStatus(local_18,bVar5);
  if (uVar7 != 0) {
    if (*(int *)((int)this + 0x4c) == 0) {
      uVar11 = 0;
    }
    else {
      uVar11 = *(undefined4 *)(*(int *)((int)this + 0x4c) + 8);
    }
    bVar5 = FUN_004dde50(local_10,uVar11,uVar7);
    StreamReader_AccumulateStatus(local_18,bVar5);
  }
  readSucceeded = Stream_WriteBoolean(local_10,*(byte *)((int)this + 0x88));
  StreamReader_AccumulateStatus(local_18,readSucceeded);
  StreamContext_WriteUtf16String(local_18,(undefined4 *)((int)this + 0x78));
  StreamReader_ReleaseAuxiliary(local_18);
  return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
}

