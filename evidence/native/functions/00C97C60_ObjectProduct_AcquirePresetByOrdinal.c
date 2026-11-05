/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product,
   UInt32 ordinal and out-preset pointer RET8, ALboolean. In authored range return retained preset
   pointer from8-byte row. Extra ordinal subtracts authoredCount, loads existingB31830(create0),
   selector1 row via60A2F0, allocates native preset and parses row text via5C0060, releasing
   temporary collection and failed preset. Missing/parsefail returnsAL0. This native extra
   materialization is outside current authored-only portable preset projection. */

bool __thiscall ObjectProduct_AcquirePresetByOrdinal(void *this,uint ordinal,void **outPreset)

{
  char cVar1;
  void *this_00;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int *this_01;
  void *productKey;
  uint uVar4;
  void **outCollection;
  bool allowCreate;
  
  if (ordinal < (uint)(*(int *)((int)this + 0x108) - *(int *)((int)this + 0x104) >> 3)) {
    puVar2 = *(undefined4 **)(*(int *)((int)this + 0x104) + ordinal * 8);
    *outPreset = puVar2;
    (**(code **)*puVar2)();
    return true;
  }
  allowCreate = false;
  outCollection = (void **)&ordinal;
  productKey = (void *)((int)this + 8);
  uVar4 = ordinal - (*(int *)((int)this + 0x108) - *(int *)((int)this + 0x104) >> 3);
  ordinal = 0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (ordinal != 0) {
    puVar2 = (undefined4 *)ProductPresetCollection_GetRowByOrdinal((void *)ordinal,1,uVar4);
    if (puVar2 == (undefined4 *)0x0) {
      if (ordinal != 0) {
        (**(code **)(*(int *)ordinal + 4))();
      }
    }
    else {
      puVar3 = (undefined4 *)FUN_004e4500(0x60,"World/Catalog/ObjectPreset",0);
      if (puVar3 != (undefined4 *)0x0) {
        this_01 = (int *)FUN_005bfac0(puVar3);
        if (this_01 != (int *)0x0) {
          (**(code **)*this_01)();
          cVar1 = FUN_005c0060(this_01,(LPCWSTR)*puVar2);
          if (cVar1 != '\0') {
            *outPreset = this_01;
            if (ordinal != 0) {
              (**(code **)(*(int *)ordinal + 4))();
            }
            return true;
          }
          (**(code **)(*this_01 + 4))();
        }
      }
      if (ordinal != 0) {
        (**(code **)(*(int *)ordinal + 4))();
        return false;
      }
    }
  }
  return false;
}

