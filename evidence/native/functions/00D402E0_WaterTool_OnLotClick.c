/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 complete406-byte thiscall lotpointer+LotPaintPointpointer RET8ALBoolean. Physical receiver
   is interactive subobject = WaterTool+28 (negative28 adjustment before WaterTool functions).
   Reject null lot, lot != this+C or missing brush this+A8. Point+8 RAW signed Int32 must0, then
   Lot_ContainsLocalPoint74AA80 checks Float32 inclusive X/Z0..width/depth plus LIVE signed level
   min/max. No coordinate rounding. NaN/infinity fail ordered lot comparisons. First click opens
   water undoableD38F20 and initializes unrounded previous/current D3F970, resets clock/nextStamp
   then immediately callsD400F0; later click follows engagement path. Failure builds D8 and
   returnsfalse. Raw level0 outside live min/max must reject; source host formerly omitted that live
   bound check. Full undoable/audio/episode controller ownership is not closed by click admission
   alone. */

bool __thiscall WaterTool_OnLotClick(void *this,undefined *lot,LotPaintPoint *point)

{
  bool bVar1;
  void *pvVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  float local_50 [19];
  
  if (((lot != (undefined *)0x0) && (lot == *(undefined **)((int)this + 0xc))) &&
     (*(int *)((int)this + 0xa8) != 0)) {
    if (point->level == 0) {
      bVar1 = Lot_ContainsLocalPoint(lot,point);
      if (bVar1) {
        *(undefined1 *)((int)this + 0xbd) = 0;
        if (*(char *)((int)this + 0x5e) == '\0') {
          *(undefined1 *)((int)this + 0x5e) = 1;
          *(undefined4 *)((int)this + 0xb8) = 0;
          pvVar2 = (void *)FUN_004e4500(0x120,"UserTool/Water/Undoable",0);
          if (pvVar2 == (void *)0x0) {
            puVar3 = (undefined4 *)0x0;
          }
          else {
            puVar3 = FUN_00d38f20(pvVar2,*(undefined4 **)((int)this + 0xc));
          }
          FUN_00566590((undefined4 *)((int)this + 0x16c),puVar3);
          (**(code **)(**(int **)((int)this + 0x16c) + 4))();
          FUN_00ced6b0(this,point->level);
          FUN_00d3f970((void *)((int)this + -0x28),*(undefined4 *)((int)this + 0xc),&point->x);
          *(undefined4 *)((int)this + 0xb8) = 0;
          ElapsedClock_Restart((DWORD *)((int)this + 0xc0));
          WaterTool_StampPoint((void *)((int)this + -0x28),point);
          *(float *)((int)this + 0xd8) = point->x;
          *(float *)((int)this + 0xdc) = point->z;
          *(int *)((int)this + 0xe0) = point->level;
        }
        FUN_00d3fe20((int)this + -0x28);
        (**(code **)(*(int *)this + 0x74))(lot,point,0);
        uVar4 = UserTool_StartKeyedSound(DAT_011ebf90);
        *(undefined4 *)((int)this + 0x164) = uVar4;
        return true;
      }
    }
    pvVar2 = (void *)((int)this + 0xe4);
    FUN_00ad77d0((int)pvVar2);
    BuildEditErrorRecord_InitializeAtLotPoint(local_50,0xd8,lot,point,0,0);
    FUN_00ad8570(pvVar2,local_50);
    FUN_00cd3890(pvVar2,1,'\x01');
    FUN_00ad70d0((int)local_50);
  }
  return false;
}

