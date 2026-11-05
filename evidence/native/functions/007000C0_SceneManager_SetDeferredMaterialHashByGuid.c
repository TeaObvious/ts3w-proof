/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX manager, UInt64 GUID and UInt32 materialHash, RET0C, AL.
   Requires typed scene model. Searches full GUID in manager+110C tree; absent node delegates
   immediate700020, present node stores hash atnode+2C. No geometry state reset. Complete tree
   lifetime/consumer ordering is a separate dependency. */

bool __thiscall
SceneManager_SetDeferredMaterialHashByGuid(void *this,ulonglong objectGuid,uint materialHash)

{
  int *this_00;
  ulonglong objectGuid_00;
  bool bVar1;
  void *pvVar2;
  ulonglong local_10;
  int local_8 [2];
  
  objectGuid_00 = objectGuid;
  local_10 = objectGuid;
  RenderGuidMap_FindIterator((void *)((int)this + 4),local_8,(byte *)&local_10);
  if (((local_8[0] != *(int *)((int)this + 0x1028)) && (local_8[0] != 0)) &&
     (this_00 = (int *)(local_8[0] + -8), this_00 != (int *)0x0)) {
    pvVar2 = (**(code **)(*this_00 + 0xc))(this_00,0x17f1d88);
    if (pvVar2 != (void *)0x0) {
      LotRoomSeedTree_FindGuidNode((void *)((int)this + 0x110c),&local_10,&objectGuid);
      if ((int)local_10 == (int)this + 0x1110) {
        bVar1 = SceneManager_SetMaterialHashByGuid(this,objectGuid_00,materialHash);
        return bVar1;
      }
      *(uint *)((int)local_10 + 0x2c) = materialHash;
      return true;
    }
  }
  return false;
}

