/* Final saved Ghidra pseudocode; exact owned bytes in paired ASM.
   Central original identity: references/pc-167.md.
   Generated C is a projection, not a callable reconstruction.
   EOL notes are copied from final comment readback at the relevant C statements.
   No stored ABI, type or body changes were requested; AL-only results retain
   upper-register artifacts in this decompilation. */

/* Analyst-assigned task-state lookup helper. ECX host, UInt64 ID in2 stack words and low-byte
   creation flag, RET0C. Lookup primary UInt64 map at host+B88 and return node+8 on hit. With flag0
   (as D835D0 calls), a miss returns0 without secondary lookup, allocation or insertion. Nonzero
   creation flag searches maps+1660/+1680 and may insert/create/publish a primary state through
   children. No host-null guard or local lock/refcount acquisition; map/state lifetime and child
   allocation/error semantics remain external. */

undefined4 __thiscall
FindTaskStateWithOptionalCreation(void *this,uint param_1,undefined4 param_2,uint param_3)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  int local_1c;
  int local_18;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;

  /* 00D760D9: Exact UInt64 key lookup in host+B88. The key is both task-ID stack DWORDs, not only the low32 bits. */
  U64PairMap_Find((void *)((int)this + 0xb88),&local_1c,(ulonglong *)&param_1);
  if (local_1c != *(int *)(*(int *)((int)this + 0xb8c) + *(int *)((int)this + 0xb90) * 4)) {
    return *(undefined4 *)(local_1c + 8);
  }
  /* 00D760F8: Only low byte of creation flag is tested. Registered D835D0 passes0, so a primary-map miss skips all optional construction code and returns0. */
  if ((char)param_3 != '\0') {
    U64PairMap_Find((void *)((int)this + 0x1660),&local_1c,(ulonglong *)&param_1);
    iVar3 = local_1c;
    if (local_1c == *(int *)(*(int *)((int)this + 0x1664) + *(int *)((int)this + 0x1668) * 4)) {
      piVar1 = U64PairMap_Find((void *)((int)this + 0x1680),&local_1c,(ulonglong *)&param_1);
      iVar3 = *piVar1;
      local_18 = piVar1[1];
      if (iVar3 == *(int *)(*(int *)((int)this + 0x1684) + *(int *)((int)this + 0x1688) * 4)) {
        return 0;
      }
    }
    local_c = param_2;
    param_3 = param_3 & 0xffffff00;
    local_10 = param_1;
    local_8 = 0;
    local_4 = 0;
    FUN_00d73bd0((void *)((int)this + 0xb88),&local_1c,&local_10);
    *(undefined4 *)(local_1c + 8) = 0;
    *(undefined4 *)(local_1c + 0xc) = 0;
    puVar2 = FUN_00e4c120(&DAT_00000004);
    *puVar2 = 0;
    puVar2 = FUN_00e53060(0,*(undefined4 *)(iVar3 + 8),0,puVar2);
    *(undefined4 **)(local_1c + 8) = puVar2;
    if (puVar2 != (undefined4 *)0x0) {
      FUN_00d74aa0(this,puVar2);
      return *(undefined4 *)(local_1c + 8);
    }
  }
  return 0;
}
