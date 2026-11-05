/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Initialize provider state and install vtable00FB3610. Selected
   index factory is vtable+64; original constructor behavior and physical ABI retained. */

void * __thiscall PackedFile_InitializeProvider(void *this,short *param_1,int param_2)

{
  int iVar1;
  code *pcVar2;
  undefined4 uVar3;
  
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fecfc0;
  *(undefined ***)this = &PTR_FUN_00fb3208;
  *(undefined ***)((int)this + 4) = &PTR_FUN_00fb31e4;
  LOCK();
  *(undefined4 *)((int)this + 8) = 0;
  UNLOCK();
  *(undefined ***)this = &PTR_FUN_00fb3610;
  *(undefined ***)((int)this + 4) = &PTR_FUN_00fb3600;
  *(undefined1 *)((int)this + 0xc) = 0;
  *(undefined1 *)((int)this + 0xd) = 0;
  *(undefined1 *)((int)this + 0xe) = 0;
  *(undefined1 *)((int)this + 0xf) = 1;
  if (param_2 == 0) {
    param_2 = FUN_0092f9c0();
  }
  *(int *)((int)this + 0x10) = param_2;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 2;
  *(char **)((int)this + 0x30) = "ResourceSystem/ResourceMan/DPF";
  *(undefined1 **)((int)this + 0x24) = &DAT_011c8e54;
  *(undefined1 **)((int)this + 0x28) = &DAT_011c8e54;
  *(undefined2 **)((int)this + 0x2c) = &DAT_011c8e56;
  FUN_004dbae0((int *)((int)this + 0x34),(LPCSTR)0x0);
  *(undefined4 *)((int)this + 0x25c) = 0;
  *(undefined4 *)((int)this + 0x260) = 0;
  *(undefined4 *)((int)this + 0x264) = 0;
  *(undefined4 *)((int)this + 0x268) = 0;
  *(undefined4 *)((int)this + 0x26c) = 0;
  FUN_004e1cf0((void *)((int)this + 0x270),(char *)0x0,'\x01');
  FUN_004e1cf0((void *)((int)this + 0x2a0),(char *)0x0,'\x01');
  *(undefined4 *)((int)this + 0x2e4) = DAT_00fb3504;
  *(undefined4 *)((int)this + 0x2d0) = 0;
  *(undefined4 *)((int)this + 0x2d4) = 0;
  *(undefined1 *)((int)this + 0x2d8) = 0;
  *(undefined4 *)((int)this + 0x2dc) = 0;
  *(undefined4 *)((int)this + 0x2e0) = 0;
  *(undefined4 *)((int)this + 0x2f0) = 0;
  *(undefined4 *)((int)this + 0x2f4) = 0;
  *(undefined4 *)((int)this + 0x2f8) = 0;
  uVar3 = DAT_00fb3500;
  *(undefined4 *)((int)this + 0x300) = *(undefined4 *)((int)this + 0x10);
  *(undefined4 *)((int)this + 0x304) = 0;
  *(char **)((int)this + 0x308) = "ResourceLoad/PackedFile/RecordMultiMap";
  iVar1 = (int)this + 0x2ec;
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x2f0) = iVar1;
  *(undefined4 *)((int)this + 0x2f4) = 0;
  *(undefined1 *)((int)this + 0x2f8) = 0;
  *(undefined4 *)((int)this + 0x2fc) = 0;
  *(undefined4 *)((int)this + 0x310) = 0;
  *(undefined4 *)((int)this + 0x314) = 0;
  *(undefined4 *)((int)this + 0x318) = 0;
  *(undefined4 *)((int)this + 0x31c) = 0;
  *(undefined4 *)((int)this + 800) = 0;
  *(undefined4 *)((int)this + 0x324) = 0;
  *(undefined4 *)((int)this + 0x328) = 0;
  *(undefined4 *)((int)this + 0x32c) = 0;
  *(undefined4 *)((int)this + 0x330) = 0;
  *(undefined4 *)((int)this + 0x334) = 0;
  *(undefined1 *)((int)this + 0x338) = 0;
  *(undefined4 *)((int)this + 0x33c) = 0x13;
  *(undefined4 *)((int)this + 0x340) = uVar3;
  FUN_004ab850((undefined4 *)((int)this + 0x344));
  FUN_004ab850((undefined4 *)((int)this + 0x368));
  pcVar2 = *(code **)(*(int *)((int)this + 0x34) + 4);
  *(undefined1 *)((int)this + 0x38c) = 0;
  *(undefined1 *)((int)this + 0x38d) = 0;
  *(undefined4 *)((int)this + 0x390) = 0;
  (*pcVar2)();
  if (param_1 != (short *)0x0) {
    FUN_004a9050(this,param_1);
  }
  return this;
}

