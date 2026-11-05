/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Original RET0xc and caller PUSH(index),PUSH(guidHi),PUSH(guidLo) establish three
   args. Finds full64-bit object, queries render component type0x017f1d88, and stores sortIndex+1
   via SetRugLayerOrdinal. Input order is not GUID highword plus1; prior decompiler prototype
   omitted index.
   
   PC1.67 original static instructions. Rug closure: physicalECXreceiver+3stackDWORDs
   GUIDlo/GUIDhi/layer, RET0C. Resolve rendercomponent then set UInt32ordinal=layer+1. This is a
   render ordinal; physical world pose is not relocated by this notification. */

bool __thiscall
RenderObject_ApplyRugSortNotification(void *this,uint objectGuidLo,uint objectGuidHi,uint sortIndex)

{
  int *this_00;
  void *this_01;
  uint local_8;
  uint local_4;
  
  local_8 = objectGuidLo;
  local_4 = objectGuidHi;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&objectGuidLo,(byte *)&local_8);
  if (((objectGuidLo != *(uint *)((int)this + 0x1028)) && (objectGuidLo != 0)) &&
     (this_00 = (int *)(objectGuidLo - 8), this_00 != (int *)0x0)) {
    this_01 = (**(code **)(*this_00 + 0xc))(this_00,0x17f1d88);
    if (this_01 != (void *)0x0) {
      RenderComponent_SetRugLayerOrdinal(this_01,sortIndex + 1);
    }
    return true;
  }
  return false;
}

