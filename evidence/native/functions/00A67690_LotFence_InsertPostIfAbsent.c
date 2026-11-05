/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Calls the existing post lookup. A found result returns false without overwriting; an absent
   result inserts the supplied key/design. Exact comparator identity and nonfinite treatment remain
   separate. */

undefined4 __thiscall
LotFence_InsertPostIfAbsent(void *this,float *param_1,float *param_2,undefined2 param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float *pfVar5;
  uint uVar6;
  uint local_20;
  uint local_1c;
  float local_8;
  float local_4;
  
  FUN_00a66d20((void *)((int)this + 4),&local_20,param_1);
  uVar6 = local_20;
  if (local_20 == local_1c) {
    uVar6 = *(uint *)((int)this + 8);
  }
  if (uVar6 != *(uint *)((int)this + 8)) {
    return local_20 & 0xffffff00;
  }
  fVar1 = *param_2;
  fVar2 = param_2[1];
  fVar3 = param_2[2];
  fVar4 = param_2[3];
  local_8 = (float)CONCAT22(local_8._2_2_,param_3);
  pfVar5 = FUN_00a67510((void *)((int)this + 4),param_1);
  *pfVar5 = fVar1;
  pfVar5[1] = fVar2;
  pfVar5[2] = fVar3;
  pfVar5[3] = fVar4;
  pfVar5[4] = local_8;
  pfVar5[5] = local_4;
  return CONCAT31((int3)((uint)pfVar5 >> 8),1);
}

