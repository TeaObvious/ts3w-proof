/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall fullPresetId DWORD RET4, EAX full ordinal/FFFFFFFF. Test bit00800000 (not
   signbit80000000): clear searches authored8byte rows by equality with ID at+4, first matching row
   wins. Set acquires kind4 custom collection and FindFullIdRow, returning
   authoredCount+customOrdinal. Missing returnsFFFFFFFF, with collection refs released. A raw full
   ID cannot be passed as an ordinal or truncated toUInt16. */

uint __thiscall FenceProduct_ResolvePresetId(void *this,uint presetId)

{
  void *this_00;
  int iVar1;
  uint uVar2;
  void *productKey;
  uint *puVar3;
  uint uVar4;
  void **outCollection;
  bool allowCreate;
  
  uVar2 = presetId;
  uVar4 = *(int *)((int)this + 0x168) - *(int *)((int)this + 0x164) >> 3;
  if ((presetId & 0x800000) == 0) {
    uVar2 = 0;
    if (uVar4 != 0) {
      puVar3 = (uint *)(*(int *)((int)this + 0x164) + 4);
      do {
        if (*puVar3 == presetId) {
          return uVar2;
        }
        uVar2 = uVar2 + 1;
        puVar3 = puVar3 + 2;
      } while (uVar2 < uVar4);
    }
  }
  else {
    allowCreate = false;
    outCollection = (void **)&presetId;
    productKey = (void *)((int)this + 8);
    presetId = 0;
    this_00 = (void *)ProductPresets_GetGlobalOwner();
    ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
    if (presetId != 0) {
      iVar1 = ProductPresetCollection_FindFullIdRow((void *)presetId,4,uVar2);
      if (iVar1 != -1) {
        if (presetId != 0) {
          (**(code **)(*(int *)presetId + 4))();
        }
        return uVar4 + iVar1;
      }
      if (presetId != 0) {
        (**(code **)(*(int *)presetId + 4))();
        return 0xffffffff;
      }
    }
  }
  return 0xffffffff;
}

