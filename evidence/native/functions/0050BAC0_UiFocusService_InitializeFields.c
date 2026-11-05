/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Physical ECX receiver no stack inputs RET returns receiver.
   Installs primaryFBB6F0, so+54 FBB744 is50ADD0 and+58 FBB748 is50C8C0. Initializes exactly10 focus
   rows starting service+6B0 stride2C, zeroes current/pending/capture pointer and capture
   flag/stored event kind. This is a fixed original context array, not evidence for arbitrary
   dictionary contexts. Body has a non-owned3-byte alignment hole50BC4D..4F skipped by
   unconditional50BC4B→50BC50; export envelope preserves those original bytes marked unowned.
   Other original service fields/list sentinels retained without inventing full class layout. */

void * __thiscall UiFocusService_InitializeFields(void *this)

{
  int iVar1;
  undefined4 *puVar2;
  int iVar3;
  
  *(undefined ***)this = &PTR_FUN_00fbb6f0;
  *(undefined4 *)((int)this + 4) = 0;
  iVar3 = (int)this + 8;
  *(int *)((int)this + 0xc) = iVar3;
  *(int *)iVar3 = iVar3;
  iVar3 = (int)this + 0x10;
  *(int *)((int)this + 0x14) = iVar3;
  *(int *)iVar3 = iVar3;
  iVar1 = (int)this + 0x18;
  *(int *)((int)this + 0x1c) = iVar1;
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x20) = iVar3;
  *(undefined1 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined1 *)((int)this + 0x30) = 0;
  FUN_004e1cf0((void *)((int)this + 0x38),(char *)0x0,'\x01');
  *(undefined1 *)((int)this + 0x68) = 0;
  *(undefined1 *)((int)this + 0x69) = 0;
  iVar3 = (int)this + 0x6c;
  *(int *)((int)this + 0x70) = iVar3;
  *(int *)iVar3 = iVar3;
  iVar3 = (int)this + 0x74;
  *(int *)((int)this + 0x78) = iVar3;
  *(int *)iVar3 = iVar3;
  FUN_004e1cf0((void *)((int)this + 0x80),(char *)0x0,'\x01');
  iVar3 = (int)this + 0xb0;
  *(int *)((int)this + 0xb4) = iVar3;
  *(int *)iVar3 = iVar3;
  *(undefined4 *)((int)this + 0xb8) = 0;
  *(undefined4 *)((int)this + 0xbc) = 0;
  *(undefined4 *)((int)this + 0xc0) = 0;
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 200) = 0;
  *(undefined4 *)((int)this + 0xcc) = 0;
  *(undefined4 *)((int)this + 0xd0) = 0;
  *(undefined4 *)((int)this + 0xd4) = 0;
  *(undefined4 *)((int)this + 0xd8) = 0;
  *(undefined4 *)((int)this + 0xdc) = 1;
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(undefined1 *)((int)this + 0xe4) = 0;
  *(undefined1 *)((int)this + 0xe5) = 1;
  *(char **)((int)this + 0xf0) = "UI/UTFWin/MessageQueue";
  iVar3 = (int)this + 0xe8;
  *(int *)iVar3 = iVar3;
  *(int *)((int)this + 0xec) = iVar3;
  *(char **)((int)this + 0xfc) = "UI/UTFWin/MessageQueueActive";
  iVar3 = (int)this + 0xf4;
  *(int *)iVar3 = iVar3;
  *(int *)((int)this + 0xf8) = iVar3;
  *(char **)((int)this + 0x108) = "UI/UTFWin/MessageQueueProcessing";
  iVar3 = (int)this + 0x100;
  *(int *)iVar3 = iVar3;
  *(int *)((int)this + 0x104) = iVar3;
  *(char **)((int)this + 0x114) = "UI/UTFWin/MessageQueueFinised";
  iVar3 = (int)this + 0x10c;
  *(int *)iVar3 = iVar3;
  *(int *)((int)this + 0x110) = iVar3;
  iVar3 = (int)this + 0x118;
  *(char **)((int)this + 0x120) = "UI/UTFWin/MessageQueueFree";
  *(int *)iVar3 = iVar3;
  *(int *)((int)this + 0x11c) = iVar3;
  *(undefined4 *)((int)this + 0x124) = 0;
  FUN_00466910((void *)((int)this + 0x128),0);
  FUN_004e1cf0((void *)((int)this + 0x678),(char *)0x0,'\x01');
  *(undefined4 *)((int)this + 0x6a8) = 0;
  *(undefined4 *)((int)this + 0x6ac) = 0;
  iVar3 = (int)this + 0x868;
  *(char **)((int)this + 0x870) = "UI/UTFWin/ModalWindowQueue";
  *(int *)iVar3 = iVar3;
  *(int *)((int)this + 0x86c) = iVar3;
  *(undefined4 *)((int)this + 0x874) = 0;
  *(undefined4 *)((int)this + 0x878) = 0;
  puVar2 = (undefined4 *)((int)this + 0x6b8);
  iVar3 = 10;
  do {
    puVar2[-2] = 0;
    puVar2[-1] = 0;
    *puVar2 = 0;
    *(undefined1 *)(puVar2 + 1) = 0;
    puVar2[4] = 0;
    puVar2 = puVar2 + 0xb;
    iVar3 = iVar3 + -1;
  } while (iVar3 != 0);
  return this;
}

