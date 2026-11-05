/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: Physical ECX command receiver plus lot/packed-cell/target-ID, void RET0C. Each selected bit1/2/4/8 reads AB67D0, skips only equal oldID, writes AC4530 before appending12byte undo record. New and old display prices narrow toF32; erase oldprice multipliesF32 0.8, cost uses quarter0.25 and virtual get30/set2C. Below-ground deletion may return early for non3/6/5 oldkind. Global bank reread, x87/virtual/fault/undo lifetime remain qualified. */

void __thiscall FUN_00d1e4b0(void *this,void *param_1,undefined3 *param_2,int param_3)

{
  undefined4 *puVar1;
  bool bVar2;
  void *this_00;
  void *this_01;
  undefined3 *puVar3;
  byte bVar4;
  undefined *puVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  float10 fVar9;
  float fVar10;
  float local_1c;
  int local_14;
  void *local_c;
  undefined2 local_8;
  undefined1 local_6;
  undefined1 local_5;
  int local_4;
  
  iVar8 = param_3;
  this_00 = DAT_011ee034;
  if ((DAT_011ee034 == (void *)0x0) ||
     (puVar5 = (undefined *)FUN_00c8bbb0(DAT_011ee034,param_3), puVar5 == (undefined *)0x0)) {
    local_1c = 0.0;
  }
  else {
    fVar9 = CatalogPrice_ForwardDisplayPrice(puVar5);
    local_1c = (float)fVar9;
  }
  this_01 = param_1;
  bVar2 = false;
  local_14 = 0;
  do {
    puVar3 = param_2;
    bVar4 = '\x01' << ((byte)local_14 & 0x1f);
    if ((*(byte *)((int)param_2 + 3) & bVar4) != 0) {
      param_1 = (void *)CONCAT13(bVar4,*param_2);
      iVar6 = Lot_ResolveCompatibleCellRegion(this_01,(char *)&param_1,'\0');
      if (iVar6 != iVar8) {
        if (((((iVar8 == -1) && (iVar7 = FUN_00c8bbb0(this_00,iVar6), iVar7 != 0)) &&
             (*(char *)((int)puVar3 + 2) < '\0')) &&
            ((iVar7 = *(int *)(iVar7 + 0x88), iVar7 != 3 && (iVar7 != 6)))) && (iVar7 != 5)) {
          return;
        }
        FUN_00ac4530(this_01,iVar8,(char *)&param_1);
        local_5 = param_1._3_1_;
        puVar1 = *(undefined4 **)((int)this + 0x54);
        bVar2 = true;
        local_c = this_01;
        local_8 = param_1._0_2_;
        local_6 = param_1._2_1_;
        local_4 = iVar6;
        if (puVar1 < *(undefined4 **)((int)this + 0x58)) {
          *(undefined4 **)((int)this + 0x54) = puVar1 + 3;
          iVar8 = param_3;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = this_01;
            *(undefined2 *)(puVar1 + 1) = param_1._0_2_;
            *(undefined1 *)((int)puVar1 + 6) = param_1._2_1_;
            *(undefined1 *)((int)puVar1 + 7) = param_1._3_1_;
            puVar1[2] = iVar6;
          }
        }
        else {
          FUN_00d1dc90((void *)((int)this + 0x50),puVar1,&local_c);
        }
        if ((DAT_011ee034 == (void *)0x0) ||
           (puVar5 = (undefined *)FUN_00c8bbb0(DAT_011ee034,iVar6), puVar5 == (undefined *)0x0)) {
          fVar10 = 0.0;
        }
        else {
          fVar9 = CatalogPrice_ForwardDisplayPrice(puVar5);
          fVar10 = (float)fVar9;
          if (iVar8 == -1) {
            fVar10 = fVar10 * 0.8;
          }
        }
        fVar9 = (float10)(**(code **)(*(int *)this + 0x30))();
        (**(code **)(*(int *)this + 0x2c))
                  ((float)(((float10)local_1c - (float10)fVar10) * (float10)0.25 + fVar9));
      }
    }
    local_14 = local_14 + 1;
    if (3 < local_14) {
      if (bVar2) {
        FUN_00ab0940(this_01,'\x01','\x01');
      }
      return;
    }
  } while( true );
}
