/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): ECX terrain. Iterate until end; usage
   exactly0 removes current via AF0930, without increment, otherwise advance. Last layer is copied
   into removed index, alpha samples copied via AEF910; hash entry erased, arrays shrunk. If paints
   become empty, clear aggregate dimensions. Negative usage is not removed by this predicate. */

void __fastcall LotTerrain_RemoveUnusedPaintLayers(void *param_1)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  
  iVar1 = *(int *)((int)param_1 + 0x34) - *(int *)((int)param_1 + 0x30);
  iVar2 = iVar1 >> 0x1f;
  uVar3 = 0;
  if (iVar1 / 0x18 + iVar2 != iVar2) {
    iVar2 = 0;
    do {
      if (*(int *)(iVar2 + 0x10 + *(int *)((int)param_1 + 0x30)) == 0) {
        LotTerrain_RemovePaintLayer(param_1,uVar3);
      }
      else {
        uVar3 = uVar3 + 1;
        iVar2 = iVar2 + 0x18;
      }
    } while (uVar3 < (uint)((*(int *)((int)param_1 + 0x34) - *(int *)((int)param_1 + 0x30)) / 0x18))
    ;
  }
  if ((*(int *)((int)param_1 + 0x30) == *(int *)((int)param_1 + 0x34)) &&
     (*(int *)((int)param_1 + 0x74) * *(int *)((int)param_1 + 0x70) != 0)) {
    ByteBlockGrid_SetDimensions((void *)((int)param_1 + 0x70),0,0);
  }
  return;
}

