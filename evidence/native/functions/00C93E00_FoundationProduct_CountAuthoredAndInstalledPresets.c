/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 static instruction evidence; analyst-assigned name. Physical ECX foundation
   product, no stackarguments, plain RET, full EAX count. AuthoredCount=(endF0-beginEC)>>3 from
   retainedpointer/fullUInt32 ID rows. Acquire existing product+8 collection allowCreate0; if
   present add kind7 row count and release collection, otherwise return authoredCount. An
   authored-only provider is therefore not the complete native user-preset service. No
   package-cache, filesystem or safe-overflow policy is inferred. */

int __fastcall FoundationProduct_CountAuthoredAndInstalledPresets(int param_1)

{
  void *this;
  int iVar1;
  void *productKey;
  int iVar2;
  int **outCollection;
  bool allowCreate;
  int *local_4;
  
  allowCreate = false;
  outCollection = &local_4;
  productKey = (void *)(param_1 + 8);
  iVar2 = *(int *)(param_1 + 0xf0) - *(int *)(param_1 + 0xec) >> 3;
  local_4 = (int *)0x0;
  this = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this,productKey,outCollection,allowCreate);
  if (local_4 != (int *)0x0) {
    iVar1 = ProductPresetCollection_CountRows(local_4,7);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    return iVar1 + iVar2;
  }
  return iVar2;
}

