/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Deck-foundation full-cell admission; descriptive label, not recovered original symbol.
   cdecl lot/packedcell, plain RET, AL boolean. Signed half-open X/Z and closed level bounds; ignores incoming mask and builds0F; AB67D0 mode0 STRICT, not platform centre mode1. Nonmissing ID is admitted unless kind3,6 or5. Unresolved individual product can pass; bank-null initialization remains separate. */

undefined4 __cdecl FUN_00afec10(void *param_1,char *param_2)

{
  char *pcVar1;
  int iVar2;
  char *pcVar3;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  bool bVar4;
  
  pcVar3 = param_2;
  if (((((-1 < *param_2) && ((int)*param_2 < *(int *)((int)param_1 + 0x174))) && (-1 < param_2[1]))
      && (((int)param_2[1] < *(int *)((int)param_1 + 0x178) &&
          (*(int *)((int)param_1 + 0x17c) <= (int)param_2[2])))) &&
     ((int)param_2[2] <= *(int *)((int)param_1 + 0x180))) {
    param_2 = (char *)CONCAT13(0xf,*(undefined3 *)param_2);
    pcVar1 = (char *)Lot_ResolveCompatibleCellRegion(param_1,(char *)&param_2,'\0');
    pcVar3 = pcVar1;
    if (pcVar1 != (char *)0xffffffff) {
      iVar2 = FUN_00c8bbb0(DAT_011ee034,(int)pcVar1);
      if ((iVar2 == 0) ||
         (bVar4 = *(int *)(iVar2 + 0x88) == 3,
         pcVar3 = (char *)CONCAT31((int3)((uint)iVar2 >> 8),bVar4), !bVar4)) {
        bVar4 = LotRegion_MatchesTypeCode((int)pcVar1,6);
        pcVar3 = (char *)CONCAT31(extraout_var,bVar4);
        if (!bVar4) {
          bVar4 = LotRegion_MatchesTypeCode((int)pcVar1,5);
          pcVar3 = (char *)CONCAT31(extraout_var_00,bVar4);
          if (!bVar4) {
            return CONCAT31(extraout_var_00,1);
          }
        }
      }
    }
  }
  return (uint)pcVar3 & 0xffffff00;
}
