/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. cdecl inputs: full 64-bit GUID, mask, pointer to four-word
   source key. Header minimum 0x38 plus 4*(popcount(mask)-1) when count>1. Each descriptor+20
   alignment/+1c size participates in total allocation; components constructed via descriptor+0c in
   ascending bit order. Null callback result leaves packed pointerNULL; output object refcount
   starts0. Decompiler artifact: indirect allocator purge is not decoded; unaff_ESI/EBP and
   this[0..3] are not literal input fields. Original stores934dac..934de5 copy GUID at stack4/8,
   sourceKeyWords and mask. */

void * __cdecl
Object_AllocateComponentStorage(ulonglong guid,uint componentMask,uint *sourceKeyWords)

{
  uint uVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  undefined4 *this;
  void *pvVar5;
  int *piVar6;
  undefined4 *puVar7;
  void *pvVar8;
  int iVar9;
  int unaff_EBX;
  undefined4 unaff_EBP;
  undefined4 unaff_ESI;
  uint uVar10;
  uint *puVar11;
  
  uVar3 = componentMask - (componentMask >> 1 & 0x55555555);
  uVar3 = (uVar3 >> 2 & 0x33333333) + (uVar3 & 0x33333333);
  uVar3 = ((uVar3 >> 4) + uVar3 & 0xf0f0f0f) * 0x1010101 >> 0x18;
  if (uVar3 < 2) {
    iVar4 = 0;
  }
  else {
    iVar4 = uVar3 - 1;
  }
  iVar4 = iVar4 * 4 + 0x38;
  uVar3 = 8;
  this = ObjectRegistry_GetGlobal();
  for (uVar10 = componentMask; uVar10 != 0; uVar10 = uVar10 & uVar10 - 1) {
    pvVar5 = ObjectRegistry_GetDescriptorForMask(this,-uVar10 & uVar10);
    if (pvVar5 != (void *)0x0) {
      uVar1 = *(uint *)((int)pvVar5 + 0x20);
      iVar4 = ((uVar1 - 1) + iVar4 & ~(uVar1 - 1)) + *(int *)((int)pvVar5 + 0x1c);
      if (uVar3 < uVar1) {
        uVar3 = uVar1;
      }
    }
  }
  piVar6 = (int *)FUN_00937420((int)this);
  pvVar5 = (void *)0x0;
  puVar7 = (undefined4 *)(**(code **)(*piVar6 + 4))(iVar4,"Objects/Object",0,uVar3);
  if (puVar7 == (undefined4 *)0x0) {
    return (void *)0x0;
  }
  *puVar7 = &PTR_FUN_0102bba4;
  LOCK();
  puVar7[1] = 0;
  UNLOCK();
  puVar7[2] = unaff_ESI;
  puVar7[3] = unaff_EBP;
  *puVar7 = &PTR_FUN_01043cc0;
  puVar7[6] = *this;
  puVar7[7] = this[1];
  puVar7[8] = this[2];
  uVar2 = this[3];
  puVar7[10] = 0;
  puVar7[0xc] = 0;
  puVar7[9] = uVar2;
  puVar7[0xb] = componentMask;
  iVar4 = (int)puVar7 + unaff_EBX;
  if (componentMask != 0) {
    puVar11 = puVar7 + 0xd;
    do {
      *puVar11 = 0;
      pvVar8 = ObjectRegistry_GetDescriptorForMask(pvVar5,-componentMask & componentMask);
      if (pvVar8 != (void *)0x0) {
        uVar3 = *(int *)((int)pvVar8 + 0x20) + -1 + iVar4 & ~(*(int *)((int)pvVar8 + 0x20) - 1U);
        iVar4 = uVar3 + *(int *)((int)pvVar8 + 0x1c);
        iVar9 = (**(code **)((int)pvVar8 + 0xc))(uVar3,puVar7);
        if (iVar9 != 0) {
          *puVar11 = uVar3;
        }
      }
      puVar11 = puVar11 + 1;
      componentMask = componentMask & componentMask - 1;
    } while (componentMask != 0);
  }
  return puVar7;
}

