/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void * __thiscall FUN_00783cd0(void *this,undefined4 param_1)

{
  int iVar1;
  undefined4 *puVar2;
  void *this_00;
  int iVar3;
  undefined4 uVar4;
  int *piVar5;
  bool bVar6;
  
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fb3ccc;
  *(undefined ***)this = &PTR_FUN_0100fbbc;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0100fbb4;
  *(float *)((int)this + 0x18) = 1.0;
  *(undefined4 *)((int)this + 0x1c) = 0x40000000;
  *(char **)((int)this + 0x24) = "Scripting/UIHost/DebugLayoutNameMap";
  *(undefined4 *)((int)this + 0x10) = 1;
  *(undefined4 **)((int)this + 0xc) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  iVar1 = (int)this + 4;
  *(undefined4 *)((int)this + 0x44) = param_1;
  this_00 = DAT_011d798c;
  bVar6 = DAT_011d798c == (void *)0x0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(char **)((int)this + 0x54) = "Scripting/UIHost/Playlist";
  DAT_011d7988 = this;
  if (bVar6) {
    puVar2 = (undefined4 *)FUN_004e4500(0x24,"Scripting/EventController",0);
    if (puVar2 == (undefined4 *)0x0) {
      this_00 = (void *)0x0;
      DAT_011d798c = this_00;
    }
    else {
      this_00 = (void *)FUN_00742190(puVar2);
      DAT_011d798c = this_00;
    }
  }
  FUN_007420a0(this_00,this);
  iVar3 = FUN_007ecf80();
  if (iVar3 == 0) {
    iVar3 = FUN_004e4500(0x20,"UI/SoundManager",0);
    if (iVar3 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_007ed650(iVar3);
    }
    FUN_007ecf90(uVar4);
  }
  piVar5 = (int *)FUN_007693a0();
  if (piVar5 != (int *)0x0) {
    (**(code **)(*piVar5 + 0x24))(iVar1,0xf0707d65,0,0);
    (**(code **)(*piVar5 + 0x24))(iVar1,0x7983246,0,0);
    (**(code **)(*piVar5 + 0x24))(iVar1,0xfbc9b988,0,0);
    (**(code **)(*piVar5 + 0x24))(iVar1,0xe777fb0d,0,0);
    (**(code **)(*piVar5 + 0x24))(iVar1,0x49afd6a0,0,0);
  }
  return this;
}

