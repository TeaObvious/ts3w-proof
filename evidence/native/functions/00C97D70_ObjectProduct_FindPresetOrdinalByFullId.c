/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product,
   UInt32 fullID stack argument RET4. First scan authored8-byte entries+104..+108 comparingID
   atrow+4; first equal returns ordinal. On miss load existing extra collection viaB31830(create0).
   ID bit00800000 gates selector1 lookup60A290; return authoredCount+extraOrdinal, release
   collection, orFFFFFFFF. No truncation/high16-bit comparison; bit80000000 is not this gate. */

uint __thiscall ObjectProduct_FindPresetOrdinalByFullId(void *this,uint param_1)

{
  uint uVar1;
  uint uVar2;
  void *this_00;
  int iVar3;
  void *productKey;
  uint *puVar4;
  uint uVar5;
  void **outCollection;
  bool allowCreate;
  
  uVar1 = param_1;
  uVar5 = *(int *)((int)this + 0x108) - *(int *)((int)this + 0x104) >> 3;
  uVar2 = 0;
  if (uVar5 != 0) {
    puVar4 = (uint *)(*(int *)((int)this + 0x104) + 4);
    do {
      if (*puVar4 == param_1) {
        return uVar2;
      }
      uVar2 = uVar2 + 1;
      puVar4 = puVar4 + 2;
    } while (uVar2 < uVar5);
  }
  allowCreate = false;
  outCollection = (void **)&param_1;
  productKey = (void *)((int)this + 8);
  param_1 = 0;
  this_00 = (void *)ProductPresets_GetGlobalOwner();
  ProductPresets_AcquireCollection(this_00,productKey,outCollection,allowCreate);
                    /* Analyst: Only bit00800000 gates extra-ID lookup after authored miss. */
  if ((uVar1 & 0x800000) != 0) {
    if (param_1 == 0) {
      return 0xffffffff;
    }
                    /* Analyst: Selector1; full32-bit extra-ID equality, authored count added on
                       success. */
    iVar3 = ProductPresetCollection_FindFullIdRow((void *)param_1,1,uVar1);
    if (iVar3 != -1) {
      if (param_1 != 0) {
        (**(code **)(*(int *)param_1 + 4))();
      }
      return uVar5 + iVar3;
    }
  }
  if (param_1 != 0) {
    (**(code **)(*(int *)param_1 + 4))();
  }
  return 0xffffffff;
}

