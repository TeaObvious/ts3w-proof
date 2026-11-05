/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Decreases all4096 existing leaf-density bytes by truncated positive
   amount*255. Cleared tiles produce messageB77D1D39 with lot identity and amount. This body does
   not set owner+2D4 dirty; do not infer texture upload timing without its consumer. Decompiler
   includes intrusive-reference lifetime boilerplate. */

void __thiscall Seasons_DecayLotLeafDensity(void *this,float param_1)

{
  byte *pbVar1;
  char *pcVar2;
  byte bVar3;
  void *allocation;
  ushort *puVar4;
  ushort *puVar5;
  int *piVar6;
  int *piVar7;
  int iVar8;
  uint uVar9;
  int *piVar10;
  ushort local_18;
  undefined1 local_16;
  int local_14;
  void *local_10;
  ushort *local_c;
  ushort *local_8;
  char *local_4;
  
  if ((*(int *)((int)this + 0x2d0) != 0) && (0.0 < param_1)) {
    iVar8 = (int)(param_1 * 255.0);
    local_10 = (void *)0x0;
    local_c = (ushort *)0x0;
    local_8 = (ushort *)0x0;
    local_4 = "LotRenderer/LeavesTileGeometry/DecreaseDensity";
    uVar9 = 0;
    puVar4 = (ushort *)0x0;
    local_14 = iVar8;
    do {
      pbVar1 = (byte *)(uVar9 + *(int *)((int)this + 0x2d0));
      bVar3 = *pbVar1;
      puVar5 = puVar4;
      if (bVar3 != 0) {
        if (iVar8 < (int)(uint)bVar3) {
          pcVar2 = (char *)(uVar9 + *(int *)((int)this + 0x2d0));
          *pcVar2 = *pcVar2 - (char)iVar8;
        }
        else {
          local_18 = CONCAT11((char)(uVar9 >> 6),(char)uVar9) & 0xff3f;
          *pbVar1 = 0;
          local_16 = 0;
          if (puVar4 < local_8) {
            local_c = (ushort *)((int)puVar4 + 3);
            puVar5 = local_c;
            if (puVar4 != (ushort *)0x0) {
              *puVar4 = local_18;
              *(undefined1 *)(puVar4 + 1) = 0;
            }
          }
          else {
            FUN_00aeba20(&local_10,puVar4,&local_18);
            puVar5 = local_c;
            iVar8 = local_14;
          }
        }
      }
      allocation = local_10;
      uVar9 = uVar9 + 1;
      puVar4 = puVar5;
    } while (uVar9 < 0x1000);
    iVar8 = (int)puVar5 - (int)local_10 >> 0x1f;
    if ((((int)puVar5 - (int)local_10) / 3 + iVar8 != iVar8) &&
       (piVar6 = (int *)FUN_007693a0(), piVar6 != (int *)0x0)) {
      piVar7 = FloorMessagePool_AcquireStorage();
      piVar10 = (int *)0x0;
      if (piVar7 != (int *)0x0) {
        *piVar7 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar7[1] = 0;
        UNLOCK();
        *piVar7 = (int)&PTR_FUN_0106ddf0;
        piVar7[4] = 0;
        piVar7[5] = 0;
        piVar7[6] = 0;
        piVar7[7] = (int)"Lot/tDropLeavesFromTreesMsgData";
        (**(code **)(*piVar7 + 4))();
        piVar10 = piVar7;
      }
      iVar8 = *(int *)((int)this + 0x29c);
      piVar10[2] = *(int *)(iVar8 + 0x10);
      piVar10[3] = *(int *)(iVar8 + 0x14);
      FUN_00aa95b0(piVar10 + 4,(int *)&local_10);
      piVar10[8] = (int)param_1;
      (**(code **)(*piVar6 + 0x1c))(0xb77d1d39,piVar10,0,0);
      (**(code **)(*piVar10 + 8))();
    }
    if (allocation != (void *)0x0) {
      Memory_FreeIfNonNull(allocation);
    }
  }
  return;
}

