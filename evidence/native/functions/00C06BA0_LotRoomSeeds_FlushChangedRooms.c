/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



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
  ushort *puVar6;
  ushort **ppuVar7;
  undefined4 *puVar8;
  int iVar9;
  uint uVar10;
  char cVar11;
  undefined4 local_30;
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
  piVar5 = (int *)FUN_0044c4f0();
  puVar6 = *(ushort **)((int)param_1 + 0x54);
  if (puVar6 != *(ushort **)((int)param_1 + 0x58)) {
    do {
      uVar1 = *puVar6;
      uVar3 = *(uint *)((int)param_1 + 0x3c);
      local_10 = *(ushort **)(*(int *)((int)param_1 + 0x38) + uVar3 * 4);
      uVar10 = (uint)(int)(short)uVar1 % uVar3;
      iVar9 = *(int *)((int)param_1 + 0x38);
      for (puVar4 = *(ushort **)(iVar9 + uVar10 * 4); puVar4 != (ushort *)0x0;
          puVar4 = *(ushort **)(puVar4 + 0x34)) {
        if (uVar1 == *puVar4) {
          local_20 = puVar4;
          local_1c = iVar9 + uVar10 * 4;
          ppuVar7 = &local_20;
          goto LAB_00c06c5e;
        }
      }
      local_18 = *(ushort **)(iVar9 + uVar3 * 4);
      local_14 = iVar9 + uVar3 * 4;
      ppuVar7 = &local_18;
LAB_00c06c5e:
      if (*ppuVar7 != local_10) {
        puVar8 = FUN_00adf150();
        if (puVar8 == (undefined4 *)0x0) {
          puVar8 = (undefined4 *)0x0;
        }
        else {
          *puVar8 = &PTR_FUN_01065f8c;
          LOCK();
          puVar8[1] = 0;
          UNLOCK();
          *puVar8 = &PTR_FUN_01065f8c;
        }
        iVar9 = *(int *)((int)param_1 + 8);
        puVar8[2] = *(undefined4 *)(iVar9 + 0x48);
        puVar8[3] = *(undefined4 *)(iVar9 + 0x4c);
        puVar8[4] = (int)(short)uVar1;
        (**(code **)(*piVar5 + 0x1c))(local_30,puVar8,0,0);
      }
      if ((*(int *)((int)param_1 + 0xc) == 1) && (pvVar2 != (void *)0x0)) {
        FUN_00a917e0(pvVar2,(uint)uVar1);
      }
      puVar6 = puVar6 + 1;
    } while (puVar6 != *(ushort **)((int)param_1 + 0x58));
  }
  FUN_00c050f0((int)param_1);
  iVar9 = *(int *)((int)param_1 + 0xc);
  if (iVar9 == 0) {
    FUN_00c045c0(param_1);
    FUN_00c06430(param_1,(int *)((int)param_1 + 0x54));
  }
  else if (iVar9 == 1) {
    cVar11 = '\x01';
    piVar5 = (int *)FUN_00c6dc50(*(int *)((int)param_1 + 8));
    FUN_00c04380(param_1,piVar5,cVar11);
    iVar9 = *(int *)(*(int *)((int)param_1 + 8) + 0xc);
    if (iVar9 != 0) {
      cVar11 = '\x01';
      piVar5 = (int *)FUN_00c6dc50(*(int *)(iVar9 + 0xb0));
      FUN_00c04380(param_1,piVar5,cVar11);
    }
  }
  else {
    iVar9 = iVar9 + -2;
    if (iVar9 == 0) {
      piVar5 = (int *)FUN_00c6dc50(*(int *)((int)param_1 + 8));
      FUN_00c04380(param_1,piVar5,(char)iVar9);
      iVar9 = *(int *)(*(int *)((int)param_1 + 8) + 0xc);
      if (iVar9 != 0) {
        cVar11 = '\0';
        piVar5 = (int *)FUN_00c6dc50(*(int *)(iVar9 + 0xb0));
        FUN_00c04380(param_1,piVar5,cVar11);
      }
    }
  }
  *(undefined4 *)((int)param_1 + 0x58) = *(undefined4 *)((int)param_1 + 0x54);
  FUN_00c05260((int)param_1);
  pvVar2 = *(void **)(*(int *)((int)param_1 + 8) + 700);
  if (pvVar2 != (void *)0x0) {
    FUN_00b6d100(pvVar2);
  }
  iVar9 = *(int *)(*(int *)((int)param_1 + 8) + 0x2c0);
  if (iVar9 != 0) {
    FUN_00b53df0(iVar9);
  }
  return;
}

