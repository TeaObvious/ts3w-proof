/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX map,key pointer RET4. Existing full
   key increments UInt32 reference count+14 and returns ordinal+10. New full key allocates smallest
   free ordinal viaB49CC0, initializes count1, and publishes reverse ordinal->key. These counts
   belong to edit/registration lifetime, not arbitrary save-time row order. */

uint __thiscall WallPatternMap_AddReference(void *this,uint *param_1)

{
  uint uVar1;
  uint *puVar2;
  uint local_8 [2];
  
  FUN_005ed9e0(this,local_8,param_1);
  if (local_8[0] == *(uint *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    local_8[1] = 1;
    uVar1 = WallPatternMap_FindFreeOrdinal((int)this);
    local_8[0] = uVar1;
    puVar2 = (uint *)FUN_00b4b9c0(this,param_1);
    *puVar2 = uVar1;
    puVar2[1] = 1;
    puVar2 = (uint *)FUN_005b8b00((void *)((int)this + 0x20),local_8);
    *puVar2 = *param_1;
    puVar2[1] = param_1[1];
    puVar2[2] = param_1[2];
    puVar2[3] = param_1[3];
    return uVar1;
  }
  *(int *)(local_8[0] + 0x14) = *(int *)(local_8[0] + 0x14) + 1;
  return *(uint *)(local_8[0] + 0x10);
}

