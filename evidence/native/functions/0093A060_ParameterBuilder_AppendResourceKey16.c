/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX builder; hash+source pointer RET8.
   Appends descriptor{hash,type3,current payload byte offset,16}, then passes begin=resourceKey16
   and end=resourceKey16+16 bytes to the vector insertion helper. Key semantic validity not checked
   here. Helper receives FOUR physical stack words; the fourth is opaque at this boundary. Helper
   body, complete copy/allocation and failure semantics remain unexpanded. */

void __thiscall ParameterBuilder_AppendResourceKey16(void *this,uint nameHash,uint *resourceKey16)

{
  uint *puVar1;
  uint local_10 [3];
  undefined4 local_4;
  
  puVar1 = *(uint **)((int)this + 4);
  local_10[2] = (*(int *)((int)this + 0x1c) - *(int *)((int)this + 0x18) >> 2) * 4;
  local_10[0] = nameHash;
  local_4 = 0x10;
  local_10[1] = 3;
  if (puVar1 < *(uint **)((int)this + 8)) {
    *(uint **)((int)this + 4) = puVar1 + 4;
    if (puVar1 != (uint *)0x0) {
      *puVar1 = nameHash;
      puVar1[1] = 3;
      puVar1[2] = local_10[2];
      puVar1[3] = 0x10;
    }
  }
  else {
    FUN_004e9120(this,puVar1,local_10);
  }
  FUN_00939ce0((void *)((int)this + 0x18),*(void **)((int)this + 0x1c),resourceKey16,
               resourceKey16 + 4,nameHash);
  return;
}

