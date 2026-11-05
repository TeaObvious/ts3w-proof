/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl six words, low AL bool. Rectangle min corners to max-1,
   or diamond iterator; invokes C9D2F0 tile-by-tile and stops at first false. Error collection for
   one tile can include several causes. Create/removal state is low byte of a word. */

bool __cdecl
BasementRegion_ValidateTileObstructions
          (void *param_1,undefined4 param_2,undefined4 param_3,char *param_4,char *param_5,
          void *param_6)

{
  char *pcVar1;
  undefined4 uVar2;
  void *pvVar3;
  bool bVar4;
  char *pcVar5;
  char *pcVar6;
  char local_14;
  char local_13;
  char local_12;
  char local_10 [16];
  
  if ((char)param_2 == '\0') {
    pcVar6 = param_5;
    if (*param_4 <= *param_5) {
      pcVar6 = param_4;
    }
    local_14 = *pcVar6;
    pcVar6 = param_5 + 1;
    pcVar1 = param_4 + 1;
    pcVar5 = pcVar6;
    if (param_4[1] <= param_5[1]) {
      pcVar5 = pcVar1;
    }
    local_13 = *pcVar5;
    pcVar5 = param_5;
    if (*param_5 <= *param_4) {
      pcVar5 = param_4;
    }
    if (*pcVar6 <= *pcVar1) {
      pcVar6 = pcVar1;
    }
    local_12 = param_4[2];
    param_2._3_1_ = (char)local_14 >> 7;
    param_2._0_3_ = CONCAT12(param_5[2],CONCAT11(*pcVar6 + -1,*pcVar5 + -1));
    TilePartRectangleIterator_Construct(local_10,(undefined2 *)&local_14,(undefined2 *)&param_2);
    bVar4 = TilePartRectangleIterator_IsDone((int)local_10);
    pvVar3 = param_6;
    uVar2 = param_3;
    if (!bVar4) {
      do {
        pcVar6 = (char *)TilePartRectangleIterator_Current((int)local_10);
        bVar4 = BasementTile_ValidateObstructions(param_1,(char)uVar2,pcVar6,pvVar3);
        if (!bVar4) {
          return false;
        }
        TilePartRectangleIterator_Next(local_10);
        bVar4 = TilePartRectangleIterator_IsDone((int)local_10);
      } while (!bVar4);
      return true;
    }
  }
  else {
    FUN_00af7180(local_10,param_4,param_5);
    bVar4 = FUN_00af68d0((int)local_10);
    pvVar3 = param_6;
    uVar2 = param_3;
    while (!bVar4) {
      pcVar6 = (char *)FUN_00af68c0((int)local_10);
      bVar4 = BasementTile_ValidateObstructions(param_1,(char)uVar2,pcVar6,pvVar3);
      if (!bVar4) {
        return false;
      }
      FUN_00af6e70(local_10);
      bVar4 = FUN_00af68d0((int)local_10);
    }
  }
  return true;
}

