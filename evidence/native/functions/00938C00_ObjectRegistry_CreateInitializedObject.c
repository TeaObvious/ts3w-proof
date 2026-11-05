/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Selects unused requested GUID; expands mask using resource;
   allocates packed components; temporary retain; initialization+event0; attach+event4 on success.
   Failure dispatches event6 and releases temporary object. ECX registry; stack resource, mask,
   source-key pointer, full 64-bit requested GUID; RET0x14. */

void * __thiscall
ObjectRegistry_CreateInitializedObject
          (void *this,void *resource,uint baseMask,uint *sourceKeyWords,ulonglong requestedGuid)

{
  int *piVar1;
  int iVar2;
  void *resource_00;
  bool bVar3;
  uint componentMask;
  undefined4 *this_00;
  ulonglong guid;
  
  guid = ObjectRegistry_SelectUnusedGuid(this,requestedGuid);
  resource_00 = resource;
  if (guid != 0) {
    componentMask = Object_ExpandComponentMask(baseMask,resource);
    this_00 = Object_AllocateComponentStorage(guid,componentMask,sourceKeyWords);
    if (this_00 != (undefined4 *)0x0) {
      piVar1 = this_00 + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      resource = this_00;
      bVar3 = Object_InitializeComponents(this_00,resource_00);
      if (bVar3) {
        ObjectRegistry_AttachObject(this,this_00);
        FUN_007462e0((int *)&resource);
        return this_00;
      }
      ObjectEvents_Dispatch(6,this_00,(void *)0x0);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*this_00)(1);
      }
    }
  }
  return (void *)0x0;
}

