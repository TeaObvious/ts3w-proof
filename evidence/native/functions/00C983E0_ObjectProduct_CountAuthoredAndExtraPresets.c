/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product,
   no stack parameters. AuthoredCount=(end+108-begin+104)/8. B31830(product+8,outCollection,false)
   loads existing resource-backed extra collection, selector1 count via60A260 is added, then
   collection released. Missing extra collection returns authoredCount. No new collection is created
   on this query path. */

uint __thiscall ObjectProduct_CountAuthoredAndExtraPresets(void *this)

{
  void *this_00;
  int iVar1;
  void *productKey;
  uint uVar2;
  int **outCollection;
  bool allowCreate;
  int *local_4;
  
  allowCreate = false;
  outCollection = &local_4;
  productKey = (void *)((int)this + 8);
  uVar2 = *(int *)((int)this + 0x108) - *(int *)((int)this + 0x104) >> 3;
  local_4 = (int *)0x0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (local_4 != (int *)0x0) {
                    /* Analyst: Selector1 extra count supplements authored entries; release
                       afterward. */
    iVar1 = ProductPresetCollection_CountRows(local_4,1);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    return iVar1 + uVar2;
  }
  return uVar2;
}

