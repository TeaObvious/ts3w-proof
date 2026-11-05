/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: obtains or creates a bucket entry for the packed 32-bit spatial key. It probes the hash
   map, returns existing payload at entry+4, or inserts a new entry using the key and returns the
   new payload. Used by the lot bucket rebuilder. The diagnostic string
   World/WorldManager/tLotsTagged is source evidence for this index; the stored key and pointers,
   not that string alone, establish behavior. */

int __thiscall LotSpatialIndex_GetOrCreateBucket(void *this,uint *param_1)

{
  uint *puVar1;
  int iVar2;
  int local_24 [3];
  char *local_18;
  undefined1 local_14 [4];
  int local_10;
  
  FUN_004b0f80(this,local_24,param_1);
  if (local_24[0] != *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    return local_24[0] + 4;
  }
  local_24[0] = 0;
  local_24[1] = 0;
  local_24[2] = 0;
  local_18 = "World/WorldManager/tLotsTagged";
  puVar1 = FUN_00b7b090(local_14,param_1,local_24);
  FUN_00b7c0e0(this,local_24,puVar1);
  iVar2 = local_24[0] + 4;
  if (local_10 != 0) {
    FUN_004e44e0(local_10);
  }
  return iVar2;
}

