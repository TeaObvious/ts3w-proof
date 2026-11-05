/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXcatalog plus full uint tool ID, RET4, full EAX borrowed product pointer or0. Sorted
   DWORD-key/retained-product pairs at catalog188..18C, eight-byte stride; no nearest tool fallback.
    */

undefined * __thiscall CatalogToolProxies_FindByToolType(void *this,uint toolType)

{
  uint *puVar1;
  uint uVar2;
  uint *puVar3;
  
  uVar2 = toolType;
  puVar1 = *(uint **)((int)this + 0x18c);
  puVar3 = (uint *)FUN_005b7cf0(*(int *)((int)this + 0x188),(int)puVar1,&toolType);
  if (((puVar3 == puVar1) || (uVar2 < *puVar3)) || (puVar3 == puVar3 + 2)) {
    puVar3 = puVar1;
  }
  if (puVar3 != puVar1) {
    return (undefined *)puVar3[1];
  }
  return (undefined *)0x0;
}

