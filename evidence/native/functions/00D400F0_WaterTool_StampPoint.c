/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 complete491-byte thiscall one LotPaintPoint pointer RET4void. Requires active86,bound
   lot34 and operationCC; elapsedClock4F37C0 x87 compared against nextStampE0, later storedFloat
   elapsed+50 atE0. Sets current okE4=true and clears errors10C. Point+8 is RAW SIGNED INT32 level,
   checked DWORD==0 EVERY stamp, not Float32 zero. Ground path records context, raster D195C0
   receives same unrounded X/Z and BrushRasterSample atthis+88. If ok becomesfalse virtual
   interactive+54 follows. Valid raster changed bounds B0/B4..B8/BC cause
   AdjustWaterD392C0,feedbackfalse; empty bounds feedbacktrue then first errorD7 is removed byAD7860
   and D8 appended before displaying. Nongroundpoint reportsD8 without raster. Existing host
   Stamp(Vector2) loses current level and its error-list replacement is narrower; do not claim
   complete controller parity from scalar extraction. */

void __thiscall WaterTool_StampPoint(void *this,LotPaintPoint *point)

{
  void *this_00;
  bool bVar1;
  float10 fVar2;
  float local_90 [16];
  int local_50 [4];
  undefined4 local_40 [15];
  
  if (((*(char *)((int)this + 0x86) != '\0') && (*(int *)((int)this + 0x34) != 0)) &&
     (*(int *)((int)this + 0xcc) != 0)) {
    fVar2 = ElapsedClock_ReadScaledTicks((void *)((int)this + 0xe8));
    if ((float10)*(float *)((int)this + 0xe0) <= fVar2) {
      *(undefined1 *)((int)this + 0xe4) = 1;
      thunk_FUN_00792320();
      this_00 = (void *)((int)this + 0x10c);
      FUN_00ad77d0((int)this_00);
      if (point->level == 0) {
        FUN_00ad6e90(this_00,*(void **)((int)this + 0x34),&point->x);
        FUN_00cee460(this,'\x01');
        TerrainBrush_ApplyEpisodeStamp(this,point,(BrushRasterSample *)((int)this + 0x88));
        *(float *)((int)this + 0xe0) = (float)fVar2 + 50.0;
        if (*(char *)((int)this + 0xe4) == '\0') {
          (**(code **)(*(int *)((int)this + 0x28) + 0x54))(point,1);
        }
        if ((*(int *)((int)this + 0xb0) <= *(int *)((int)this + 0xb8)) &&
           (*(int *)((int)this + 0xb4) <= *(int *)((int)this + 0xbc))) {
          FUN_00d392c0(*(void **)((int)this + 0x194));
          FUN_00d3ff30(this,'\0');
          FUN_00cee460(this,'\0');
          return;
        }
        FUN_00d3ff30(this,'\x01');
        bVar1 = FUN_00ad6f10((int)this_00);
        if (bVar1) {
          FUN_00ad7520(this_00,local_50);
          if (local_50[0] == 0xd7) {
            FUN_00ad7860(this_00,0xd7);
            FUN_00ad66d0(local_90,0xd8,0,local_40,0);
            FUN_00ad8570(this_00,local_90);
            FUN_00ad70d0((int)local_90);
          }
          FUN_00cd3890(this_00,1,'\x01');
          FUN_00ad70d0((int)local_50);
        }
        FUN_00cee460(this,'\0');
        return;
      }
      FUN_00d3ff30(this,'\x01');
      BuildEditErrorRecord_InitializeAtLotPoint
                (local_90,0xd8,*(undefined **)((int)this + 0x34),point,0,0);
      FUN_00ad8570(this_00,local_90);
      FUN_00cd3890(this_00,1,'\x01');
      FUN_00ad70d0((int)local_90);
    }
  }
  return;
}

