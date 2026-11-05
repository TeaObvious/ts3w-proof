/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX builder; hash+fullUInt32 word RET8.
   Always appends descriptor{hash,type4,offset,4}, requests one additional zero-filled payload word
   then stores resolvedWord verbatim, including0. Presence/type and payload truth are separate.
   Original manager+CC producer semantics beyond returned word remain open. */

void __thiscall ParameterBuilder_AppendResolvedWordType4(void *this,uint nameHash,uint resolvedWord)

{
  uint uVar1;
  uint *puVar2;
  int iVar3;
  uint local_10 [3];
  uint local_4;
  
  iVar3 = *(int *)((int)this + 0x1c) - *(int *)((int)this + 0x18) >> 2;
  local_10[0] = nameHash;
  puVar2 = *(uint **)((int)this + 4);
  uVar1 = iVar3 * 4;
  local_4 = 4;
  local_10[1] = 4;
  local_10[2] = uVar1;
  if (puVar2 < *(uint **)((int)this + 8)) {
    *(uint **)((int)this + 4) = puVar2 + 4;
    if (puVar2 != (uint *)0x0) {
      *puVar2 = nameHash;
      puVar2[1] = 4;
      puVar2[2] = uVar1;
      puVar2[3] = 4;
    }
  }
  else {
    FUN_004e9120(this,puVar2,local_10);
  }
  nameHash = 0;
  FUN_004d4160((int *)((int)this + 0x18),(local_4 >> 2) + iVar3,&nameHash);
  *(uint *)(uVar1 + *(int *)((int)this + 0x18)) = resolvedWord;
  return;
}

