/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX roof manager. Open11E32896;
   alwaysversion6, twoUInt16registered
   keys,slope32,field+8C32,next-ID32,orientationBoolean,+90Boolean and conditional
   UInt32/Boolean/byte block,count. Under manager critical section iterate roof IDs, resolve
   retained records, emit34-byte rows: ID32,startX/Z32,level32,endX/Z32,endLevel32,key16,slope32.
   Close then leave critical section; release borrowed row refs. No version3..8 pass-through writer
   exists here. */

undefined1 __thiscall
RoofManager_WriteResource
          (void *this,void *param_1,void *param_2,undefined4 param_3,undefined4 param_4,
          undefined4 *param_5)

{
  int *piVar1;
  int iVar2;
  uint *puVar3;
  undefined4 *puVar4;
  bool bVar5;
  byte bVar6;
  uint uVar7;
  int *piVar8;
  uint *puVar9;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 *local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = 0x11e32896;
  local_4 = param_5;
  bVar5 = ResourceStreamContext_OpenWrite(param_1,&local_10,1);
  if (bVar5) {
    bVar6 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),6,*(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar6);
    uVar7 = ResourceReferences_RegisterKey(param_2,(uint *)((int)this + 0x40),0);
    bVar6 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar7,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar6);
    uVar7 = ResourceReferences_RegisterKey(param_2,(uint *)((int)this + 0x78),0);
    bVar6 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar7,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar6);
    bVar6 = FUN_004de390(*(int **)((int)param_1 + 8),*(undefined4 *)((int)this + 0x54),
                         *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar6);
    bVar6 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x8c),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar6);
    bVar6 = FUN_004de060(*(int **)((int)param_1 + 8),*(uint *)((int)this + 0x3c),
                         *(int *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar6);
    param_5 = (undefined4 *)CONCAT31(param_5._1_3_,*(byte *)((int)this + 0x88));
    bVar5 = Stream_WriteBoolean(*(void **)((int)param_1 + 8),*(byte *)((int)this + 0x88));
    StreamReader_AccumulateStatus(param_1,bVar5);
    param_5 = (undefined4 *)CONCAT31(param_5._1_3_,*(byte *)((int)this + 0x90));
    bVar5 = Stream_WriteBoolean(*(void **)((int)param_1 + 8),*(byte *)((int)this + 0x90));
    StreamReader_AccumulateStatus(param_1,bVar5);
    if (*(char *)((int)this + 0x90) != '\0') {
      bVar6 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x94),
                                 *(uint *)((int)param_1 + 0x10));
      StreamReader_AccumulateStatus(param_1,bVar6);
      param_5 = (undefined4 *)CONCAT31(param_5._1_3_,*(byte *)((int)this + 0x98));
      bVar5 = Stream_WriteBoolean(*(void **)((int)param_1 + 8),*(byte *)((int)this + 0x98));
      StreamReader_AccumulateStatus(param_1,bVar5);
      param_5 = (undefined4 *)CONCAT31(param_5._1_3_,*(byte *)((int)this + 0x99));
      bVar6 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),*(byte *)((int)this + 0x99));
      StreamReader_AccumulateStatus(param_1,bVar6);
    }
    bVar6 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x28),
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar6);
    FUN_004e1c00((LPCRITICAL_SECTION)((int)this + 0xa0),(uint *)&DAT_01070b2c);
    piVar8 = *(int **)((int)this + 0x20);
    puVar9 = (uint *)*piVar8;
    if (puVar9 == (uint *)0x0) {
      piVar8 = piVar8 + 1;
      iVar2 = *piVar8;
      while (iVar2 == 0) {
        piVar8 = piVar8 + 1;
        iVar2 = *piVar8;
      }
      puVar9 = (uint *)*piVar8;
    }
    puVar3 = *(uint **)(*(int *)((int)this + 0x20) + *(int *)((int)this + 0x24) * 4);
    while (puVar9 != puVar3) {
      param_5 = (undefined4 *)0x0;
      FUN_00b95b30(this,*puVar9,(int *)&param_5);
      puVar4 = param_5;
      if (param_5 != (undefined4 *)0x0) {
        bVar6 = FUN_004de060(*(int **)((int)param_1 + 8),param_5[3],*(int *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        bVar6 = FUN_004de390(*(int **)((int)param_1 + 8),puVar4[4],*(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        bVar6 = FUN_004de390(*(int **)((int)param_1 + 8),puVar4[5],*(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        bVar6 = FUN_004de060(*(int **)((int)param_1 + 8),puVar4[6],*(int *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        bVar6 = FUN_004de390(*(int **)((int)param_1 + 8),puVar4[7],*(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        bVar6 = FUN_004de390(*(int **)((int)param_1 + 8),puVar4[8],*(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        bVar6 = FUN_004de060(*(int **)((int)param_1 + 8),puVar4[9],*(int *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        uVar7 = ResourceReferences_RegisterKey(param_2,(uint *)(puVar4[10] + 8),0);
        bVar6 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar7,
                                   *(uint *)((int)param_1 + 0x10));
        StreamReader_AccumulateStatus(param_1,bVar6);
        bVar6 = FUN_004de390(*(int **)((int)param_1 + 8),puVar4[0xf],*(uint *)((int)param_1 + 0x10))
        ;
        StreamReader_AccumulateStatus(param_1,bVar6);
        piVar1 = puVar4 + 1;
        LOCK();
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*puVar4)(1);
        }
      }
      for (puVar9 = (uint *)puVar9[2]; puVar9 == (uint *)0x0; puVar9 = (uint *)*puVar9) {
        puVar9 = (uint *)(piVar8 + 1);
        piVar8 = piVar8 + 1;
      }
    }
    ResourceStreamContext_Close(param_1);
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0xa0));
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

