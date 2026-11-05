/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst: PC 1.67 map/lot detail contract. Constructor initializes
   imposter+d8/freeze+d9/map-active+da/pending+db to0; radius+dc=70.0, current-request bias+e0=8.0,
   max-active+e4=4, terrain-height threshold+e8=600.0, speed threshold+ec=0.0. Installs debug
   controls for these fields and global throttle/min-priority inputs, so these are construction
   defaults, not immutable per-run tuning. Sets global WorldManager pointer at011edbc4 after
   initialization. Other constructor fields are retained in full but not assigned semantics here.
   
   Analyst: PC1.67 world-surface bound. After00C88D00, stores binary32 zero at +0xC4 when false or
   physical constant010F682C (2048.0) when true. This is the extension later added to far Z
   by00C6A090 before lot admission. */

void * __thiscall WorldManager_Construct(void *this)

{
  int iVar1;
  undefined4 uVar2;
  char cVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  float fVar7;
  char *local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  *(undefined ***)this = &PTR_FUN_0107a3a8;
  *(undefined1 *)((int)this + 4) = 0;
  *(undefined1 *)((int)this + 0x40) = 0;
  *(undefined1 *)((int)this + 0x41) = 0;
  *(undefined1 *)((int)this + 0x42) = 0;
  *(undefined1 *)((int)this + 0x43) = 0;
  *(undefined1 *)((int)this + 0x44) = 0;
  *(undefined1 *)((int)this + 0x45) = 0;
  *(undefined1 *)((int)this + 0x46) = 0;
  *(char **)((int)this + 0x50) = "World/WorldManager/DirtyWorldRects";
  iVar1 = (int)this + 0x48;
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x4c) = iVar1;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined4 *)((int)this + 100) = 0;
  *(undefined4 *)((int)this + 0x68) = 0;
  *(undefined4 *)((int)this + 0x6c) = 0;
  *(undefined4 *)((int)this + 0x70) = 0;
  *(undefined4 *)((int)this + 0x74) = 0;
  *(undefined4 *)((int)this + 0x78) = 0;
  *(undefined4 *)((int)this + 0x7c) = 0;
  *(undefined4 *)((int)this + 0x80) = 0;
  *(undefined4 *)((int)this + 0x84) = 0;
  *(undefined4 *)((int)this + 0x88) = 1;
  *(undefined4 *)((int)this + 0x8c) = 0;
  *(undefined4 *)((int)this + 0x90) = 0;
  *(undefined4 *)((int)this + 0x94) = 0;
  LOCK();
  *(undefined4 *)((int)this + 0x98) = 0;
  uVar6 = _DAT_00fbefdc;
  UNLOCK();
  *(undefined4 *)((int)this + 0x9c) = 0;
  *(undefined4 *)((int)this + 0xa0) = 0;
  *(undefined4 *)((int)this + 0xa4) = 0;
  *(char **)((int)this + 0xa8) = "World/WorldManager/ObjectManagers";
  *(undefined4 *)((int)this + 0xac) = 0;
  *(undefined4 *)((int)this + 0xb0) = 0;
  *(undefined4 *)((int)this + 0xdc) = uVar6;
  *(undefined4 *)((int)this + 0xe0) = DAT_00fb9db8;
  uVar6 = DAT_00ff0738;
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 0xcc) = 0;
  *(undefined4 *)((int)this + 0xd0) = 0;
  *(undefined4 *)((int)this + 0xd4) = 0;
  *(undefined1 *)((int)this + 0xd8) = 0;
  *(undefined1 *)((int)this + 0xd9) = 0;
  *(undefined1 *)((int)this + 0xda) = 0;
  *(undefined1 *)((int)this + 0xdb) = 0;
  *(undefined4 *)((int)this + 0xe4) = 4;
  *(undefined4 *)((int)this + 0xe8) = uVar6;
  *(undefined4 *)((int)this + 0xec) = 0;
  *(char **)((int)this + 0xfc) = "World/WorldManager";
  *(undefined1 **)((int)this + 0xf0) = &DAT_011c8e54;
  *(undefined1 **)((int)this + 0xf4) = &DAT_011c8e54;
  *(undefined2 **)((int)this + 0xf8) = &DAT_011c8e56;
  *(undefined4 *)((int)this + 0x100) = 0;
  *(undefined4 *)((int)this + 0x104) = 0;
  *(undefined4 *)((int)this + 0x108) = 0;
  *(char **)((int)this + 0x10c) = "World/WorldManager";
  LOCK();
  *(undefined4 *)((int)this + 0x110) = 0;
  uVar2 = DAT_01079714;
  UNLOCK();
  *(undefined4 *)((int)this + 0x114) = 0;
  *(undefined4 *)((int)this + 0x118) = 0;
  *(undefined4 *)((int)this + 0x11c) = 0;
  *(undefined4 *)((int)this + 0x120) = 0;
  *(undefined4 *)((int)this + 0x128) = 0;
  *(undefined4 *)((int)this + 300) = DAT_00fb3f78;
  uVar6 = DAT_00ff4a64;
  *(undefined4 *)((int)this + 0x124) = uVar2;
  uVar2 = DAT_0103fd88;
  *(undefined4 *)((int)this + 0x130) = uVar6;
  fVar7 = FLOAT_00f998f8;
  *(undefined4 *)((int)this + 0x138) = 0;
  *(undefined4 *)((int)this + 0x13c) = 0;
  *(undefined4 *)((int)this + 0x140) = 0;
  *(undefined4 *)((int)this + 0x144) = 0;
  *(undefined1 *)((int)this + 0x148) = 1;
  *(undefined1 *)((int)this + 0x149) = 0;
  *(undefined4 *)((int)this + 0x14c) = 0;
  *(undefined1 *)((int)this + 0x151) = 1;
  *(undefined1 *)((int)this + 0x152) = 0;
  *(undefined4 *)((int)this + 0x154) = 200;
  *(undefined4 *)((int)this + 0x158) = 0x12e;
  *(undefined4 *)((int)this + 0x15c) = 500;
  *(undefined4 *)((int)this + 0x160) = 600;
  *(undefined4 *)((int)this + 0x164) = 0;
  *(undefined4 *)((int)this + 0x16c) = 0;
  *(undefined4 *)((int)this + 0x170) = 0;
  *(undefined4 *)((int)this + 0x174) = 0;
  *(undefined4 *)((int)this + 0x178) = 0;
  *(undefined4 *)((int)this + 0x17c) = 0;
  *(undefined1 *)((int)this + 400) = 0;
  *(float *)((int)this + 0x1a4) = fVar7;
  *(undefined4 *)((int)this + 0x1a8) = uVar2;
  *(char **)((int)this + 0x1b0) = "World/WorldManager/mEditableObjMgrs";
  *(undefined4 *)((int)this + 0x19c) = 1;
  *(undefined4 *)((int)this + 0x1a0) = 0;
  *(undefined4 *)((int)this + 0x1ac) = 0;
  *(undefined4 **)((int)this + 0x198) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x1b4) = 0;
  *(undefined4 *)((int)this + 0x1bc) = 0;
  *(undefined4 *)((int)this + 0x1c0) = 0;
  *(undefined4 *)((int)this + 0x1c4) = 0;
  *(char **)((int)this + 0x1c8) = "World/WorldManager/LoadSaveLogEvents";
  *(undefined1 *)((int)this + 0x1cc) = 1;
  *(float *)((int)this + 0x1e4) = fVar7;
  *(undefined4 *)((int)this + 0x1e8) = uVar2;
  *(char **)((int)this + 0x1f0) = "World/WorldManager/LotPartitions";
  *(undefined4 **)((int)this + 0x1d8) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x1dc) = 1;
  *(undefined4 *)((int)this + 0x1e0) = 0;
  *(undefined4 *)((int)this + 0x1ec) = 0;
  *(undefined4 *)((int)this + 500) = 0;
  *(undefined4 *)((int)this + 0x1f8) = 0;
  *(undefined4 *)((int)this + 0x1fc) = 0;
  *(char **)((int)this + 0x200) = "World/WorldManager/LotList";
  *(undefined4 *)((int)this + 0x204) = 0;
  *(undefined4 *)((int)this + 0x208) = 0;
  *(undefined4 *)((int)this + 0x20c) = 0;
  *(char **)((int)this + 0x210) = "World/WorldManager/LotListGlobal";
  *(undefined4 *)((int)this + 0x214) = 0;
  *(undefined4 *)((int)this + 0x218) = 0;
  *(undefined4 *)((int)this + 0x21c) = 0;
  *(char **)((int)this + 0x220) = "World/WorldManager/HouseboatLots";
  FUN_004e1cf0((void *)((int)this + 0x228),(char *)0x0,'\x01');
  *(undefined1 *)((int)this + 600) = 0;
  local_24 = "World/WorldManager/mWorldTextureKeys";
  FUN_007d9500((void *)((int)this + 0x25c),&local_24);
  FUN_005a27e0((undefined4 *)((int)this + 0x270));
  FUN_00c63ad0((undefined4 *)((int)this + 0x310));
  fVar7 = FLOAT_00f998f8;
  *(undefined4 *)((int)this + 0x3b0) = 0;
  *(undefined4 *)((int)this + 0x3b4) = 0;
  *(undefined4 *)((int)this + 0x3b8) = 0;
  *(float *)((int)this + 0x3cc) = fVar7;
  *(undefined4 *)((int)this + 0x3d0) = DAT_0103fd88;
  *(char **)((int)this + 0x3d8) = "World/WorldManager/mAutoDestroyEffects";
  *(undefined4 *)((int)this + 0x3c4) = 1;
  *(undefined4 **)((int)this + 0x3c0) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x3c8) = 0;
  *(undefined4 *)((int)this + 0x3d4) = 0;
  *(undefined4 *)((int)this + 0x3dc) = 4;
  local_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  *(undefined4 *)((int)this + 0x180) = 0;
  *(undefined4 *)((int)this + 0x184) = 0;
  *(undefined4 *)((int)this + 0x188) = 0;
  *(undefined4 *)((int)this + 0x18c) = 0;
  cVar3 = GameProducts_TestCachedMask40000();
  uVar6 = _DAT_010f682c;
  if (cVar3 == '\0') {
    uVar6 = 0;
  }
  *(undefined4 *)((int)this + 0xc4) = uVar6;
  *(undefined4 *)((int)this + 0x10) = local_20;
  *(undefined4 *)((int)this + 0x14) = uStack_1c;
  *(undefined4 *)((int)this + 0x18) = uStack_18;
  *(undefined4 *)((int)this + 0x1c) = uStack_14;
  *(undefined4 *)((int)this + 0x20) = local_20;
  *(undefined4 *)((int)this + 0x24) = uStack_1c;
  *(undefined4 *)((int)this + 0x28) = uStack_18;
  *(undefined4 *)((int)this + 0x2c) = uStack_14;
  *(undefined4 *)((int)this + 0x30) = local_20;
  *(undefined4 *)((int)this + 0x34) = uStack_1c;
  *(undefined4 *)((int)this + 0x38) = uStack_18;
  *(undefined4 *)((int)this + 0x3c) = uStack_14;
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x18))(L"Streaming",10000);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x34))((int)this + 0xe4,L"Max Active Lots",0,0xc,1);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x30))
              ((int)this + 0xec,L"Camera speed threshold",0,DAT_010f6bf4,_DAT_0104487c);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x30))
              ((int)this + 0xe8,L"Terrain Height Thresh",0,DAT_00ff0738,0x3f800000);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x30))((int)this + 0xdc,L"Lot LOD dist.",0,_DAT_00fbe014,0x3f800000);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x30))((int)this + 0xe0,L"Active Lot Bias",0,_DAT_00fee3a8,0x3f800000);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x28))(&DAT_011edbc0,L"Throttle Lot LoD Transitions");
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x34))
              (&DAT_01185328,L"Throttle Lot LoD Transitions Max Active Lot Threshold",0,0xc,1);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x34))(&DAT_0118532c,L"Force LoD Min Priority",0,4,1);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x18))(0,0x7fffffff);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x18))(L"World Stats",16000);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    puVar5 = (undefined4 *)FUN_004e4500(8,"Debug/DebugVarMan/CmdCallback",0);
    if (puVar5 == (undefined4 *)0x0) {
      puVar5 = (undefined4 *)0x0;
    }
    else {
      *puVar5 = &PTR_LAB_00ffee04;
      puVar5[1] = FUN_00c658b0;
    }
    (**(code **)(*piVar4 + 0x58))(L"Export Stats",this,puVar5);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    puVar5 = (undefined4 *)FUN_004e4500(8,"Debug/DebugVarMan/CmdCallback",0);
    if (puVar5 == (undefined4 *)0x0) {
      puVar5 = (undefined4 *)0x0;
    }
    else {
      *puVar5 = &PTR_LAB_00ffee04;
      puVar5[1] = FUN_00c658f0;
    }
    (**(code **)(*piVar4 + 0x58))(L"Dump Memory DB Textures",this,puVar5);
  }
  piVar4 = (int *)FUN_005a08d0();
  if (piVar4 != (int *)0x0) {
    (**(code **)(*piVar4 + 0x18))(0,0x7fffffff);
  }
  FUN_00c5fed0((int)this);
  uVar6 = MessageDispatch_GetCurrent();
  *(undefined4 *)((int)this + 0x168) = uVar6;
  puVar5 = (undefined4 *)FUN_00aa9c70();
  if (puVar5 != (undefined4 *)0x0) {
    _DAT_011853f4 = this;
    (**(code **)*puVar5)(&PTR_PTR_011853f0);
  }
  DAT_011edbc4 = this;
  fVar7 = (float)thunk_FUN_00835d40();
  if (fVar7 != 0.0) {
    FUN_008307c0(fVar7);
  }
  return this;
}

