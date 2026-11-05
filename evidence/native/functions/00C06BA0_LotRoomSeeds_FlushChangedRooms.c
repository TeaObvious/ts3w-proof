/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING (jumptable): Unable to track spacebase fully for stack */
/* Original PC 1.67: Use discriminator+0C four-way
   table;0→B126940A,1→31269488,2→D1269441,3→0A29BD36. Emit admitted pending room rows then
   original rebuild/reset work. Preserve disjoint body ranges; excluded C06C0C..0F is alignment LEA,
   not body code or table data. */

void __fastcall LotRoomSeeds_FlushChangedRooms(void *param_1)

{
  ushort uVar1;
  void *pvVar2;
  uint uVar3;
  ushort *puVar4;
  int *piVar5;
  ushort **ppuVar6;
  undefined4 *puVar7;
  int iVar8;
  uint uVar9;
  char cVar10;
  undefined4 local_30;
  ushort *local_2c;
  ushort *local_20;
  int local_1c;
  ushort *local_18;
  int local_14;
  ushort *local_10;
  
  switch(*(undefined4 *)((int)param_1 + 0xc)) {
  case 0:
    local_30 = 0xb126940a;
    break;
  case 1:
    local_30 = 0x31269488;
    break;
  case 2:
    local_30 = 0xd1269441;
    break;
  case 3:
    local_30 = 0xa29bd36;
  }
  pvVar2 = *(void **)(*(int *)((int)param_1 + 8) + 0x290);
  piVar5 = (int *)MessageDispatch_GetCurrent();
  local_2c = *(ushort **)((int)param_1 + 0x54);
  if (local_2c != *(ushort **)((int)param_1 + 0x58)) {
    do {
      uVar1 = *local_2c;
      uVar3 = *(uint *)((int)param_1 + 0x3c);
      local_10 = *(ushort **)(*(int *)((int)param_1 + 0x38) + uVar3 * 4);
      uVar9 = (uint)(int)(short)uVar1 % uVar3;
      iVar8 = *(int *)((int)param_1 + 0x38);
      for (puVar4 = *(ushort **)(iVar8 + uVar9 * 4); puVar4 != (ushort *)0x0;
          puVar4 = *(ushort **)(puVar4 + 0x34)) {
        if (uVar1 == *puVar4) {
          local_20 = puVar4;
          local_1c = iVar8 + uVar9 * 4;
          ppuVar6 = &local_20;
          goto LAB_00c06c5e;
        }
      }
      local_18 = *(ushort **)(iVar8 + uVar3 * 4);
      local_14 = iVar8 + uVar3 * 4;
      ppuVar6 = &local_18;
LAB_00c06c5e:
      if (*ppuVar6 != local_10) {
        puVar7 = FloorMessagePool_AcquireStorage();
        if (puVar7 == (undefined4 *)0x0) {
          puVar7 = (undefined4 *)0x0;
        }
        else {
          *puVar7 = &PTR_DestroyPooledFloorMessage_01065f8c;
          LOCK();
          puVar7[1] = 0;
          UNLOCK();
          *puVar7 = &PTR_DestroyPooledFloorMessage_01065f8c;
        }
        iVar8 = *(int *)((int)param_1 + 8);
        puVar7[2] = *(undefined4 *)(iVar8 + 0x48);
        puVar7[3] = *(undefined4 *)(iVar8 + 0x4c);
        puVar7[4] = (int)(short)uVar1;
        (**(code **)(*piVar5 + 0x1c))(local_30,puVar7,0,0);
      }
      if ((*(int *)((int)param_1 + 0xc) == 1) && (pvVar2 != (void *)0x0)) {
        FUN_00a917e0(pvVar2,(uint)uVar1);
      }
      local_2c = local_2c + 1;
    } while (local_2c != *(ushort **)((int)param_1 + 0x58));
  }
  FUN_00c050f0((int)param_1);
  iVar8 = *(int *)((int)param_1 + 0xc);
  if (iVar8 == 0) {
    FUN_00c045c0(param_1);
    FUN_00c06430(param_1,(int *)((int)param_1 + 0x54));
  }
  else if (iVar8 == 1) {
    cVar10 = '\x01';
    piVar5 = (int *)FUN_00c6dc50(*(int *)((int)param_1 + 8));
    FUN_00c04380(param_1,piVar5,cVar10);
    iVar8 = *(int *)(*(int *)((int)param_1 + 8) + 0xc);
    if (iVar8 != 0) {
      cVar10 = '\x01';
      piVar5 = (int *)FUN_00c6dc50(*(int *)(iVar8 + 0xb0));
      FUN_00c04380(param_1,piVar5,cVar10);
    }
  }
  else {
    iVar8 = iVar8 + -2;
    if (iVar8 == 0) {
      piVar5 = (int *)FUN_00c6dc50(*(int *)((int)param_1 + 8));
      FUN_00c04380(param_1,piVar5,(char)iVar8);
      iVar8 = *(int *)(*(int *)((int)param_1 + 8) + 0xc);
      if (iVar8 != 0) {
        cVar10 = '\0';
        piVar5 = (int *)FUN_00c6dc50(*(int *)(iVar8 + 0xb0));
        FUN_00c04380(param_1,piVar5,cVar10);
      }
    }
  }
  *(undefined4 *)((int)param_1 + 0x58) = *(undefined4 *)((int)param_1 + 0x54);
  FUN_00c05260((int)param_1);
  pvVar2 = *(void **)(*(int *)((int)param_1 + 8) + 700);
  if (pvVar2 != (void *)0x0) {
    PoolManager_FlushDirtyRoomHelpers(pvVar2);
  }
  iVar8 = *(int *)(*(int *)((int)param_1 + 8) + 0x2c0);
  if (iVar8 != 0) {
    FUN_00b53df0(iVar8);
  }
  return;
}

