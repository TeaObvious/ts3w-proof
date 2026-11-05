/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Constructor installs primary vtable01084370 at object0 and separate secondary tables. Primary+58
   pointsD07300,+64D05FF0,+80CFF160,+18 existing007893B0. Initial snap89 is1; lifecycle initialized
   here. No claim that secondary01084360 is the primary vtable. */

void * __thiscall ObjectTool_Construct(void *this,int param_1)

{
  int *piVar1;
  float fVar2;
  undefined4 *puVar3;
  int *piVar4;
  
  FUN_00ced7e0(this,param_1);
  *(undefined ***)((int)this + 0x54) = &PTR_LAB_00fb3ccc;
  *(undefined ***)((int)this + 0x58) = &PTR_LAB_01084030;
  *(undefined ***)this = &PTR_FUN_01084370;
  *(undefined ***)((int)this + 8) = &PTR_LAB_01084368;
  *(undefined ***)((int)this + 0x54) = &PTR_LAB_01084360;
  *(undefined ***)((int)this + 0x58) = &PTR_LAB_01080ed4;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined4 *)((int)this + 100) = 0;
  *(undefined4 *)((int)this + 0x68) = 0;
  fVar2 = FLOAT_00fab218;
  *(undefined4 *)((int)this + 0x6c) = 0;
  *(undefined4 *)((int)this + 0x70) = 0;
  *(undefined4 *)((int)this + 0x74) = 0;
  *(undefined4 *)((int)this + 0x78) = 0;
  *(undefined4 *)((int)this + 0x7c) = 0;
  *(undefined4 *)((int)this + 0x80) = 0;
  *(undefined4 *)((int)this + 0x84) = 0;
  *(undefined1 *)((int)this + 0x88) = 0;
  *(undefined1 *)((int)this + 0x89) = 1;
  *(undefined1 *)((int)this + 0x8a) = 0;
  *(undefined1 *)((int)this + 0x8b) = 0;
  *(float *)((int)this + 0x94) = fVar2;
  *(float *)((int)this + 0x98) = fVar2;
  *(undefined4 *)((int)this + 0x9c) = 0;
  *(undefined1 *)((int)this + 0xb0) = 0;
  *(undefined1 *)((int)this + 0xb1) = 0;
  *(undefined1 *)((int)this + 0xb2) = 0;
  *(undefined1 *)((int)this + 0xb3) = 0xff;
  *(undefined1 *)((int)this + 0xb4) = 0xff;
  *(undefined1 *)((int)this + 0xb5) = 0;
  *(undefined1 *)((int)this + 0xb6) = 0xff;
  *(undefined4 *)((int)this + 0xb8) = 0;
  *(undefined4 *)((int)this + 0xbc) = 0;
  *(undefined4 *)((int)this + 0xc0) = 0;
  *(float *)((int)this + 0xc4) = fVar2;
  *(float *)((int)this + 200) = fVar2;
  *(undefined4 *)((int)this + 0xcc) = 0;
  *(undefined4 *)((int)this + 0xd0) = 0;
  *(undefined4 *)((int)this + 0xd4) = 0;
  *(undefined4 *)((int)this + 0xd8) = 0;
  *(undefined4 *)((int)this + 0xdc) = 0;
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(undefined4 *)((int)this + 0xe4) = 0;
  *(undefined4 *)((int)this + 0xe8) = 0;
  *(undefined4 *)((int)this + 0xec) = 0;
  *(undefined4 *)((int)this + 0xf0) = 0;
  *(undefined4 *)((int)this + 0xf4) = DAT_01083f70;
  *(undefined4 *)((int)this + 0xf8) = 0x5aed10d;
  *(undefined4 *)((int)this + 0xfc) = 0;
  *(undefined1 *)((int)this + 0x100) = 0;
  *(undefined1 *)((int)this + 0x101) = 1;
  *(undefined1 *)((int)this + 0x102) = 0;
  *(undefined1 *)((int)this + 0x103) = 0;
  *(undefined1 *)((int)this + 0x104) = 0;
  *(undefined4 *)((int)this + 0x108) = 0;
  *(undefined4 *)((int)this + 0x10c) = 0;
  *(undefined4 *)((int)this + 0x110) = 0;
  *(undefined4 *)((int)this + 0x118) = 0;
  *(undefined4 *)((int)this + 0x11c) = 0;
  *(undefined4 *)((int)this + 0x120) = 0;
  *(undefined4 *)((int)this + 0x124) = 0;
  *(undefined4 *)((int)this + 0x128) = 0;
  *(undefined4 *)((int)this + 300) = 0;
  *(undefined4 *)((int)this + 0x130) = 0;
  *(undefined4 *)((int)this + 0x134) = 0;
  *(undefined4 *)((int)this + 0x138) = 0;
  *(undefined4 *)((int)this + 0x13c) = 0;
  *(undefined4 *)((int)this + 0x140) = 0;
  *(undefined4 *)((int)this + 0x144) = 0;
  FUN_00ca0120((undefined4 *)((int)this + 0x148));
  FUN_00ca0120((undefined4 *)((int)this + 0x180));
  *(undefined4 *)((int)this + 0x1b8) = 0;
  *(undefined4 *)((int)this + 0x1bc) = 0;
  *(undefined4 *)((int)this + 0x1c0) = 0;
  *(undefined4 *)((int)this + 0x1c4) = 0;
  *(undefined1 *)((int)this + 0x1cc) = 0;
  *(undefined1 *)((int)this + 0x1cd) = 0;
  *(undefined1 *)((int)this + 0x1ce) = 0;
  *(undefined1 *)((int)this + 0x1cf) = 0;
  *(undefined1 *)((int)this + 0x1d0) = 0;
  *(undefined1 *)((int)this + 0x1d1) = 0;
  *(undefined4 *)((int)this + 0x1d4) = 0x5aed100;
  *(undefined1 *)((int)this + 0x1d8) = 1;
  *(undefined1 *)((int)this + 0x1d9) = 0;
  *(undefined1 *)((int)this + 0x1da) = 0;
  *(undefined1 *)((int)this + 0x1db) = 0;
  *(undefined1 *)((int)this + 0x1dd) = 0;
  *(undefined1 *)((int)this + 0x1de) = 0;
  *(undefined1 *)((int)this + 0x1df) = 0;
  fVar2 = FLOAT_00fab218;
  *(undefined4 *)((int)this + 0x1c8) = 0xffffffff;
  *(undefined4 *)((int)this + 0x1e0) = 0;
  *(undefined4 *)((int)this + 0x1e8) = 0;
  *(undefined4 *)((int)this + 0x1ec) = 0;
  *(undefined4 *)((int)this + 0x1f0) = 0;
  *(undefined4 *)((int)this + 500) = 0;
  *(undefined4 *)((int)this + 0x1f8) = 0;
  *(undefined4 *)((int)this + 0x1fc) = 0;
  *(undefined4 *)((int)this + 0x200) = 0;
  *(undefined4 *)((int)this + 0x204) = 0;
  *(float *)((int)this + 0x208) = fVar2;
  *(float *)((int)this + 0x20c) = fVar2;
  *(undefined4 *)((int)this + 0x210) = 0;
  *(undefined4 *)((int)this + 0x218) = 0;
  *(undefined4 *)((int)this + 0x21c) = 0;
  *(undefined4 *)((int)this + 0x220) = 0;
  *(undefined4 *)((int)this + 0x224) = 0;
  *(char **)((int)this + 0x228) = "Lot/tPatterDesignModeData";
  *(undefined4 *)((int)this + 0x230) = 0;
  *(undefined4 *)((int)this + 0x234) = 0;
  *(undefined4 *)((int)this + 0x238) = 0;
  *(undefined4 *)((int)this + 0x23c) = 0;
  *(undefined4 *)((int)this + 0x240) = 0;
  *(undefined4 *)((int)this + 0x244) = 0;
  *(undefined4 *)((int)this + 0x248) = 0;
  *(undefined4 *)((int)this + 0x24c) = 0;
  *(undefined4 *)((int)this + 0x250) = 0;
  *(undefined4 *)((int)this + 0x254) = 0;
  *(undefined4 *)((int)this + 600) = 0;
  *(undefined4 *)((int)this + 0x25c) = 0;
  *(undefined4 *)((int)this + 0x260) = 0;
  *(undefined4 *)((int)this + 0x264) = 0;
  *(undefined4 *)((int)this + 0x268) = 0;
  *(undefined4 *)((int)this + 0x26c) = 0;
  FUN_00ad7740((int)this + 0x270);
  fVar2 = FLOAT_00fab218;
  *(undefined1 *)((int)this + 0x2f0) = 0;
  *(undefined1 *)((int)this + 0x2f1) = 0;
  *(undefined1 *)((int)this + 0x2f2) = 0;
  *(undefined1 *)((int)this + 0x2f3) = 0;
  *(undefined1 *)((int)this + 0x2f4) = 0;
  *(undefined1 *)((int)this + 0x2f5) = 0;
  *(undefined1 *)((int)this + 0x2f6) = 0;
  *(undefined1 *)((int)this + 0x2f7) = 0;
  *(undefined1 *)((int)this + 0x2fc) = 0;
  *(undefined4 *)((int)this + 0x300) = 0x7fffffff;
  *(undefined4 *)((int)this + 0x304) = 0;
  *(undefined4 *)((int)this + 0x308) = 0;
  *(undefined4 *)((int)this + 0x31c) = 0;
  *(undefined4 *)((int)this + 800) = 0;
  *(undefined4 *)((int)this + 0x324) = 0xffffffff;
  *(float *)((int)this + 0x328) = fVar2;
  *(float *)((int)this + 0x32c) = fVar2;
  *(undefined4 *)((int)this + 0x330) = 0;
  *(undefined4 *)((int)this + 0x334) = 0xffffffff;
  *(float *)((int)this + 0x338) = fVar2;
  *(float *)((int)this + 0x33c) = fVar2;
  *(undefined4 *)((int)this + 0x340) = 0;
  *(undefined4 *)((int)this + 0x344) = 0xffffffff;
  *(float *)((int)this + 0x348) = fVar2;
  *(float *)((int)this + 0x34c) = fVar2;
  *(undefined4 *)((int)this + 0x350) = 0;
  *(undefined4 *)((int)this + 0x354) = 0;
  *(undefined4 *)((int)this + 0x360) = 0;
  *(undefined1 *)((int)this + 0x364) = 0;
  *(undefined1 *)((int)this + 0x365) = 0;
  *(undefined1 *)((int)this + 0x366) = 0;
  *(undefined1 *)((int)this + 0x367) = 0;
  *(undefined4 *)((int)this + 0x370) = 0;
  FUN_0049d0a0((undefined4 *)((int)this + 0x374));
  *(undefined4 *)((int)this + 0x390) = 0;
  *(undefined1 *)((int)this + 0x394) = 0;
  puVar3 = (undefined4 *)FUN_004e4500(0x40,"World/UserToolObject/SlotPlacementHelper",0);
  if (puVar3 == (undefined4 *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    piVar4 = (int *)FUN_00ccb280(puVar3);
  }
  piVar1 = *(int **)((int)this + 0x1c4);
  if (piVar4 != piVar1) {
    if (piVar4 != (int *)0x0) {
      (**(code **)(*piVar4 + 4))();
    }
    *(int **)((int)this + 0x1c4) = piVar4;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))();
    }
  }
  return this;
}

