/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl six words. Reads mutable global floor-rule mask and
   clears bit17, opens elevation undo and selects rectangle/diamond vertex iterator; calls C9D8C0
   for each. Completes elevation update and appends undo object. Null allocation behavior is not a
   safe malformed-input contract. */

void __cdecl
BasementExcavation_ApplyVertexHeights
          (undefined4 *param_1,char param_2,char *param_3,char *param_4,float param_5,void *param_6)

{
  int iVar1;
  bool bVar2;
  void *this;
  int *piVar3;
  char *pcVar4;
  uint local_10;
  undefined1 auStack_c [12];
  
  local_10 = DAT_011877fc & 0xfffdffff;
  this = (void *)FUN_004e4500(0xb0,"UserTool/BasementPlacementHelper/UndoableFloorElevation",0);
  if (this == (void *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = FUN_00d21810(this,param_1);
    if (piVar3 != (int *)0x0) {
      piVar3[1] = piVar3[1] + 1;
    }
  }
  (**(code **)(*piVar3 + 4))();
  iVar1 = param_1[0xa4];
  FUN_00a8ad70(iVar1);
  if (param_2 == '\0') {
    FUN_00af6590(auStack_c,param_3,param_4);
    bVar2 = TilePartRectangleIterator_IsDone((int)auStack_c);
    while (!bVar2) {
      pcVar4 = (char *)TilePartRectangleIterator_Current((int)auStack_c);
      BasementExcavation_ApplyOneVertex(param_1,pcVar4,param_5,&local_10,piVar3);
      FUN_00af6610(auStack_c);
      bVar2 = TilePartRectangleIterator_IsDone((int)auStack_c);
    }
  }
  else {
    FUN_00af7110(auStack_c,param_3,param_4);
    bVar2 = FUN_00af69a0((int)auStack_c);
    while (!bVar2) {
      pcVar4 = (char *)FUN_005455f0((int)auStack_c);
      BasementExcavation_ApplyOneVertex(param_1,pcVar4,param_5,&local_10,piVar3);
      FUN_00af6f70(auStack_c);
      bVar2 = FUN_00af69a0((int)auStack_c);
    }
  }
  FUN_00a8ee10(iVar1);
  FUN_00d1b190(param_6,piVar3);
  iVar1 = piVar3[1];
  piVar3[1] = iVar1 + -1;
  if (iVar1 + -1 == 0) {
    piVar3[1] = 1;
    (**(code **)*piVar3)(1);
  }
  return;
}

