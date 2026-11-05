/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original DBPF role: Hash by key[3] xor key[0], use bucket lookup5E6050, produce
   node/bucket iterator or end sentinel. Complete actual body, no type/ABI change. */

void __thiscall DbpfIndex_FindIterator(void *this,undefined4 *param_1,uint *param_2)

{
  uint uVar1;
  int iVar2;
  int *local_8;
  undefined4 *local_4;
  
  uVar1 = *(uint *)((int)this + 8);
  iVar2 = *(int *)((int)this + 4);
  local_4 = (undefined4 *)(iVar2 + ((param_2[3] ^ *param_2) % uVar1) * 4);
  local_8 = DbpfIndex_FindBucketNode((int *)*local_4,(int *)param_2,param_2[3] ^ *param_2);
  if (local_8 == (int *)0x0) {
    local_8 = *(int **)(iVar2 + uVar1 * 4);
    local_4 = (undefined4 *)(iVar2 + uVar1 * 4);
  }
  *param_1 = local_8;
  param_1[1] = local_4;
  return;
}

