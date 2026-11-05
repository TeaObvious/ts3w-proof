/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXsorted retained-product map plus pointer to full uint key RET4. Finds/inserts key in
   unsigned sorted eight-byte pairs and returns address of product pointer slot.
   CatalogToolProxies_Reload replaces this slot after successful04AC5D9E query. Insertion is not
   first-wins policy. */

undefined * __thiscall CatalogProductMap_GetOrInsertSlot(void *this,uint *toolType)

{
  uint *puVar1;
  uint *puVar2;
  uint *puVar3;
  int iVar4;
  uint local_10;
  int *local_c;
  int local_8 [2];
  
  puVar1 = *(uint **)((int)this + 4);
  puVar2 = *(uint **)this;
  puVar3 = (uint *)FUN_005b7cf0((int)puVar2,(int)puVar1,toolType);
  if ((puVar3 != puVar1) && (*puVar3 <= *toolType)) {
    return (undefined *)(puVar3 + 1);
  }
  local_10 = *toolType;
  local_c = (int *)0x0;
  if (((puVar3 == puVar1) || (local_10 < *puVar3)) &&
     ((puVar3 == puVar2 || (puVar3[-2] < local_10)))) {
    iVar4 = FUN_00c8f5c0(this,puVar3,&local_10);
  }
  else {
    FUN_00c8fba0(this,local_8,&local_10);
    iVar4 = local_8[0];
  }
  if (local_c != (int *)0x0) {
    (**(code **)(*local_c + 4))();
  }
  return (undefined *)(iVar4 + 4);
}

