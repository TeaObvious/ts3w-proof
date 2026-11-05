/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void * __thiscall FUN_00732820(void *this,undefined4 param_1)

{
  int iVar1;
  
  *(undefined ***)this = &PTR_LAB_00fb318c;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)this = &PTR_FUN_00ffee0c;
  *(undefined1 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(char **)((int)this + 0x14) = "ResourceSystem/Cache/ResourceMap";
  *(undefined4 *)((int)this + 0x18) = 0x1ff;
  *(float *)((int)this + 0x2c) = 1.0;
  *(undefined4 *)((int)this + 0x30) = 0x40000000;
  *(int *)((int)this + 0x38) = (int)this + 0xc;
  *(undefined4 *)((int)this + 0x24) = 1;
  *(undefined4 **)((int)this + 0x20) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  iVar1 = (int)this + 0x3c;
  *(int *)((int)this + 0x40) = iVar1;
  *(int *)iVar1 = iVar1;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(char **)((int)this + 0x54) = "ResourceSystem/Cache/FlushList";
  FUN_004e1cf0((void *)((int)this + 0x58),(char *)0x0,'\x01');
  *(undefined4 *)((int)this + 0x88) = param_1;
  *(undefined4 *)((int)this + 0x8c) = 0;
  *(undefined1 **)((int)this + 0x90) = &caseD_15_3;
  *(undefined4 *)((int)this + 0x94) = 0;
  *(undefined4 *)((int)this + 0x98) = 0;
  iVar1 = FUN_0058af00(L"Resources",L"CacheBudget",0);
  *(int *)((int)this + 0x8c) = iVar1;
  iVar1 = FUN_0058af00(L"Resources",L"CacheOverflowBudget",*(int *)((int)this + 0x90));
  *(int *)((int)this + 0x90) = iVar1;
  return this;
}

