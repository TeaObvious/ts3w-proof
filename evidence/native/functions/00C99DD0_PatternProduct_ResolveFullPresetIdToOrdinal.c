/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 static instruction evidence; analyst-assigned name. Physical thiscall ECX pattern
   product, full UInt32 ID on stack, RET4, EAX ordinal or FFFFFFFF. Authored20-byte rows at C0..C4
   use full ID at +4; only IDs with bit00800000 clear scan authored rows, first match wins. IDs with
   that bit set acquire existing product+8 collection with allowCreate0 and select kind2; a match
   returns authoredCount+customOrdinal. Missing returns FFFFFFFF. The retained collection is
   released on all acquired exits. No low24 masking, sign-bit gate or object-product
   scan-before-gate behavior is established. */

uint __thiscall PatternProduct_ResolveFullPresetIdToOrdinal(void *this,uint param_1)

{
  uint uVar1;
  void *this_00;
  int iVar2;
  uint uVar3;
  void *productKey;
  uint *puVar4;
  void **outCollection;
  bool allowCreate;
  
  uVar3 = param_1;
  uVar1 = (*(int *)((int)this + 0xc4) - *(int *)((int)this + 0xc0)) / 0x14;
  if ((param_1 & 0x800000) == 0) {
    uVar3 = 0;
    if (uVar1 != 0) {
      puVar4 = (uint *)(*(int *)((int)this + 0xc0) + 4);
      do {
        if (*puVar4 == param_1) {
          return uVar3;
        }
        uVar3 = uVar3 + 1;
        puVar4 = puVar4 + 5;
      } while (uVar3 < uVar1);
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
      iVar2 = ProductPresetCollection_FindFullIdRow((void *)param_1,2,uVar3);
      if (iVar2 != -1) {
        if (param_1 != 0) {
          (**(code **)(*(int *)param_1 + 4))();
        }
        return uVar1 + iVar2;
      }
      if (param_1 != 0) {
        (**(code **)(*(int *)param_1 + 4))();
        return 0xffffffff;
      }
    }
  }
  return 0xffffffff;
}

