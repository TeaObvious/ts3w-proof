/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 static instruction evidence; analyst-assigned name. Physical thiscall ECX
   foundation product, full UInt32 ID stackword, all exits RET4, EAX ordinal or FFFFFFFF.
   AuthoredCount=(endF0-beginEC)>>3; bit00800000 clear scans authored8-byte rows/full ID+4 in order.
   Set bit selects existing product+8 collection allowCreate0, kind7 full-ID lookup,
   authoredCount+customOrdinal. Missing returns FFFFFFFF and acquired collection is released. Body
   has two owned ranges; three intervening alignment bytes are not instructions or part of the
   function. */

uint __thiscall FoundationProduct_ResolveFullPresetIdToOrdinal(void *this,uint param_1)

{
  void *this_00;
  int iVar1;
  uint uVar2;
  void *productKey;
  uint *puVar3;
  uint uVar4;
  void **outCollection;
  bool allowCreate;
  
  uVar2 = param_1;
  uVar4 = *(int *)((int)this + 0xf0) - *(int *)((int)this + 0xec) >> 3;
  if ((param_1 & 0x800000) == 0) {
    uVar2 = 0;
    if (uVar4 != 0) {
      puVar3 = (uint *)(*(int *)((int)this + 0xec) + 4);
      do {
        if (*puVar3 == param_1) {
          return uVar2;
        }
        uVar2 = uVar2 + 1;
        puVar3 = puVar3 + 2;
      } while (uVar2 < uVar4);
    }
  }
  else {
    allowCreate = false;
    outCollection = (void **)&param_1;
    productKey = (void *)((int)this + 8);
    param_1 = 0;
    this_00 = (void *)ProductPresets_GetGlobalOwner();
    ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
    if (param_1 != 0) {
      iVar1 = ProductPresetCollection_FindFullIdRow((void *)param_1,7,uVar2);
      if (iVar1 != -1) {
        if (param_1 != 0) {
          (**(code **)(*(int *)param_1 + 4))();
        }
        return uVar4 + iVar1;
      }
      if (param_1 != 0) {
        (**(code **)(*(int *)param_1 + 4))();
        return 0xffffffff;
      }
    }
  }
  return 0xffffffff;
}

