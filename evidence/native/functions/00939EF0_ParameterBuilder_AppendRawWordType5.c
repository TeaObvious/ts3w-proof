/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX builder; hash+fullUInt32 rawword RET8.
   Appends descriptor{hash,type5,offset,4} and payloadword. Type5 is distinct from type4 presence
   markers; no Boolean normalization, wire mapping or duplicate replacement in this function. */

void __thiscall ParameterBuilder_AppendRawWordType5(void *this,uint nameHash,uint rawWord)

{
  uint *puVar1;
  uint local_10 [3];
  undefined4 local_4;
  
  puVar1 = *(uint **)((int)this + 4);
  local_10[2] = (*(int *)((int)this + 0x1c) - *(int *)((int)this + 0x18) >> 2) * 4;
  local_10[0] = nameHash;
  local_4 = 4;
  local_10[1] = 5;
  if (puVar1 < *(uint **)((int)this + 8)) {
    *(uint **)((int)this + 4) = puVar1 + 4;
    if (puVar1 != (uint *)0x0) {
      *puVar1 = nameHash;
      puVar1[1] = 5;
      puVar1[2] = local_10[2];
      puVar1[3] = 4;
    }
  }
  else {
    FUN_004e9120(this,puVar1,local_10);
  }
  puVar1 = *(uint **)((int)this + 0x1c);
  if (puVar1 < *(uint **)((int)this + 0x20)) {
    *(uint **)((int)this + 0x1c) = puVar1 + 1;
    if (puVar1 != (uint *)0x0) {
      *puVar1 = rawWord;
      return;
    }
  }
  else {
    FUN_004b75b0((void *)((int)this + 0x18),puVar1,&rawWord);
  }
  return;
}

