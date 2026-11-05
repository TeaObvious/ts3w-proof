/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 static instruction evidence; analyst-assigned name. Physical thiscall ECX stair
   product, UInt32 ordinal on stack, RET4, full DWORD identifier in EAX. Unsigned ordinal below
   authoredCount=(endFC-beginF8)>>3 reads row8+4. Otherwise subtract authoredCount, acquire existing
   product+8 collection allowCreate0, select kind5 row at adjusted ordinal and read DWORD+10hex.
   Missing collection/row returns0. Release acquired collection on success and failure; ordinal and
   identifier remain separate full UInt32 values. */

undefined4 __thiscall StairProduct_GetPresetIdentifier(void *this,uint param_1)

{
  undefined4 uVar1;
  void *this_00;
  int iVar2;
  void *productKey;
  uint uVar3;
  void **outCollection;
  bool allowCreate;
  
  if (param_1 < (uint)(*(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8) >> 3)) {
    return *(undefined4 *)(*(int *)((int)this + 0xf8) + 4 + param_1 * 8);
  }
  allowCreate = false;
  outCollection = (void **)&param_1;
  productKey = (void *)((int)this + 8);
  uVar3 = param_1 - (*(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8) >> 3);
  param_1 = 0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (param_1 != 0) {
    iVar2 = ProductPresetCollection_GetRowByOrdinal((void *)param_1,5,uVar3);
    if (iVar2 != 0) {
      uVar1 = *(undefined4 *)(iVar2 + 0x10);
      if (param_1 != 0) {
        (**(code **)(*(int *)param_1 + 4))();
      }
      return uVar1;
    }
    if (param_1 != 0) {
      (**(code **)(*(int *)param_1 + 4))();
    }
  }
  return 0;
}

