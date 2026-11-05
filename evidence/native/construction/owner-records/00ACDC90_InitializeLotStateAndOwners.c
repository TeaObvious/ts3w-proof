/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: InitializeLotStateAndOwners.
 * Executable tokens are unchanged. DB EOL comments are addressed separately below
 * because the decompiler does not emit them in C.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00ACDCA2 [EOL]: Optional 7CFE00 result is passed by address to core virtual+60. The actual virtual target and the provenance of core+48/+4C are not resolved merely by this call.
 * 00ACDDA7 [EOL]: ESI remains the core-lot this pointer: ECX is the new manager stored at core+290, and the sole stack argument is that identical ESI. A8DD00 stores it at manager+4.
 * 00ACDE82 [EOL]: Existing AC8C80 creates other missing layer owners on the same core lot. Its independent floor-manager branch also passes this exact core pointer to A8DD00.
 * 00ACE020 [EOL]: Only a nonzero low byte of the seventh stack word reaches AB3130, with unchanged core pointer ESI in ECX. That child skips existing renderers and otherwise binds a newly constructed renderer to this same core lot.
 */



/* Initializes selected core-lot state and missing layer owners, performs the guarded
   floor-level/height setup, and optionally creates the renderer. Its missing-floor-manager branch
   binds that manager to this exact core lot before the later optional AB3130 renderer call. ECX
   core lot and 11 stack words, RET2Ch. Early ABCBE0 failure returns its result; successful tail
   writes AL=1. Child geometry and virtual identity setters retain their separate contracts.
   Analyst-assigned name. */

undefined4 __thiscall
InitializeLotStateAndOwners
          (void *this,int *param_1,int param_2,float *param_3,float param_4,undefined4 param_5,
          undefined4 param_6,char createRenderer,undefined4 param_8,char param_9,float param_10,
          float param_11)

