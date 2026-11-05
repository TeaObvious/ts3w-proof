/* Initializes an existing dispatcher instance and installs vtable 00FA2B00. Queue sentinel at +0C,
   listener map at +58, separate locks at +20/+80; option bytes +B0..+B5 initially 1. Allocation and
   installation are separate callers. Analyst-assigned name. */

void * __thiscall InitializeMessageDispatcher(void *this,int param_1)

{
  int iVar1;

  /* 0044CCCD: This concrete vtable links slot +1C to 44CF30 queueing, +24 to listener registration, +38 to queue pumping and +18 to listener dispatch. It is not the floor-message payload vtable. */
  *(undefined ***)this = &PTR_FUN_00fa2b00;
  if (param_1 == 0) {
    param_1 = FUN_0092f9c0();
  }
  /* 0044CCDA: Queue sentinel links to itself; the pointer at +1C is the allocator-name string Services/EAMessage/Queue, not another vtable. */
  iVar1 = (int)this + 0xc;
  *(int *)((int)this + 8) = param_1;
  *(int *)((int)this + 0x14) = param_1;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(char **)((int)this + 0x1c) = "Services/EAMessage/Queue";
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x10) = iVar1;
  FUN_004e1cf0((void *)((int)this + 0x20),(char *)0x0,'\x01');
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(float *)((int)this + 0x68) = 1.0;
  *(undefined4 *)((int)this + 0x6c) = 0x40000000;
  *(undefined4 *)((int)this + 0x74) = *(undefined4 *)((int)this + 8);
  *(undefined4 *)((int)this + 0x78) = 0;
  *(char **)((int)this + 0x7c) = "Services/EAMessage/Map";
  *(undefined4 *)((int)this + 0x60) = 1;
  *(undefined4 **)((int)this + 0x5c) = &DAT_0114d900;
  *(undefined4 *)((int)this + 100) = 0;
  *(undefined4 *)((int)this + 0x70) = 0;
  FUN_004e1cf0((void *)((int)this + 0x80),(char *)0x0,'\x01');
  *(undefined1 *)((int)this + 0xb0) = 1;
  *(undefined1 *)((int)this + 0xb1) = 1;
  *(undefined1 *)((int)this + 0xb2) = 1;
  *(undefined1 *)((int)this + 0xb3) = 1;
  *(undefined1 *)((int)this + 0xb4) = 1;
  *(undefined1 *)((int)this + 0xb5) = 1;
  return this;
}
