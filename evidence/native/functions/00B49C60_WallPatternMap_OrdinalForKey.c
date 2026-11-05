/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Return0 when full key equals inline
   default key+40. Otherwise lookup full key and return stored ordinal, or0 if absent. Ordinal zero
   represents default mapping, not reference-table handle zero. */

undefined4 __thiscall WallPatternMap_OrdinalForKey(void *this,uint *param_1)

{
  int local_8 [2];
  
  if ((((*param_1 != *(uint *)((int)this + 0x40)) || (param_1[2] != *(uint *)((int)this + 0x48))) ||
      (param_1[3] != *(uint *)((int)this + 0x4c))) || (param_1[1] != *(uint *)((int)this + 0x44))) {
    FUN_005ed9e0(this,local_8,param_1);
    if (local_8[0] != *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
      return *(undefined4 *)(local_8[0] + 0x10);
    }
  }
  return 0;
}

