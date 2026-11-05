/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst name. Physical ECXproduct only/no
   stackarg/plainRET/EAX32 count. Authored count is signed difference C4-C0 divided20 via signed
   IMUL66666667/SAR3/sign correction; valid row-vector producer ensures20-byte rows. Acquires
   existing product-key+8 presetcollection with allowCreate0, adds type2 row count60A260 when
   present, releases actual acquired collection through vtable+4. No installed collection returns
   authored count. Native signed pointer arithmetic is not a managed bounds guarantee; no
   captured-table completeness established. */

uint __thiscall PatternProduct_CountAuthoredAndInstalledPresets(void *this)

{
  uint uVar1;
  void *this_00;
  int iVar2;
  void *productKey;
  int **outCollection;
  bool allowCreate;
  int *local_4;
  
  uVar1 = (*(int *)((int)this + 0xc4) - *(int *)((int)this + 0xc0)) / 0x14;
  allowCreate = false;
  outCollection = &local_4;
  productKey = (void *)((int)this + 8);
  local_4 = (int *)0x0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (local_4 != (int *)0x0) {
    iVar2 = ProductPresetCollection_CountRows(local_4,2);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    return iVar2 + uVar1;
  }
  return uVar1;
}

