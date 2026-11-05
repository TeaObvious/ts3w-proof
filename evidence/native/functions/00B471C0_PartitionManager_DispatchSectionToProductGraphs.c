/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete75instructions/188ownedbytes. Physical ECX owner plus2stackDWORD inputs(section
   and productKey), RET8, no meaningful return. ProductExistsC5B640 false dispatches same section to
   all6consecutive graph pointers+54..+68. Otherwise C5B8C0 selects graph+60(slot3) or+64(slot4);
   C5BF10 lowbyte admits+5C(slot2), C5BF40 admits+58(slot1), C5BF70 admits+54(slot0). Those helpers
   test product partition flags100/200/400 and admit missing catalog products. BearsLoad lowbyte
   retained inBL also gates optional ownerlot+290 dispatchA918F0. Graph insertionC43C60 and optional
   listener internals are separate; no assumption this is rendering or world travel. Existing
   function types/ABI preserved. */

void __thiscall
PartitionManager_DispatchSectionToProductGraphs(void *this,char *param_1,uint *param_2)

{
  bool bVar1;
  undefined4 uVar2;
  uint uVar3;
  void *pvVar4;
  undefined4 *puVar5;
  int iVar6;
  
  bVar1 = WallProduct_ExistsInCatalog(param_2);
  if (!bVar1) {
    puVar5 = (undefined4 *)((int)this + 0x54);
    iVar6 = 6;
    do {
      FUN_00c43c60((void *)*puVar5,param_1);
      puVar5 = puVar5 + 1;
      iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
  }
  uVar2 = FUN_00c5b8c0(param_2);
  if ((char)uVar2 == '\0') {
    pvVar4 = *(void **)((int)this + 100);
  }
  else {
    pvVar4 = *(void **)((int)this + 0x60);
  }
  FUN_00c43c60(pvVar4,param_1);
  uVar3 = WallProduct_BlocksPlacementOrMissing(param_2);
  if ((char)uVar3 != '\0') {
    FUN_00c43c60(*(void **)((int)this + 0x5c),param_1);
  }
  bVar1 = WallProduct_BearsLoadOrMissing((undefined *)param_2);
  if (bVar1) {
    FUN_00c43c60(*(void **)((int)this + 0x58),param_1);
  }
  uVar3 = WallProduct_BlocksLightOrMissing(param_2);
  if ((char)uVar3 != '\0') {
    FUN_00c43c60(*(void **)((int)this + 0x54),param_1);
  }
  if ((bVar1) && (pvVar4 = *(void **)(*(int *)((int)this + 0xc) + 0x290), pvVar4 != (void *)0x0)) {
    FUN_00a918f0(pvVar4,param_1,param_2);
  }
  return;
}