{
  char cVar1;
  undefined3 uVar2;
  bool bVar3;
  undefined4 uVar4;
  int iVar5;
  undefined1 *puVar6;
  void *pvVar7;
  undefined3 *puVar8;
  uint uVar9;
  float10 fVar10;
  float fVar11;
  float fVar12;
  undefined8 local_c;
  
  if ((char)param_8 != '\0') {
    local_c = FUN_007cfe00('\0');
    (**(code **)(*(int *)this + 0x60))(&local_c);
  }
  *(undefined4 *)((int)this + 0x39c) = 0;
  *(undefined4 *)((int)this + 0x3a0) = 0;
  FUN_00ac4e00(this,param_1,param_2,0,0);
  if ((*(char *)((int)this + 0xc9) == '\0') && (param_10._0_1_ != '\0')) {
    uVar4 = FUN_00abcbe0(param_3,param_4,'\0');
    if ((char)uVar4 == '\0') {
      return uVar4;
    }
  }
  if (*(int *)((int)this + 0x2dc) == 0) {
    iVar5 = FUN_004e4500(0x20,"Lot/mpPendingSceneNodeManager",0);
    if (iVar5 == 0) {
      iVar5 = 0;
    }
    else {
      *(float *)(iVar5 + 0x10) = 1.0;
      *(undefined4 *)(iVar5 + 0x14) = 0x40000000;
      *(char **)(iVar5 + 0x1c) = "Lot/PhysicsGroupsForLevels";
      *(undefined4 *)(iVar5 + 8) = 1;
      *(undefined4 **)(iVar5 + 4) = &DAT_0114d900;
      *(undefined4 *)(iVar5 + 0xc) = 0;
      *(undefined4 *)(iVar5 + 0x18) = 0;
    }
    *(int *)((int)this + 0x2dc) = iVar5;
  }
  if (*(int *)((int)this + 0x290) == 0) {
    puVar6 = (undefined1 *)FUN_004e4500(0x230,"Lot/FloorManager",0);
    if (puVar6 == (undefined1 *)0x0) {
      puVar6 = (undefined1 *)0x0;
    }
    else {
      puVar6 = FUN_00a92c90(puVar6);
    }
    *(undefined1 **)((int)this + 0x290) = puVar6;
    BindFloorManagerToLot(puVar6,(int)this);
  }
  FUN_00a8df80(*(int *)((int)this + 0x290));
  FUN_00abb510(this,param_3,param_4);
  *(undefined4 *)((int)this + 0x408) = param_5;
  *(undefined4 *)((int)this + 0x40c) = param_6;
  *(undefined1 *)((int)this + 0x4bc) = param_11._0_1_;
  if (*(char *)((int)this + 0xc9) == '\0') {
    FUN_00ac24e0(this,'\0','\x01');
  }
  if (*(int *)((int)this + 0x2d0) == 0) {
    pvVar7 = (void *)FUN_004e4500(0x58,"Lot/ObjectLayer",0);
    if (pvVar7 == (void *)0x0) {
      pvVar7 = (void *)0x0;
    }
    else {
      pvVar7 = (void *)FUN_00ac0680(pvVar7,"Lot/ObjectLayer");
    }
    *(void **)((int)this + 0x2d0) = pvVar7;
    FUN_00acc140(pvVar7,*(int *)((int)this + 0x174),*(int *)((int)this + 0x178),
                 *(int *)((int)this + 0x184));
  }
  if (*(char *)((int)this + 0xc9) == '\0') {
    *(undefined4 *)((int)this + 0x418) = 0;
  }
  *(undefined1 *)((int)this + 0x41c) = 1;
  *(undefined1 *)((int)this + 0x328) = 1;
  *(undefined1 *)((int)this + 0x334) = 1;
  *(undefined1 *)((int)this + 0x270) = 1;
  *(undefined1 *)((int)this + 0x33c) = 1;
  *(undefined1 *)((int)this + 0x33d) = 1;
  LotDataLayers_CreateMissingOwners(this);
  if ((((*(int *)((int)this + 0x408) == 1) && (*(int *)((int)this + 0x40c) == 0x50)) ||
      (*(char *)((int)this + 0x4b0) != '\0')) && (*(int *)((int)this + 0x290) != 0)) {
    if (*(int *)((int)this + 0x180) == 0) {
      Lot_InsertFloorLevelsAndBasementRows(this,1,1);
      *(undefined4 *)((int)this + 0x180) = 1;
      *(int *)((int)this + 0x184) = 2 - *(int *)((int)this + 0x17c);
      if (*(void **)((int)this + 0x290) != (void *)0x0) {
        FUN_00a95f30(*(void **)((int)this + 0x290));
      }
    }
    fVar10 = Lot_GetLocalSeaLevel(this);
    param_11 = (float)fVar10;
    FUN_00af6530(&local_c,1,(int)this);
    bVar3 = TilePartRectangleIterator_IsDone((int)&local_c);
    while (!bVar3) {
      puVar8 = (undefined3 *)TilePartRectangleIterator_Current((int)&local_c);
      uVar2 = *puVar8;
      param_8 = CONCAT13(param_8._3_1_,uVar2);
      uVar4 = param_8;
      iVar5 = *(int *)(*(int *)((int)this + 0x290) + 0x24);
      param_8._0_1_ = (char)uVar2;
      param_8._1_1_ = (char)((uint3)uVar2 >> 8);
      fVar12 = *(float *)(*(int *)(iVar5 + 0x10) +
                         ((((int)*(char *)((int)puVar8 + 2) -
                           *(int *)(*(int *)((int)this + 0x290) + 0x10)) * *(int *)(iVar5 + 4) +
                          (int)(char)param_8) * *(int *)(iVar5 + 8) + (int)param_8._1_1_) * 4);
      if (*(char *)((int)this + 0x4b0) == '\0') {
        fVar11 = 0.0;
      }
      else {
        fVar11 = 3.0;
      }
      iVar5 = 1;
      param_8 = uVar4;
      if (0 < *(int *)((int)this + 0x180)) {
        fVar11 = fVar11 + param_11;
        do {
          uVar9 = (int)(fVar11 - fVar12) >> 0x1f;
          param_10 = (float)(~uVar9 & (uint)fVar11 | (uint)fVar12 & uVar9);
          FUN_00a930a0(*(void **)((int)this + 0x290),param_10,(char *)&param_8,'\x01');
          cVar1 = param_8._2_1_ + '\x01';
          param_8._0_3_ = CONCAT12(cVar1,(undefined2)param_8);
          fVar12 = param_10 + 3.0;
          iVar5 = iVar5 + 1;
        } while (iVar5 <= *(int *)((int)this + 0x180));
      }
      FUN_00af6610((undefined1 *)&local_c);
      bVar3 = TilePartRectangleIterator_IsDone((int)&local_c);
    }
  }
  uVar4 = (**(code **)(*(int *)this + 0x10))();
  if (createRenderer != '\0') {
    uVar4 = CreateLotRendererIfMissing(this);
  }
  *(undefined1 *)((int)this + 0x74) = 1;
  *(undefined1 *)((int)this + 0xc0) = 1;
  if (param_9 != '\0') {
    uVar4 = FUN_00ab11a0((int)this);
  }
  return CONCAT31((int3)((uint)uVar4 >> 8),1);
}

