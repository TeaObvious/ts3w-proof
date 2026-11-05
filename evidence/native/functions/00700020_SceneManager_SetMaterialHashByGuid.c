/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX scene manager; full UInt64 GUID and UInt32 materialHash,
   RET0C, success only AL. Missing map/end/adjusted-null/type017F1D88 returns false. Writes
   SceneModel+264 (binding owner+54), +26C=1. Flag SceneModel+29C bit1 selects immediate6DCC00;
   otherwise +26D=1 defers rebinding. Both success paths queue dirty once. Does NOT write geometry
   hash+2A4 or mesh ranges. The material hash is read from physical entryESP+C. */

bool __thiscall
SceneManager_SetMaterialHashByGuid(void *this,ulonglong objectGuid,uint materialHash)

{
  int *this_00;
  void *pvVar1;
  ulonglong local_8;
  
  local_8 = objectGuid;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&objectGuid,(byte *)&local_8);
  if ((((int)objectGuid != *(int *)((int)this + 0x1028)) && ((int)objectGuid != 0)) &&
     (this_00 = (int *)((int)objectGuid + -8), this_00 != (int *)0x0)) {
    pvVar1 = (**(code **)(*this_00 + 0xc))(this_00,0x17f1d88);
    if (pvVar1 != (void *)0x0) {
                    /* SceneModel+264 material hash. Independent geometry state is SceneModel+2A4.
                        */
      *(uint *)((int)pvVar1 + 0x264) = materialHash;
      *(undefined1 *)((int)pvVar1 + 0x26c) = 1;
      if ((*(byte *)((int)pvVar1 + 0x29c) & 1) == 0) {
        *(undefined1 *)((int)pvVar1 + 0x26d) = 1;
        SceneObject_QueueDirtyOnce((int)pvVar1);
        return true;
      }
      ModelBinding_ApplyMaterialToAvailableLod((void *)((int)pvVar1 + 0x210));
      SceneObject_QueueDirtyOnce((int)pvVar1);
      return true;
    }
  }
  return false;
}

