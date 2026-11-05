/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 COMPLETE95-byte body, ECX product, no stackwords/plainRET, FULL EAX count.
   Authored count is SAR3 of endFC-beginF8 (8-byte retainedpointer/fullID rows). Acquire global
   product+8 collection with allowCreate0; ifpresent add kind5 count from60A260, release
   acquiredcollection via vtable+4. Ifabsent return authoredcount. Full native-facing preset bank
   therefore includes authored ANDkind5custom rows; a deliberately authored-only provider is not the
   complete enumeration service. No CLR mount/file-qualified cache,1024eviction, filesystem snapshot
   or safe overflow policy is established here. Existing instructions and ranges unchanged; analyst
   role only. */

uint __thiscall StairProduct_CountAuthoredAndInstalledPresets(void *this)

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
  uVar2 = *(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8) >> 3;
  local_4 = (int *)0x0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (local_4 != (int *)0x0) {
    iVar1 = ProductPresetCollection_CountRows(local_4,5);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    return iVar1 + uVar2;
  }
  return uVar2;
}

