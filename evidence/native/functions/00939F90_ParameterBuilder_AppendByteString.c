/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX builder; hash+zero-terminated BYTE
   string RET8. Appends16-byte descriptor{hash,type1,payloadByteOffset,paddedByteLength}; length
   excludesNUL, padded length=(length+4)&FFFFFFFC. Requests resized payload word count with zero
   filler then copies length bytes without the NUL. No deduplication. Encoding/domain, allocator
   failure and deeper vector zero-fill semantics remain separate. */

void __thiscall ParameterBuilder_AppendByteString(void *this,uint nameHash,char *byteString)

{
  char *pcVar1;
  uint uVar2;
  char cVar3;
  uint *puVar4;
  char *pcVar5;
  int iVar6;
  uint local_10 [3];
  uint local_4;
  
  pcVar1 = byteString + 1;
  pcVar5 = byteString;
  do {
    cVar3 = *pcVar5;
    pcVar5 = pcVar5 + 1;
  } while (cVar3 != '\0');
  puVar4 = *(uint **)((int)this + 4);
  iVar6 = *(int *)((int)this + 0x1c) - *(int *)((int)this + 0x18) >> 2;
  local_10[0] = nameHash;
  uVar2 = iVar6 * 4;
  local_4 = ((int)pcVar5 - (int)pcVar1) + 4U & 0xfffffffc;
  local_10[1] = 1;
  local_10[2] = uVar2;
  if (puVar4 < *(uint **)((int)this + 8)) {
    *(uint **)((int)this + 4) = puVar4 + 4;
    if (puVar4 != (uint *)0x0) {
      *puVar4 = nameHash;
      puVar4[1] = 1;
      puVar4[2] = uVar2;
      puVar4[3] = local_4;
    }
  }
  else {
    FUN_004e9120(this,puVar4,local_10);
  }
  nameHash = 0;
  FUN_004d4160((int *)((int)this + 0x18),(local_4 >> 2) + iVar6,&nameHash);
  memcpy((void *)(*(int *)((int)this + 0x18) + uVar2),byteString,(int)pcVar5 - (int)pcVar1);
  return;
}

