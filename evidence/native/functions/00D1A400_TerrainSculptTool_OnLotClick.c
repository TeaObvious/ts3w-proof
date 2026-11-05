/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscalllot+pointRET8ALBoolean. Point0/4Float32 coordinate,8SIGNEDInt32level. Click
   FISTPInt32usesCURRENTCWrounding(no mode set),CVTSI2SS
   nearestintegercentreunderdefaultprofile;rawlevelDWORDmust0;Lot_ContainsLocalPointthenvalidatesinclusiveXYandLIVE
   min/max. Noquarteroffset. ActualundoableBegin
   invokespaid/freecallback;SetCostForUnitHeightChangeD2BE00receivescatalogprice.
   Fullcontrollerlifecycle remainsseparatefromvaluegeometry. OldCfloatcastofInt32levelwasartifact.
    */

bool __thiscall TerrainSculptTool_OnLotClick(void *this,undefined *lot,LotPaintPoint *point)

{
  undefined4 *this_00;
  bool bVar1;
  void *pvVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  float10 fVar5;
  LotPaintPoint local_5c;
  float local_50 [19];
  
  if (((lot != (undefined *)0x0) && (*(int *)((int)this + 0xac) != 0)) &&
     (*(int *)((int)this + 0xa8) != 0)) {
    local_5c.x = (float)(int)ROUND(point->x);
    local_5c.level = point->level;
    local_5c.z = (float)(int)ROUND(point->z);
    if (local_5c.level == 0) {
      bVar1 = Lot_ContainsLocalPoint(lot,&local_5c);
      if (bVar1) {
        *(undefined1 *)((int)this + 0xbd) = 0;
        if (*(char *)((int)this + 0x5e) == '\0') {
          *(undefined1 *)((int)this + 0x5e) = 1;
          *(undefined4 *)((int)this + 0xb8) = 0;
          pvVar2 = (void *)FUN_004e4500(0x124,"UserTool/TerrainSculpt/Undoable",0);
          if (pvVar2 == (void *)0x0) {
            puVar3 = (undefined4 *)0x0;
          }
          else {
            puVar3 = FUN_00d2c130(pvVar2,(undefined4 *)lot);
          }
          this_00 = (undefined4 *)((int)this + 0x178);
          FUN_00566590(this_00,puVar3);
          (**(code **)(*(int *)*this_00 + 4))();
          pvVar2 = (void *)((int)this + -0x28);
          FUN_00d197b0(pvVar2);
          FUN_00ced6b0(this,local_5c.level);
          fVar5 = CatalogPrice_ForwardDisplayPrice(*(undefined **)((int)this + 0x174));
          FUN_00d2be00((void *)*this_00,(float)fVar5);
          TerrainBrush_InitializeEpisodeAspects(pvVar2,*(undefined **)((int)this + 0xc),&local_5c);
          *(undefined4 *)((int)this + 0xb8) = 0;
          ElapsedClock_Restart((DWORD *)((int)this + 200));
          FUN_00d1a120(pvVar2,&local_5c.x);
          *(float *)((int)this + 0xe0) = local_5c.x;
          *(float *)((int)this + 0xe4) = local_5c.z;
          *(int *)((int)this + 0xe8) = local_5c.level;
        }
        FUN_00d19d70((int)this + -0x28);
        (**(code **)(*(int *)this + 0x74))(lot,&local_5c,0);
        uVar4 = FUN_00cedf20(DAT_011ebf90);
        *(undefined4 *)((int)this + 0x16c) = uVar4;
        return true;
      }
    }
    pvVar2 = (void *)((int)this + 0xec);
    FUN_00ad77d0((int)pvVar2);
    FUN_00ad6720(local_50,0xd7,(int)lot,&local_5c.x,0,0);
    FUN_00ad8570(pvVar2,local_50);
    FUN_00cd3890(pvVar2,1,'\x01');
    FUN_00ad70d0((int)local_50);
  }
  return false;
}

