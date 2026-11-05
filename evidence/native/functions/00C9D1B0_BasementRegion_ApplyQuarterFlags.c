/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl six words. Low shape byte selects rectangle/diamond
   quarter iterator; corners encode exclusive rectangle ends via max-1. Calls D1C840 for every
   requested compact tile-part. Boolean state is a word whose low byte is used, not an address to
   dereference. */

void __cdecl
BasementRegion_ApplyQuarterFlags
          (undefined4 param_1,undefined4 param_2,char *param_3,char *param_4,char *param_5,
          void *param_6)

{
  char *pcVar1;
  void *pvVar2;
  bool bVar3;
  char *pcVar4;
  char *pcVar5;
  undefined *puVar6;
  char local_14;
  char local_13;
  char local_12;
  char local_10 [16];
  
  if ((char)param_2 == '\0') {
    pcVar4 = param_4;
    if (*param_3 <= *param_4) {
      pcVar4 = param_3;
    }
    local_14 = *pcVar4;
    pcVar4 = param_4 + 1;
    pcVar1 = param_3 + 1;
    pcVar5 = pcVar4;
    if (param_3[1] <= param_4[1]) {
      pcVar5 = pcVar1;
    }
    local_13 = *pcVar5;
    pcVar5 = param_4;
    if (*param_4 <= *param_3) {
      pcVar5 = param_3;
    }
    if (*pcVar4 <= *pcVar1) {
      pcVar4 = pcVar1;
    }
    local_12 = param_3[2];
    param_2._3_1_ = (char)local_14 >> 7;
    param_2._0_3_ = CONCAT12(param_4[2],CONCAT11(*pcVar4 + -1,*pcVar5 + -1));
    TilePartRectangleIterator_Construct(local_10,(undefined2 *)&local_14,(undefined2 *)&param_2);
    bVar3 = TilePartRectangleIterator_IsDone((int)local_10);
    pvVar2 = param_6;
    pcVar4 = param_5;
    if (!bVar3) {
      do {
        puVar6 = (undefined *)TilePartRectangleIterator_Current((int)local_10);
        BasementUndo_ApplyRequestedPartsAndPrice(pvVar2,puVar6,(uint)pcVar4);
        TilePartRectangleIterator_Next(local_10);
        bVar3 = TilePartRectangleIterator_IsDone((int)local_10);
      } while (!bVar3);
      return;
    }
  }
  else {
    FUN_00af7180(local_10,param_3,param_4);
    bVar3 = FUN_00af68d0((int)local_10);
    pvVar2 = param_6;
    pcVar4 = param_5;
    while (!bVar3) {
      puVar6 = (undefined *)FUN_00af68c0((int)local_10);
      BasementUndo_ApplyRequestedPartsAndPrice(pvVar2,puVar6,(uint)pcVar4);
      FUN_00af6e70(local_10);
      bVar3 = FUN_00af68d0((int)local_10);
    }
  }
  return;
}

