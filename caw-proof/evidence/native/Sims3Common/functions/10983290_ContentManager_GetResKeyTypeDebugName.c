/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetResKeyTypeDebugName. Export
   ordinal(s): 1788. Entry VA: 0x10983290. Original managed P/Invoke MethodDef(s): none located in
   the shipped managed assemblies. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

undefined4 ContentManager_GetResKeyTypeDebugName(void)

{
  undefined **ppuVar1;
  undefined4 uVar2;
  undefined2 *puVar3;
  undefined *puVar4;
  undefined *local_30;
  undefined *local_2c;
  undefined2 *local_28;
  char *local_24;
  int local_20;
  int local_1c;
  int local_10 [2];
  int local_8;
  
                    /* 0x983290  1788  ContentManager_GetResKeyTypeDebugName */
  local_24 = "Scratch/ContentManager/tmp";
  local_30 = &_Dst_10ca8244;
  local_2c = &_Dst_10ca8244;
  local_28 = &DAT_10ca8246;
  FUN_105cc470(&local_20);
  if (local_1c == local_20) {
    FUN_1006aff0(&local_30,(ushort *)&_Format_10b2b57c);
    puVar3 = local_28;
    puVar4 = local_30;
  }
  else {
    ppuVar1 = FUN_10926ef0(local_10,&local_20);
    puVar3 = &DAT_10ca8246;
    puVar4 = &_Dst_10ca8244;
    if (ppuVar1 != &local_30) {
      FUN_1001f8c0(&local_30,*ppuVar1,(int *)ppuVar1[1]);
      puVar3 = local_28;
      puVar4 = local_30;
    }
    if ((2 < (int)(local_8 - local_10[0] & 0xfffffffeU)) && (local_10[0] != 0)) {
      FUN_10918e90(local_10[0]);
    }
  }
  uVar2 = Ordinal_2(puVar4);
  if ((1 < local_1c - (int)local_24) && (local_24 != (char *)0x0)) {
    FUN_10918e90((int)local_24);
  }
  if ((2 < (int)((int)puVar3 - (int)puVar4 & 0xfffffffeU)) && (puVar4 != (undefined *)0x0)) {
    FUN_10918e90((int)puVar4);
  }
  return uVar2;
}

