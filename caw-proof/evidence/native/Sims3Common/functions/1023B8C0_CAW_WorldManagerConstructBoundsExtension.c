/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Initializes world manager fields. World +C4 initially zero,
   then set to binary32 2048 (immediate 0x45000000) only when 0x1025EAD0 reports the cached
   installed-product flag 0x40000. This conditional Z extension is separate from resource world tile
   counts and terrain tile size. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

undefined4 * __fastcall CAW_WorldManagerConstructBoundsExtension(undefined4 *param_1)

{
  undefined4 uVar1;
  char cVar2;
  int *piVar3;
  undefined4 *puVar4;
  undefined4 uVar5;
  float fVar6;
  char *local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  *param_1 = &PTR_FUN_10ac9ca8;
  *(undefined1 *)(param_1 + 1) = 0;
  *(undefined1 *)(param_1 + 0x10) = 0;
  *(undefined1 *)((int)param_1 + 0x41) = 0;
  *(undefined1 *)((int)param_1 + 0x42) = 0;
  *(undefined1 *)((int)param_1 + 0x43) = 0;
  *(undefined1 *)(param_1 + 0x11) = 0;
  *(undefined1 *)((int)param_1 + 0x45) = 0;
  *(undefined1 *)((int)param_1 + 0x46) = 0;
  param_1[0x14] = "World/WorldManager/DirtyWorldRects";
  puVar4 = param_1 + 0x12;
  *puVar4 = puVar4;
  param_1[0x13] = puVar4;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0;
  param_1[0x1c] = 0;
  param_1[0x1d] = 0;
  param_1[0x1e] = 0;
  param_1[0x1f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  param_1[0x22] = 1;
  param_1[0x23] = 0;
  param_1[0x24] = 0;
  param_1[0x25] = 0;
  LOCK();
  param_1[0x26] = 0;
  uVar5 = _DAT_10aca044;
  UNLOCK();
  param_1[0x27] = 0;
  param_1[0x28] = 0;
  param_1[0x29] = 0;
  param_1[0x2a] = "World/WorldManager/ObjectManagers";
  param_1[0x2b] = 0;
  param_1[0x2c] = 0;
  param_1[0x37] = uVar5;
  param_1[0x38] = DAT_10aaeb2c;
  uVar5 = _DAT_10aca01c;
  param_1[0x31] = 0;
  param_1[0x33] = 0;
  param_1[0x34] = 0;
  param_1[0x35] = 0;
  *(undefined1 *)(param_1 + 0x36) = 0;
  *(undefined1 *)((int)param_1 + 0xd9) = 0;
  *(undefined1 *)((int)param_1 + 0xda) = 0;
  *(undefined1 *)((int)param_1 + 0xdb) = 0;
  param_1[0x39] = 4;
  param_1[0x3a] = uVar5;
  param_1[0x3b] = 0;
  param_1[0x3f] = "World/WorldManager";
  param_1[0x3c] = &_Dst_10ca8244;
  param_1[0x3d] = &_Dst_10ca8244;
  param_1[0x3e] = &DAT_10ca8246;
  param_1[0x40] = 0;
  param_1[0x41] = 0;
  param_1[0x42] = 0;
  param_1[0x43] = "World/WorldManager";
  LOCK();
  param_1[0x44] = 0;
  uVar5 = DAT_10ac8e6c;
  UNLOCK();
  param_1[0x45] = 0;
  param_1[0x46] = 0;
  param_1[0x47] = 0;
  param_1[0x48] = 0;
  param_1[0x4a] = 0;
  param_1[0x4b] = _DAT_10aaef14;
  uVar1 = DAT_10ac470c;
  param_1[0x49] = uVar5;
  uVar5 = _DAT_10aadffc;
  param_1[0x4c] = uVar1;
  uVar1 = DAT_10acb0d4;
  param_1[0x4e] = 0;
  param_1[0x4f] = 0;
  param_1[0x50] = 0;
  param_1[0x51] = 0;
  *(undefined1 *)(param_1 + 0x52) = 1;
  *(undefined1 *)((int)param_1 + 0x149) = 0;
  param_1[0x53] = 0;
  *(undefined1 *)((int)param_1 + 0x151) = 1;
  *(undefined1 *)((int)param_1 + 0x152) = 0;
  param_1[0x55] = 200;
  param_1[0x56] = 0x12e;
  param_1[0x57] = 500;
  param_1[0x58] = 600;
  param_1[0x59] = 0;
  param_1[0x5b] = 0;
  param_1[0x5c] = 0;
  param_1[0x5d] = 0;
  param_1[0x5e] = 0;
  param_1[0x5f] = 0;
  *(undefined1 *)(param_1 + 100) = 0;
  param_1[0x69] = uVar1;
  param_1[0x6a] = uVar5;
  param_1[0x6c] = "World/WorldManager/mEditableObjMgrs";
  param_1[0x67] = 1;
  param_1[0x68] = 0;
  param_1[0x6b] = 0;
  param_1[0x66] = &DAT_10c571f8;
  param_1[0x6d] = 0;
  param_1[0x6f] = 0;
  param_1[0x70] = 0;
  param_1[0x71] = 0;
  param_1[0x72] = "World/WorldManager/LoadSaveLogEvents";
  *(undefined1 *)(param_1 + 0x73) = 1;
  param_1[0x79] = uVar1;
  param_1[0x7a] = uVar5;
  param_1[0x7c] = "World/WorldManager/LotPartitions";
  param_1[0x76] = &DAT_10c571f8;
  param_1[0x77] = 1;
  param_1[0x78] = 0;
  param_1[0x7b] = 0;
  param_1[0x7d] = 0;
  param_1[0x7e] = 0;
  param_1[0x7f] = 0;
  param_1[0x80] = "World/WorldManager/LotList";
  param_1[0x81] = 0;
  param_1[0x82] = 0;
  param_1[0x83] = 0;
  param_1[0x84] = "World/WorldManager/LotListGlobal";
  param_1[0x85] = 0;
  param_1[0x86] = 0;
  param_1[0x87] = 0;
  param_1[0x88] = "World/WorldManager/HouseboatLots";
  FUN_109167b0(param_1 + 0x8a,(char *)0x0,'\x01');
  *(undefined1 *)(param_1 + 0x96) = 0;
  local_24 = "World/WorldManager/mWorldTextureKeys";
  FUN_10727810(param_1 + 0x97,&local_24);
  FUN_1039c030(param_1 + 0x9c);
  FUN_10238270(param_1 + 0xc4);
  uVar5 = DAT_10acb0d4;
  param_1[0xec] = 0;
  param_1[0xed] = 0;
  param_1[0xee] = 0;
  param_1[0xf3] = uVar5;
  param_1[0xf4] = _DAT_10aadffc;
  param_1[0xf6] = "World/WorldManager/mAutoDestroyEffects";
  param_1[0xf1] = 1;
  param_1[0xf0] = &DAT_10c571f8;
  param_1[0xf2] = 0;
  param_1[0xf5] = 0;
  param_1[0xf7] = 4;
  local_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  param_1[0x60] = 0;
  param_1[0x61] = 0;
  param_1[0x62] = 0;
  param_1[99] = 0;
  cVar2 = CAW_QueryCachedProductWorldExtensionFlag();
  uVar5 = _DAT_10ac9f04;
  if (cVar2 == '\0') {
    uVar5 = 0;
  }
  param_1[0x31] = uVar5;
  param_1[4] = local_20;
  param_1[5] = uStack_1c;
  param_1[6] = uStack_18;
  param_1[7] = uStack_14;
  param_1[8] = local_20;
  param_1[9] = uStack_1c;
  param_1[10] = uStack_18;
  param_1[0xb] = uStack_14;
  param_1[0xc] = local_20;
  param_1[0xd] = uStack_1c;
  param_1[0xe] = uStack_18;
  param_1[0xf] = uStack_14;
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x18))(L"Streaming",10000);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x34))(param_1 + 0x39,L"Max Active Lots",0,0xc,1);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x30))
              (param_1 + 0x3b,L"Camera speed threshold",0,DAT_10aaed5c,DAT_10ab2934);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x30))
              (param_1 + 0x3a,L"Terrain Height Thresh",0,_DAT_10aca01c,0x3f800000);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x30))(param_1 + 0x37,L"Lot LOD dist.",0,DAT_10ac9e70,0x3f800000);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x30))(param_1 + 0x38,L"Active Lot Bias",0,DAT_10ac9e50,0x3f800000);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x28))(&DAT_10c700c0,L"Throttle Lot LoD Transitions");
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x34))
              (&DAT_10c0fb68,L"Throttle Lot LoD Transitions Max Active Lot Threshold",0,0xc,1);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x34))(&DAT_10c0fb6c,L"Force LoD Min Priority",0,4,1);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x18))(0,0x7fffffff);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x18))(L"World Stats",16000);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    puVar4 = (undefined4 *)FUN_10918eb0(8,"Debug/DebugVarMan/CmdCallback",0);
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      *puVar4 = &PTR_LAB_10b106c0;
      puVar4[1] = FUN_1023a040;
    }
    (**(code **)(*piVar3 + 0x58))(L"Export Stats",param_1,puVar4);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    puVar4 = (undefined4 *)FUN_10918eb0(8,"Debug/DebugVarMan/CmdCallback",0);
    if (puVar4 == (undefined4 *)0x0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      *puVar4 = &PTR_LAB_10b106c0;
      puVar4[1] = FUN_1023a080;
    }
    (**(code **)(*piVar3 + 0x58))(L"Dump Memory DB Textures",param_1,puVar4);
  }
  piVar3 = (int *)FUN_1039a170();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x18))(0,0x7fffffff);
  }
  FUN_102342d0((int)param_1);
  uVar5 = FUN_108835e0();
  param_1[0x5a] = uVar5;
  puVar4 = (undefined4 *)FUN_1006efc0();
  if (puVar4 != (undefined4 *)0x0) {
    _DAT_10c0fc34 = param_1;
    (**(code **)*puVar4)(&PTR_PTR_10c0fc30);
  }
  DAT_10c700c4 = param_1;
  fVar6 = (float)thunk_FUN_10627370();
  if (fVar6 != 0.0) {
    FUN_10621df0(fVar6);
  }
  return param_1;
}

