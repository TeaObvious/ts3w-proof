/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX fence product, no stack words/plainRET, EAX count. Authored
   count=(end168-begin164)>>3; additionally acquires global product-key collection with
   allowCreate0, adds count of kind4 rows, then releases it. Thus native preset count is authored
   plus retained custom collection, not merely CFEN materials count. No C# package/mount/file-stamp
   cache or CLR weak material readiness table is inferred. */

uint __thiscall FenceProduct_CountPresetRows(void *this)

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
  uVar2 = *(int *)((int)this + 0x168) - *(int *)((int)this + 0x164) >> 3;
  local_4 = (int *)0x0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (local_4 != (int *)0x0) {
    iVar1 = ProductPresetCollection_CountRows(local_4,4);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    return iVar1 + uVar2;
  }
  return uVar2;
}

