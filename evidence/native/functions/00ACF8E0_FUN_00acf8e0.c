/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: cdecl lot/packedcell, ALBool/plainRET. Signedbounds/fullmask0F AB67D0strict, then exact kind6. Not a general water-height or room-partition producer. */

bool __cdecl FUN_00acf8e0(void *param_1,char *param_2)

{
  bool bVar1;
  int iVar2;
  
  if ((((*param_2 < 0) || (*(int *)((int)param_1 + 0x174) <= (int)*param_2)) || (param_2[1] < 0)) ||
     (((*(int *)((int)param_1 + 0x178) <= (int)param_2[1] ||
       ((int)param_2[2] < *(int *)((int)param_1 + 0x17c))) ||
      (*(int *)((int)param_1 + 0x180) < (int)param_2[2])))) {
    return false;
  }
  param_2 = (char *)CONCAT13(0xf,*(undefined3 *)param_2);
  iVar2 = Lot_ResolveCompatibleCellRegion(param_1,(char *)&param_2,'\0');
  bVar1 = LotRegion_MatchesTypeCode(iVar2,6);
  return bVar1;
}
