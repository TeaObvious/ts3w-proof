/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall ordinal DWORD + output-reference pointer RET8, AL Boolean only. Ordinal below
   authored count returns retained preset pointer from8byte row and acquires it. Otherwise subtract
   authored count, query global kind4 collection without creation, fetch row by ordinal,
   initialize/parse a new60hex-byte ObjectPreset from its XML, then transfer the reference through
   output; missing/parse failure returns AL0 with releases. This is original authored/custom
   selection, separate from host CFEN-only read/cache. */

bool __thiscall FenceProduct_AcquirePresetByOrdinal(void *this,uint ordinal,undefined *presetOutput)

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
  
  if (ordinal < (uint)(*(int *)((int)this + 0x168) - *(int *)((int)this + 0x164) >> 3)) {
    puVar2 = *(undefined4 **)(*(int *)((int)this + 0x164) + ordinal * 8);
    *(undefined4 **)presetOutput = puVar2;
    (**(code **)*puVar2)();
    return true;
  }
  allowCreate = false;
  outCollection = (void **)&ordinal;
  productKey = (void *)((int)this + 8);
  uVar4 = ordinal - (*(int *)((int)this + 0x168) - *(int *)((int)this + 0x164) >> 3);
  ordinal = 0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
  if (ordinal != 0) {
    puVar2 = (undefined4 *)ProductPresetCollection_GetRowByOrdinal((void *)ordinal,4,uVar4);
    if (puVar2 == (undefined4 *)0x0) {
      if (ordinal != 0) {
        (**(code **)(*(int *)ordinal + 4))();
      }
    }
    else {
      puVar3 = (undefined4 *)FUN_004e4500(0x60,"World/Catalog/ObjectPreset",0);
      if (puVar3 != (undefined4 *)0x0) {
        this_01 = (int *)DesignPreset_InitializeEmpty(puVar3);
        if (this_01 != (int *)0x0) {
          (**(code **)*this_01)();
          cVar1 = FUN_005c0060(this_01,(LPCWSTR)*puVar2);
          if (cVar1 != '\0') {
            *(int **)presetOutput = this_01;
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

