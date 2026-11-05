/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product,
   UInt32 ordinal stack argument RET4. Authored ordinal reads32-bitID atrow+4. Otherwise subtract
   authoredCount, load existingB31830(create0), selector1 row60A2F0 then return row+10 fullID after
   release. Missing collection/row returnsFFFFFFFF. FullIDs preserve all32bits. */

uint __thiscall ObjectProduct_GetPresetFullIdByOrdinal(void *this,uint ordinal)

{
  void *this_00;
  int iVar1;
  void *productKey;
  uint uVar2;
  void **outCollection;
  bool allowCreate;
  
  if (ordinal < (uint)(*(int *)((int)this + 0x108) - *(int *)((int)this + 0x104) >> 3)) {
    return *(uint *)(*(int *)((int)this + 0x104) + 4 + ordinal * 8);
  }
  allowCreate = false;
  outCollection = (void **)&ordinal;
  productKey = (void *)((int)this + 8);
  uVar2 = ordinal - (*(int *)((int)this + 0x108) - *(int *)((int)this + 0x104) >> 3);
  ordinal = 0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (ordinal != 0) {
                    /* Analyst: Selector1 extra row; ordinal already subtracts authored count. */
    iVar1 = ProductPresetCollection_GetRowByOrdinal((void *)ordinal,1,uVar2);
    if (iVar1 != 0) {
      uVar2 = *(uint *)(iVar1 + 0x10);
      if (ordinal != 0) {
        (**(code **)(*(int *)ordinal + 4))();
      }
      return uVar2;
    }
    if (ordinal != 0) {
      (**(code **)(*(int *)ordinal + 4))();
    }
  }
  return 0xffffffff;
}

