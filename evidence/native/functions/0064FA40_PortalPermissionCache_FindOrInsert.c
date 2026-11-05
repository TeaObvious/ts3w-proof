/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC1.67. Hash mixes GUIDlo/hi andrawroom16pair; unsigned DIV buckets;
   findorinsert returns iteratorpair andinsertedbyte. Original __aullshr uses EDX:EAX value andCL
   count32; displayedstackprototype is a decompilerartifact. */

void * __thiscall PortalPermissionCache_FindOrInsert(void *this,void *outIterator,void *key)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  void *pvVar4;
  int iVar5;
  uint uVar6;
  uint unusedHash;
  ulonglong uVar7;
  char local_8 [4];
  uint local_4;
  
  uVar7 = __aullshr(0x20,*(uint *)((int)key + 4));
  unusedHash = (uint)uVar7 ^ (uint)*(ushort *)((int)key + 10) ^ (uint)*(ushort *)((int)key + 8) ^
               *(uint *)key;
  uVar6 = unusedHash % *(uint *)((int)this + 0x24);
  puVar1 = (undefined4 *)(*(int *)((int)this + 0x20) + uVar6 * 4);
  pvVar4 = PortalPermissionCache_FindObjectRoomKey((void *)*puVar1,key,unusedHash);
  if (pvVar4 == (void *)0x0) {
    FUN_004e0ec0((void *)((int)this + 0x2c),local_8,*(int *)((int)this + 0x24),
                 *(float *)((int)this + 0x28),1.4013e-45);
    iVar5 = FUN_0064f700(this,key);
    if (local_8[0] != '\0') {
      uVar6 = unusedHash % local_4;
      FUN_0064f8e0(this,local_4);
    }
    iVar2 = uVar6 * 4;
    *(undefined4 *)(iVar5 + 0x18) = *(undefined4 *)(iVar2 + *(int *)((int)this + 0x20));
    *(int *)(iVar2 + *(int *)((int)this + 0x20)) = iVar5;
    *(int *)((int)this + 0x28) = *(int *)((int)this + 0x28) + 1;
    iVar3 = *(int *)((int)this + 0x20);
    *(int *)outIterator = iVar5;
    *(int *)((int)outIterator + 4) = iVar3 + iVar2;
    *(undefined1 *)((int)outIterator + 8) = 1;
    return outIterator;
  }
  *(void **)outIterator = pvVar4;
  *(undefined4 **)((int)outIterator + 4) = puVar1;
  *(undefined1 *)((int)outIterator + 8) = 0;
  return outIterator;
}

