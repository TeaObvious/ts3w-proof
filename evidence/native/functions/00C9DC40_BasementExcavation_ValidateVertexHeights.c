/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl six words; low AL bool. Global floor mask at11877FC
   initially001F97B7, AND FFFDFFFF clears bit17. Rectangle or diamond vertex iteration; stops at
   first C9D780 false. Complete original body ends C9DD42. */

bool __cdecl
BasementExcavation_ValidateVertexHeights
          (void *param_1,char param_2,char *param_3,char *param_4,float param_5,void *param_6)

{
  bool bVar1;
  char *pcVar2;
  uint local_10;
  undefined1 local_c [12];
  
  local_10 = DAT_011877fc & 0xfffdffff;
  if (param_2 == '\0') {
    FUN_00af6590(local_c,param_3,param_4);
    bVar1 = TilePartRectangleIterator_IsDone((int)local_c);
    if (!bVar1) {
      do {
        pcVar2 = (char *)TilePartRectangleIterator_Current((int)local_c);
        bVar1 = BasementExcavation_ValidateOneVertex(param_1,pcVar2,param_5,&local_10,param_6);
        if (!bVar1) {
          return false;
        }
        FUN_00af6610(local_c);
        bVar1 = TilePartRectangleIterator_IsDone((int)local_c);
      } while (!bVar1);
      return true;
    }
  }
  else {
    FUN_00af7110(local_c,param_3,param_4);
    bVar1 = FUN_00af69a0((int)local_c);
    while (!bVar1) {
      pcVar2 = (char *)FUN_005455f0((int)local_c);
      bVar1 = BasementExcavation_ValidateOneVertex(param_1,pcVar2,param_5,&local_10,param_6);
      if (!bVar1) {
        return false;
      }
      FUN_00af6f70(local_c);
      bVar1 = FUN_00af69a0((int)local_c);
    }
  }
  return true;
}

