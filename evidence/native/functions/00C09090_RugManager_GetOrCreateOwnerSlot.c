/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXowner map +1UInt64pairpointer/RET4. U64PairMap_Find
   returns existing value slot, otherwise inserts zero-initialized value. Saved load assigns the
   newly read record through this returned slot, replacing earlier map value for duplicate GUID;
   list insertion remains independent. */

int __thiscall RugManager_GetOrCreateOwnerSlot(void *this,uint *param_1)

{
  int iVar1;
  int local_1c [3];
  uint local_10;
  uint local_c;
  undefined4 *local_8;
  
  U64PairMap_Find(this,local_1c,(ulonglong *)param_1);
  if (local_1c[0] != *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    return local_1c[0] + 8;
  }
  local_10 = *param_1;
  local_c = param_1[1];
  local_8 = (undefined4 *)0x0;
  FUN_00c08c20(this,local_1c,&local_10);
  if ((local_8 != (undefined4 *)0x0) &&
     (iVar1 = local_8[1], local_8[1] = iVar1 + -1, iVar1 + -1 == 0)) {
    local_8[1] = 1;
    (**(code **)*local_8)(1);
  }
  return local_1c[0] + 8;
}

