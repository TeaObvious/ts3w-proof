/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Deck-foundation selected-quarter admission; descriptive label, not recovered original symbol.
   cdecl lot/packedcell, plain RET, AL boolean. Same bounds and strict AB67D0 as AFEC10, but retains the incoming selected mask. Excludes kinds3/6/5. Missing marker resultFFFFFFFF rejects; unresolved ordinary catalog row can pass. No positive allowlist is implied. */

undefined4 __cdecl FUN_00afecd0(void *param_1,char *param_2)

{
  char *pcVar1;
  int iVar2;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  bool bVar3;
  
  if (((((-1 < *param_2) && ((int)*param_2 < *(int *)((int)param_1 + 0x174))) && (-1 < param_2[1]))
      && (((int)param_2[1] < *(int *)((int)param_1 + 0x178) &&
          (*(int *)((int)param_1 + 0x17c) <= (int)param_2[2])))) &&
     ((int)param_2[2] <= *(int *)((int)param_1 + 0x180))) {
    pcVar1 = (char *)Lot_ResolveCompatibleCellRegion(param_1,param_2,'\0');
    param_2 = pcVar1;
    if (pcVar1 != (char *)0xffffffff) {
      iVar2 = FUN_00c8bbb0(DAT_011ee034,(int)pcVar1);
      if ((iVar2 == 0) ||
         (bVar3 = *(int *)(iVar2 + 0x88) == 3,
         param_2 = (char *)CONCAT31((int3)((uint)iVar2 >> 8),bVar3), !bVar3)) {
        bVar3 = LotRegion_MatchesTypeCode((int)pcVar1,6);
        param_2 = (char *)CONCAT31(extraout_var,bVar3);
        if (!bVar3) {
          bVar3 = LotRegion_MatchesTypeCode((int)pcVar1,5);
          param_2 = (char *)CONCAT31(extraout_var_00,bVar3);
          if (!bVar3) {
            return CONCAT31(extraout_var_00,1);
          }
        }
      }
    }
  }
  return (uint)param_2 & 0xffffff00;
}
