/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_DecayLotLeafDensity:


/* Analyst-assigned name. Decreases all4096 existing leaf-density bytes by truncated positive
   amount*255. Cleared tiles produce messageB77D1D39 with lot identity and amount. This body does
   not set owner+2D4 dirty; do not infer texture upload timing without its consumer. Decompiler
   includes intrusive-reference lifetime boilerplate. */

void __thiscall Seasons_DecayLotLeafDensity(void *this,float param_1)

{
  byte *pbVar1;
  char *pcVar2;
  byte bVar3;
  int iVar4;
  ushort *puVar5;
  ushort *puVar6;
  int *piVar7;
  int *piVar8;
  int iVar9;
  uint uVar10;
  int *piVar11;
  ushort local_18;
  undefined1 local_16;
  int local_14;
  int local_10;
  ushort *local_c;
  ushort *local_8;
  char *local_4;

  if ((*(int *)((int)this + 0x2d0) != 0) && (0.0 < param_1)) {
    iVar9 = (int)(param_1 * 255.0);
    local_10 = 0;
    local_c = (ushort *)0x0;
    local_8 = (ushort *)0x0;
    local_4 = "LotRenderer/LeavesTileGeometry/DecreaseDensity";
    uVar10 = 0;
    puVar5 = (ushort *)0x0;
    local_14 = iVar9;
    do {
      pbVar1 = (byte *)(uVar10 + *(int *)((int)this + 0x2d0));
      bVar3 = *pbVar1;
      puVar6 = puVar5;
      if (bVar3 != 0) {
        if (iVar9 < (int)(uint)bVar3) {
          pcVar2 = (char *)(uVar10 + *(int *)((int)this + 0x2d0));
          *pcVar2 = *pcVar2 - (char)iVar9;
        }
        else {
          local_18 = CONCAT11((char)(uVar10 >> 6),(char)uVar10) & 0xff3f;
          *pbVar1 = 0;
          local_16 = 0;
          if (puVar5 < local_8) {
            local_c = (ushort *)((int)puVar5 + 3);
            puVar6 = local_c;
            if (puVar5 != (ushort *)0x0) {
              *puVar5 = local_18;
              *(undefined1 *)(puVar5 + 1) = 0;
            }
          }
          else {
            FUN_00aeba20(&local_10,puVar5,&local_18);
            puVar6 = local_c;
            iVar9 = local_14;
          }
        }
      }
      iVar4 = local_10;
      uVar10 = uVar10 + 1;
      puVar5 = puVar6;
    } while (uVar10 < 0x1000);
    iVar9 = (int)puVar6 - local_10 >> 0x1f;
    if ((((int)puVar6 - local_10) / 3 + iVar9 != iVar9) &&
       (piVar7 = (int *)FUN_007693a0(), piVar7 != (int *)0x0)) {
      piVar8 = FUN_00adf150();
      piVar11 = (int *)0x0;
      if (piVar8 != (int *)0x0) {
        *piVar8 = (int)&PTR_FUN_01065f8c;
        LOCK();
        piVar8[1] = 0;
        UNLOCK();
        *piVar8 = (int)&PTR_FUN_0106ddf0;
        piVar8[4] = 0;
        piVar8[5] = 0;
        piVar8[6] = 0;
        piVar8[7] = (int)"Lot/tDropLeavesFromTreesMsgData";
        (**(code **)(*piVar8 + 4))();
        piVar11 = piVar8;
      }
      iVar9 = *(int *)((int)this + 0x29c);
      piVar11[2] = *(int *)(iVar9 + 0x10);
      piVar11[3] = *(int *)(iVar9 + 0x14);
      FUN_00aa95b0(piVar11 + 4,&local_10);
      piVar11[8] = (int)param_1;
      (**(code **)(*piVar7 + 0x1c))(0xb77d1d39,piVar11,0,0);
      (**(code **)(*piVar11 + 8))();
    }
    if (iVar4 != 0) {
      FUN_004e44e0(iVar4);
    }
  }
  return;
}


