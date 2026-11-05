/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 existing163-owned-byte body, ranges C96CC0..C96D4C andC96D50..C96D65;
   existing3-byte LEAalignment atC96D4D is outsideownedbody and unchanged. PhysicalECX product plus
   FULLUInt32 presetID stackword, RET4; FULL EAX ordinal orFFFFFFFF. TEST00800000 selects custombank
   (bit23, NOTsignbit80000000). Bitclear searches full authored IDs at row+4,8-byte stride,
   firstmatch ordinal; bitset acquires product+8 collection allowCreate0, finds kind5 FULLID
   via60A290, returns authoredCount+customOrdinal orFFFFFFFF; releases collection on relevant paths.
   ID is not alreadyordinal,notUInt16/low24 masked. Preserves native wrap/sentinel arithmetic
   without establishing unsafe input behavior for host. Complete native custom collection
   service/lifetime remains a separate owner. */

uint __thiscall StairProduct_ResolveFullPresetIdToOrdinal(void *this,uint fullPresetId)

{
  void *this_00;
  int iVar1;
  uint uVar2;
  void *productKey;
  uint *puVar3;
  uint uVar4;
  void **outCollection;
  bool allowCreate;
  
  uVar2 = fullPresetId;
  uVar4 = *(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8) >> 3;
                    /* Bit23 custom selector 00800000; compare full supplied ID within chosen bank.
                        */
  if ((fullPresetId & 0x800000) == 0) {
    uVar2 = 0;
    if (uVar4 != 0) {
      puVar3 = (uint *)(*(int *)((int)this + 0xf8) + 4);
      do {
        if (*puVar3 == fullPresetId) {
          return uVar2;
        }
        uVar2 = uVar2 + 1;
        puVar3 = puVar3 + 2;
      } while (uVar2 < uVar4);
    }
  }
  else {
    allowCreate = false;
    outCollection = (void **)&fullPresetId;
    productKey = (void *)((int)this + 8);
    fullPresetId = 0;
    this_00 = (void *)ProductPresets_GetGlobalOwner();
    ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
    if (fullPresetId != 0) {
      iVar1 = ProductPresetCollection_FindFullIdRow((void *)fullPresetId,5,uVar2);
      if (iVar1 != -1) {
        if (fullPresetId != 0) {
          (**(code **)(*(int *)fullPresetId + 4))();
        }
        return uVar4 + iVar1;
      }
      if (fullPresetId != 0) {
        (**(code **)(*(int *)fullPresetId + 4))();
        return 0xffffffff;
      }
    }
  }
  return 0xffffffff;
}

