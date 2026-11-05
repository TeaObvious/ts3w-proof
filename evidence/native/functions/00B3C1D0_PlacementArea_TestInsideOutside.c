/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 placement/source boundary. cdecl two physical words/plainRET/AL status. Low
   bits1/2 both set returns1; otherwise covered parts queried for inside, selected outside exception
   reads catalog+D0 bitsE00 or+B8 signbit and room classification. Failure records2A/2B. Current
   Boolean part helper does not model these catalog exceptions or enumerate covered parts. */

undefined1 __cdecl PlacementArea_TestInsideOutside(int param_1,void *param_2)

{
  char *pcVar1;
  uint uVar2;
  void *this;
  bool bVar3;
  uint uVar4;
  uint uVar5;
  uint local_58;
  float local_50 [19];
  
  uVar2 = *(uint *)(*(int *)(param_1 + 0x9c) + 0x14);
  if (((uVar2 & 1) != 0) && ((uVar2 >> 1 & 1) != 0)) {
    return 1;
  }
  uVar5 = *(int *)(param_1 + 0xd4) - *(int *)(param_1 + 0xd0) >> 2;
  local_58 = 0;
  if (uVar5 != 0) {
    do {
      pcVar1 = (char *)(*(int *)(param_1 + 0xd0) + local_58 * 4);
      if (((uVar2 & 1) == 0) || (bVar3 = FUN_00acebb0(*(int *)(param_1 + 4),pcVar1), !bVar3)) {
        if ((uVar2 >> 1 & 1) == 0) {
LAB_00b3c2d9:
          if (param_2 == (void *)0x0) {
            return 0;
          }
          BuildEditErrorRecord_InitializeAtLotPoint
                    (local_50,((uVar2 & 1) != 0) + 0x2a,*(undefined **)(param_1 + 4),
                     (LotPaintPoint *)(param_1 + 8),0,0);
          FUN_00ad8570(param_2,local_50);
          FUN_00ad70d0((int)local_50);
          return 0;
        }
        bVar3 = FUN_00acebb0(*(int *)(param_1 + 4),pcVar1);
        if (bVar3) {
          this = *(void **)(*(int *)(param_1 + 4) + 0x298);
          uVar4 = FUN_00b470e0(this,pcVar1,0,'\0');
          bVar3 = LotRoom_TestOutsideClassification(this,uVar4 & 0xffff,1);
          if ((!bVar3) ||
             (((*(uint *)(*(int *)(param_1 + 0x1c) + 0xb8) & 0x80000000) == 0 &&
              ((*(uint *)(*(int *)(param_1 + 0x1c) + 0xd0) & 0xe00) == 0)))) goto LAB_00b3c2d9;
        }
      }
      local_58 = local_58 + 1;
    } while (local_58 < uVar5);
  }
  return 1;
}

