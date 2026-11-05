/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 bound resource query: cdecl3stackwords
   keypointer,output8Float32(aligned2Float4),auxDWORDpointer/plainRET lowALBoolean. Provider
   virtual0C gets key/outputresource/0/0/0/0 withECXprovider; success queries interfaceB7B8BAAF
   thenretains via virtual0. Readsview+38/+3C/+40 into minXYZ/minX fourthlane, +44/+48/+4C into
   maxXYZ/maxX fourthlane, auxDWORD+60; releasesview/resource. No hostvertex AABBfallback. Provider
   absence/failure returnsfalse withoutwritingcalleroutput. Provider success
   withmissingtypedinterface followsunsafe native dereference, not graceful invalid-block behavior.
   Rawresource parser/version/file priority is NOT implementedbythisleaf; sharedloader remains
   separate. */

bool __cdecl ModelBounds_QueryAuthoredProxy(void *key,float *bounds8Floats,dword *auxWord)

{
  float fVar1;
  float fVar2;
  float fVar3;
  char cVar4;
  int *piVar5;
  int *piVar6;
  int *local_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_24 = (int *)0x0;
  piVar5 = (int *)FUN_004afe80();
  piVar6 = local_24;
  if (piVar5 != (int *)0x0) {
    if (local_24 != (int *)0x0) {
      local_24 = (int *)0x0;
      (**(code **)(*piVar6 + 4))();
    }
    cVar4 = (**(code **)(*piVar5 + 0xc))(key,&local_24,0,0,0,0);
    if (cVar4 != '\0') {
      if (local_24 == (int *)0x0) {
        piVar6 = (int *)0x0;
      }
      else {
        piVar6 = (int *)(**(code **)(*local_24 + 0xc))(0xb7b8baaf);
        if (piVar6 != (int *)0x0) {
          (**(code **)*piVar6)();
        }
      }
      fVar1 = (float)piVar6[0x10];
      fVar2 = (float)piVar6[0xe];
      fVar3 = (float)piVar6[0xf];
      *bounds8Floats = fVar2;
      bounds8Floats[1] = fVar3;
      bounds8Floats[2] = fVar1;
      bounds8Floats[3] = fVar2;
      fStack_18 = (float)piVar6[0x13];
      fStack_20 = (float)piVar6[0x11];
      fStack_1c = (float)piVar6[0x12];
      bounds8Floats[4] = fStack_20;
      bounds8Floats[5] = fStack_1c;
      bounds8Floats[6] = fStack_18;
      bounds8Floats[7] = fStack_20;
      *auxWord = piVar6[0x18];
      fStack_14 = fStack_20;
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))();
      }
      if (local_24 != (int *)0x0) {
        (**(code **)(*local_24 + 4))();
      }
      return true;
    }
  }
  if (local_24 != (int *)0x0) {
    (**(code **)(*local_24 + 4))();
  }
  return false;
}

