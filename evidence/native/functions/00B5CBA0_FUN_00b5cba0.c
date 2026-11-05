/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */

void __thiscall FUN_00b5cba0(void *this,int *param_1,int *param_2,undefined4 param_3)

{
  byte bVar1;
  bool bVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined1 local_18 [8];
  int *local_10;
  int local_8;
  
  if (param_2 != (int *)0x0) {
    FUN_007d93e0(local_18,param_2,param_3);
    bVar1 = FUN_004de060(local_10,3,local_8);
    FUN_007d79f0(local_18,bVar1);
    bVar1 = FUN_004de060(local_10,*(uint *)this,local_8);
    FUN_007d79f0(local_18,bVar1);
    uVar3 = 0;
    if (*(int *)this != 0) {
      iVar4 = 0;
      do {
        iVar5 = *param_1 + iVar4;
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(*param_1 + iVar4),local_8);
        FUN_007d79f0(local_18,bVar1);
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(iVar5 + 2),local_8);
        FUN_007d79f0(local_18,bVar1);
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(iVar5 + 4),local_8);
        FUN_007d79f0(local_18,bVar1);
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(iVar5 + 6),local_8);
        FUN_007d79f0(local_18,bVar1);
        bVar2 = FUN_004dde30(local_10);
        FUN_007d79f0(local_18,bVar2);
        bVar2 = FUN_004dde30(local_10);
        FUN_007d79f0(local_18,bVar2);
        bVar2 = FUN_004dde30(local_10);
        FUN_007d79f0(local_18,bVar2);
        uVar3 = uVar3 + 1;
        iVar4 = iVar4 + 0xc;
      } while (uVar3 < *(uint *)this);
    }
    if (*(char *)((int)this + 0xa1) == '\0') {
      bVar1 = FUN_004ddf70(local_10,0,local_8);
      FUN_007d79f0(local_18,bVar1);
      bVar1 = FUN_004ddf70(local_10,0,local_8);
      FUN_007d79f0(local_18,bVar1);
    }
    else {
      uVar3 = (*(int *)((int)this + 0x60) - *(int *)((int)this + 0x5c)) / 0x28;
      bVar1 = FUN_004ddf70(local_10,uVar3,local_8);
      FUN_007d79f0(local_18,bVar1);
      if (uVar3 != 0) {
        iVar4 = 0;
        do {
          FUN_00b5c050((void *)(*(int *)((int)this + 0x5c) + iVar4),local_18);
          iVar4 = iVar4 + 0x28;
          uVar3 = uVar3 - 1;
        } while (uVar3 != 0);
      }
      uVar3 = *(int *)((int)this + 0x70) - *(int *)((int)this + 0x6c) >> 4;
      bVar1 = FUN_004ddf70(local_10,uVar3,local_8);
      FUN_007d79f0(local_18,bVar1);
      if (uVar3 != 0) {
        iVar4 = 0;
        do {
          FUN_007d89a0(local_18,(int *)(*(int *)((int)this + 0x6c) + iVar4));
          iVar4 = iVar4 + 0x10;
          uVar3 = uVar3 - 1;
        } while (uVar3 != 0);
        FUN_007d7990((int)local_18);
        return;
      }
    }
    FUN_007d7990((int)local_18);
  }
  return;
}

