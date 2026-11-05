/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; reference identity is in guides/water/README.md.
   Read-only Ghidra export, 2026-10-12. Decompiled names and ABI are inferred;
   read the paired original-byte disassembly and guides/water/README.md.
   This internal helper is not a managed registration identity. */



void __thiscall FUN_00b5cba0(void *this,int *param_1,int *param_2,uint param_3)

{
  byte bVar1;
  uint uVar2;
  int iVar3;
  int iVar4;
  undefined1 local_18 [8];
  int *local_10;
  uint local_8;
  
  if (param_2 != (int *)0x0) {
    StreamReader_Construct(local_18,param_2,param_3);
    bVar1 = FUN_004de060(local_10,3,local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    bVar1 = FUN_004de060(local_10,*(uint *)this,local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    uVar2 = 0;
    if (*(int *)this != 0) {
      iVar3 = 0;
      do {
        iVar4 = *param_1 + iVar3;
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(*param_1 + iVar3),local_8);
        StreamReader_AccumulateStatus(local_18,bVar1);
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(iVar4 + 2),local_8);
        StreamReader_AccumulateStatus(local_18,bVar1);
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(iVar4 + 4),local_8);
        StreamReader_AccumulateStatus(local_18,bVar1);
        bVar1 = FUN_004ddf20(local_10,*(ushort *)(iVar4 + 6),local_8);
        StreamReader_AccumulateStatus(local_18,bVar1);
        bVar1 = Stream_WriteByte((undefined *)local_10,*(byte *)(iVar4 + 8));
        StreamReader_AccumulateStatus(local_18,bVar1);
        bVar1 = Stream_WriteByte((undefined *)local_10,*(byte *)(iVar4 + 9));
        StreamReader_AccumulateStatus(local_18,bVar1);
        bVar1 = Stream_WriteByte((undefined *)local_10,*(byte *)(iVar4 + 10));
        StreamReader_AccumulateStatus(local_18,bVar1);
        uVar2 = uVar2 + 1;
        iVar3 = iVar3 + 0xc;
      } while (uVar2 < *(uint *)this);
    }
    if (*(char *)((int)this + 0xa1) == '\0') {
      bVar1 = Stream_WriteUInt32(local_10,0,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      bVar1 = Stream_WriteUInt32(local_10,0,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
    }
    else {
      uVar2 = (*(int *)((int)this + 0x60) - *(int *)((int)this + 0x5c)) / 0x28;
      bVar1 = Stream_WriteUInt32(local_10,uVar2,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      if (uVar2 != 0) {
        iVar3 = 0;
        do {
          FUN_00b5c050((void *)(*(int *)((int)this + 0x5c) + iVar3),local_18);
          iVar3 = iVar3 + 0x28;
          uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
      }
      uVar2 = *(int *)((int)this + 0x70) - *(int *)((int)this + 0x6c) >> 4;
      bVar1 = Stream_WriteUInt32(local_10,uVar2,local_8);
      StreamReader_AccumulateStatus(local_18,bVar1);
      if (uVar2 != 0) {
        iVar3 = 0;
        do {
          FUN_007d89a0(local_18,(int *)(*(int *)((int)this + 0x6c) + iVar3));
          iVar3 = iVar3 + 0x10;
          uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
        StreamReader_ReleaseAuxiliary(local_18);
        return;
      }
    }
    StreamReader_ReleaseAuxiliary(local_18);
  }
  return;
}

