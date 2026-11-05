/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst name. Physical thiscall ECXproduct, UInt32ordinal
   stack4/RET4/EAXfullUInt32 ID. Same authored-versus-installed
   bounds/subtraction/acquisition/release as C99BD0. Authored20-byte row field+4; installedtype2 row
   field+10hex. Missing installedcollection/row returns0. Does not narrow to16bits, mask24bits or
   convert to signed semantic presetindex. Actual managed WrapPresetList/BuildBuyPreset retain
   fullUInt32; only separate thumbnail-key consumer maskslow24. */

uint __thiscall PatternProduct_GetPresetIdentifier(void *this,uint ordinal)

{
  void *this_00;
  void *productKey;
  int iVar1;
  uint uVar2;
  void **outCollection;
  bool allowCreate;
  
  if (ordinal < (uint)((*(int *)((int)this + 0xc4) - *(int *)((int)this + 0xc0)) / 0x14)) {
    return *(uint *)(*(int *)((int)this + 0xc0) + 4 + ordinal * 0x14);
  }
  iVar1 = (int)((ulonglong)
                ((longlong)(*(int *)((int)this + 0xc4) - *(int *)((int)this + 0xc0)) * -0x66666667)
               >> 0x20);
  allowCreate = false;
  outCollection = (void **)&ordinal;
  productKey = (void *)((int)this + 8);
  uVar2 = ordinal + ((iVar1 >> 3) - (iVar1 >> 0x1f));
  ordinal = 0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (ordinal != 0) {
    iVar1 = ProductPresetCollection_GetRowByOrdinal((void *)ordinal,2,uVar2);
    if (iVar1 != 0) {
      uVar2 = *(uint *)(iVar1 + 0x10);
      if (ordinal != 0) {
        (**(code **)(*(int *)ordinal + 4))();
      }
      return uVar2;
    }
    if (ordinal != 0) {
      (**(code **)(*(int *)ordinal + 4))();
    }
  }
  return 0;
}

