/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Physicalthiscall onepointpointerRET4void. Pointlevel is rawSIGNEDInt32 at8,notfloat.
   Engaged86/lot34/brushD0 required; elapsedclockF0
   versusnextE0,setsokE4true,dispatchesTerrainBrush_ApplyEpisodeStamp(sample88)onlyonrawgroundlevel0,setsnext=elapsed+50.
   Capturedrasterbounds andtemporaryeditedvertices drive followupwater/feedback;
   originalprivateclock/raster/currentToolWorldordering remainsgenuinefullbody.
   Hoststampguard/historyrecordingareseparateownershipsteps. */

void __thiscall TerrainSculptTool_ApplyTimedStamp(void *this,LotPaintPoint *point)

{
  void *this_00;
  bool bVar1;
  bool bVar2;
  float10 fVar3;
  char cVar4;
  float local_50 [19];
  
  if (((*(char *)((int)this + 0x86) == '\0') || (*(int *)((int)this + 0x34) == 0)) ||
     (*(int *)((int)this + 0xcc) == 0)) {
    return;
  }
  fVar3 = ElapsedClock_ReadScaledTicks((void *)((int)this + 0xf0));
  if (fVar3 < (float10)*(float *)((int)this + 0xe0)) {
    return;
  }
  this_00 = (void *)((int)this + 0x114);
  *(undefined1 *)((int)this + 0xe4) = 1;
  FUN_00ad77d0((int)this_00);
  if (point->level != 0) {
    FUN_00d19fa0(this,'\x01');
    BuildEditErrorRecord_InitializeAtLotPoint
              (local_50,0xd7,*(undefined **)((int)this + 0x34),point,0,0);
    FUN_00ad8570(this_00,local_50);
    FUN_00cd3890(this_00,1,'\x01');
    FUN_00ad70d0((int)local_50);
    return;
  }
  FUN_00ad6e90(this_00,*(void **)((int)this + 0x34),&point->x);
  FUN_00cee460(this,'\x01');
  TerrainBrush_ApplyEpisodeStamp(this,point,(BrushRasterSample *)((int)this + 0x88));
  FUN_00d2c560(*(void **)((int)this + 0x1a0));
  *(float *)((int)this + 0xe0) = (float)fVar3 + 50.0;
  FUN_00d198b0((int)this);
  if ((*(int *)((int)this + 0xb8) < *(int *)((int)this + 0xb0)) ||
     (bVar1 = false, *(int *)((int)this + 0xbc) < *(int *)((int)this + 0xb4))) {
    bVar1 = true;
  }
  if (*(char *)((int)this + 0xe4) == '\0') {
    (**(code **)(*(int *)((int)this + 0x28) + 0x54))(point,1);
LAB_00d1a23c:
    if (bVar1) {
      cVar4 = '\x01';
      goto LAB_00d1a249;
    }
  }
  else {
    bVar2 = FUN_00ad6f10((int)this_00);
    if (!bVar2) goto LAB_00d1a23c;
    if (bVar1) {
      FUN_00cd3890(this_00,1,'\x01');
      goto LAB_00d1a23c;
    }
  }
  cVar4 = '\0';
LAB_00d1a249:
  FUN_00d19fa0(this,cVar4);
  FUN_00cee460(this,'\0');
  return;
}

