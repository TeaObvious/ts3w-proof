/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXmanager + uint32 groupID/vector pointer RET8, ALtrue. Deep copies input then unique
   insertionA76430; an existing key keeps original vector. It neither generates a fresh key nor
   probes collisions; zero key is admitted. Temporaries released. Caller may keep separate undo data
   for requested objects. */

bool __thiscall FireplaceGroups_AddIfAbsent(void *this,uint groupId,undefined *objectIds)

{
  size_t sVar1;
  int iVar2;
  uint local_28;
  void *local_24;
  void *local_20;
  undefined4 local_18;
  uint local_14;
  void *local_10;
  void *local_c;
  
  local_28 = groupId;
  FUN_006d8880(&local_24,*(int *)(objectIds + 4) - *(int *)objectIds >> 3,
               (undefined4 *)(objectIds + 0xc));
  sVar1 = *(int *)(objectIds + 4) - (int)*(void **)objectIds;
  local_20 = memmove(local_24,*(void **)objectIds,sVar1);
  local_20 = (void *)((int)local_20 + ((int)sVar1 >> 3) * 8);
  sVar1 = (int)local_20 - (int)local_24;
  iVar2 = (int)sVar1 >> 3;
  local_14 = local_28;
  FUN_006d8880(&local_10,iVar2,&local_18);
  local_c = memmove(local_10,local_24,sVar1);
  local_c = (void *)((int)local_c + iVar2 * 8);
  groupId = groupId & 0xffffff00;
  FireplaceGroups_InsertIfAbsent
            ((void *)((int)this + 4),(undefined *)&local_28,(undefined *)&local_14,groupId);
  if (local_10 != (void *)0x0) {
    Memory_FreeIfNonNull(local_10);
  }
  if (local_24 != (void *)0x0) {
    Memory_FreeIfNonNull(local_24);
  }
  return true;
}

