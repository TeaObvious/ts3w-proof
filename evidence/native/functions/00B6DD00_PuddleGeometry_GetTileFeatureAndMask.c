/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 recoveredcomplete41bytebody B6DD00..28, ECXpuddlegeometry +packedcell/ushortoutput RET8
   ALbool. Geometry+29C -> renderer owner; owner+258 floorfeaturequery nullable. Present
   callsA80F30(cell,flags1,maskOutput), missingreturnsAL0. Puddlevtable106FB50+98hex=106FBE8
   rawDWORD00B6DD00 verified. This is the actual virtual98 called byA7E2B0, not an assumption from
   function names. */

bool __thiscall PuddleGeometry_GetTileFeatureAndMask(void *this,char *cell,ushort *maskOutput)

{
  void *this_00;
  bool bVar1;
  
  this_00 = *(void **)(*(int *)((int)this + 0x29c) + 600);
  if (this_00 != (void *)0x0) {
    bVar1 = FloorFeatureRenderState_QueryTile(this_00,cell,1,maskOutput);
    return bVar1;
  }
  return false;
}

