/* Tests a selected quarter-region in one lot cell for a resolved product of kind 5. Signed byte
   coordinates use half-open X/Z bounds and inclusive level bounds. The low-byte mode is forwarded
   unchanged; the mode-1 child uses ordered prefix selection. Analyst-assigned name. */

undefined4 __cdecl TestPlatformRegion(void *param_1,char *param_2,char param_3)

{
  int iVar1;
  undefined3 uVar2;
  bool bVar3;

  /* 00AFED64: Packed bytes 0/1/2 are signed X/Z/level; X/Z exclude the far endpoint, while both level endpoints are included. */
  if ((((-1 < *param_2) && ((int)*param_2 < *(int *)((int)param_1 + 0x174))) && (-1 < param_2[1]))
     && ((((int)param_2[1] < *(int *)((int)param_1 + 0x178) &&
          (*(int *)((int)param_1 + 0x17c) <= (int)param_2[2])) &&
         ((int)param_2[2] <= *(int *)((int)param_1 + 0x180))))) {
    /* 00AFEDA2: Forward the same lot and packed cell to AB67D0. FFFFFFFF means no selected compatible product; ID 0 remains an ordinary lookup key. */
    param_2 = (char *)Lot_ResolveCompatibleCellRegion(param_1,param_2,param_3);
    if (param_2 != (char *)0xffffffff) {
      /* 00AFEDAC: Global catalog bank 011EE034 is used without a local null guard. Missing product rejects; product DWORD +88 must be kind 5. Only AL is Boolean. */
      iVar1 = FUN_00c8bbb0(DAT_011ee034,(int)param_2);
      param_2 = (char *)0x0;
      if (iVar1 != 0) {
        bVar3 = *(int *)(iVar1 + 0x88) == 5;
        uVar2 = (undefined3)((uint)iVar1 >> 8);
        param_2 = (char *)CONCAT31(uVar2,bVar3);
        if (bVar3) {
          return CONCAT31(uVar2,1);
        }
      }
    }
  }
  return (uint)param_2 & 0xffffff00;
}
