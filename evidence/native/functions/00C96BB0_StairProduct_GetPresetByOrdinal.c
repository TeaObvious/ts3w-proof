/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 COMPLETE269-byte existingbody, ECX product plusUInt32ordinal/outputpointer,
   all4exits RET8; ONLYAL is normalized Boolean0/1, upperEAX varies through virtual/allocator calls.
   Unsigned ordinal<authoredCount loads row's retained preset pointer at beginF8+ordinal*8, stores
   output and AddRefs through vtable0. Otherwise subtractauthoredCount, acquire product+8 collection
   allowCreate0, retrieve kind5 customrow via60A2F0; allocate0x60 preset, initialize5BFAC0, retain,
   parse rowXML via5C0060, outputonlyon success. Release failed/new and acquiredcollection
   references on actual paths; missingrow/allocation/XMLfailure clearsAL. Caller must not read
   output onfailure. Full allocator/XML/parser/managed Metadata behavior is not recreated by a host
   authored cache. No skipped authoredrow/defaultfallback in this function. */

bool __thiscall StairProduct_GetPresetByOrdinal(void *this,uint ordinal,undefined *outputPreset)

{
  char cVar1;
  void *pvVar2;
  undefined4 *puVar3;
  int *this_00;
  void *productKey;
  uint uVar4;
  void **outCollection;
  bool allowCreate;
  
  if (ordinal < (uint)(*(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8) >> 3)) {
    puVar3 = *(undefined4 **)(*(int *)((int)this + 0xf8) + ordinal * 8);
    *(undefined4 **)outputPreset = puVar3;
    (**(code **)*puVar3)();
                    /* Only AL=1 is normalized; virtual AddRef residue may remain in upperEAX. */
    return true;
  }
  allowCreate = false;
  outCollection = (void **)&ordinal;
  productKey = (void *)((int)this + 8);
  uVar4 = ordinal - (*(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8) >> 3);
  ordinal = 0;
  pvVar2 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(pvVar2,productKey,outCollection,allowCreate);
  if (ordinal != 0) {
    puVar3 = (undefined4 *)ProductPresetCollection_GetRowByOrdinal((void *)ordinal,5,uVar4);
    if (puVar3 == (undefined4 *)0x0) {
      if (ordinal != 0) {
        (**(code **)(*(int *)ordinal + 4))();
      }
    }
    else {
      pvVar2 = (void *)FUN_004e4500(0x60,"World/Catalog/ObjectPreset",0);
      if (pvVar2 != (void *)0x0) {
        this_00 = (int *)DesignPreset_InitializeEmpty(pvVar2);
        if (this_00 != (int *)0x0) {
          (**(code **)*this_00)();
          cVar1 = FUN_005c0060(this_00,(LPCWSTR)*puVar3);
          if (cVar1 != '\0') {
            *(int **)outputPreset = this_00;
            if (ordinal != 0) {
              (**(code **)(*(int *)ordinal + 4))();
            }
            return true;
          }
          (**(code **)(*this_00 + 4))();
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

