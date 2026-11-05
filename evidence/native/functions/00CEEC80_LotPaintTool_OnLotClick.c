/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall lot pointer+point pointer RET8, ALBoolean only. Click requires selected same
   lot/managers/brush. Snaps each float: MULSS4, ADDSS0.5, storefloat, x87 FISTP CURRENT control
   word, CVTSI2SS signed int, SUBSS0.5, MULSS0.25. Ground uses DWORDlevel==0, then
   Lot_ContainsLocalPoint inclusive XY and LIVE level interval. Further A642D0 context/error
   admission remains separate. Stamp centre is snapped XY minus0.125; grid resolution4
   inclusive0..4W/4D. Calls undoable Begin then actual display price and InitForPainting before
   raster episode. This outer ECX subobject is +28 relative to generic brush: LEA ECX,ESI-28 for
   D18DB0/ApplyTimedStamp. Do not copy mismatched this offsets as one object layout. FPU
   nearest-even is supported HOST profile, not a CW setting performed here. Invalid FISTP yields
   signed indefinite under masked nativeFP, not MathF.Round NaN. */

bool __thiscall LotPaintTool_OnLotClick(void *this,undefined *lot,LotPaintPoint *point)

{
  undefined *errors;
  int *this_00;
  int iVar1;
  bool bVar2;
  void *pvVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  float10 fVar6;
  LotPaintPoint local_68;
  LotPaintPoint LStack_5c;
  float local_50 [19];
  
  if ((((lot != (undefined *)0x0) && (lot == *(undefined **)((int)this + 0xc))) &&
      (iVar1 = *(int *)(*(undefined **)((int)this + 0xc) + 0x294),
      *(int *)((int)this + 0x60) = iVar1, iVar1 != 0)) &&
     ((*(int *)((int)this + 0xb8) != 0 && (*(int *)((int)this + 0xb4) != 0)))) {
    local_68.x = ((float)(int)ROUND(point->x * 4.0 + 0.5) - 0.5) * 0.25;
    local_68.level = point->level;
    local_68.z = ((float)(int)ROUND(point->z * 4.0 + 0.5) - 0.5) * 0.25;
    errors = (undefined *)((int)this + 0xfc);
    FUN_00ad77d0((int)errors);
    if (local_68.level == 0) {
      bVar2 = Lot_ContainsLocalPoint(lot,&local_68);
      if (bVar2) {
        bVar2 = FUN_00a642d0(lot,&local_68,errors);
        if (bVar2) {
          FUN_00cd3890(errors,1,'\x01');
          return false;
        }
        *(undefined1 *)((int)this + 0xc9) = 0;
        if (*(char *)((int)this + 100) == '\0') {
          *(undefined1 *)((int)this + 100) = 1;
          *(undefined4 *)((int)this + 0xc4) = 0;
          pvVar3 = (void *)FUN_004e4500(0xc0,"UserTool/LotPaint/Undoable",0);
          if (pvVar3 == (void *)0x0) {
            puVar4 = (undefined4 *)0x0;
          }
          else {
            puVar4 = (undefined4 *)PaintUndoable_Initialize(pvVar3);
          }
          this_00 = (int *)((int)this + 0x188);
          FUN_00566590(this_00,puVar4);
          (**(code **)(*(int *)*this_00 + 4))();
          iVar1 = *this_00;
          fVar6 = CatalogPrice_ForwardDisplayPrice(*(undefined **)((int)this + 0x184));
          *(float *)(iVar1 + 0xb0) = (float)fVar6;
          uVar5 = FUN_00d23f10((void *)*this_00,*(int *)((int)this + 0xc),
                               (uint *)(*(int *)((int)this + 0x184) + 8));
          *(undefined4 *)((int)this + 0x68) = uVar5;
          pvVar3 = (void *)((int)this + -0x28);
          FUN_00d18db0(pvVar3,4,0,0,*(int *)(*(int *)((int)this + 0xc) + 0x174) * 4,
                       *(int *)(*(int *)((int)this + 0xc) + 0x178) * 4);
          FUN_00ced6b0(this,local_68.level);
          LStack_5c.x = local_68.x - 0.125;
          LStack_5c.level = local_68.level;
          LStack_5c.z = local_68.z - 0.125;
          FUN_00cedf50(pvVar3,*(undefined4 *)((int)this + 0xc),&LStack_5c.x);
          *(undefined4 *)((int)this + 0xc4) = 0;
          ElapsedClock_Restart((DWORD *)((int)this + 0xd8));
          LotPaintTool_ApplyTimedStamp(pvVar3,&LStack_5c);
          *(float *)((int)this + 0xf0) = LStack_5c.x;
          *(float *)((int)this + 0xf4) = LStack_5c.z;
          *(int *)((int)this + 0xf8) = LStack_5c.level;
        }
        FUN_00cee5a0((int)this + -0x28);
        (**(code **)(*(int *)this + 0x74))(lot,&local_68,0);
        if (*(int *)((int)this + 0x17c) == 0) {
          uVar5 = FUN_00cedf20(DAT_011ec060);
          *(undefined4 *)((int)this + 0x17c) = uVar5;
        }
        return true;
      }
    }
    FUN_00ad6720(local_50,0xd7,(int)lot,&local_68.x,0,0);
    FUN_00ad8570(errors,local_50);
    FUN_00cd3890(errors,1,'\x01');
    FUN_00ad70d0((int)local_50);
  }
  return false;
}

