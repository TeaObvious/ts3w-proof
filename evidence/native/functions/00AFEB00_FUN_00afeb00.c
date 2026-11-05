/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Deck-foundation vertex admission; descriptive label, not recovered original symbol.
   cdecl lot/packedvertex, plain RET, AL boolean. Reuses four-cell iterator, strict AB67D0 per valid cell, excludes resolved kinds3/6/5. A non-FFFFFFFF ID whose product lookup fails passes the negative type tests and can return true. No iterator reset beyond constructor needed. */

int __cdecl FUN_00afeb00(void *param_1,undefined2 *param_2)

{
  uint3 uVar1;
  bool bVar2;
  uint3 extraout_var;
  char *pcVar3;
  int iVar4;
  int iVar5;
  undefined3 uVar6;
  uint3 extraout_var_00;
  int local_c [3];
  
  FUN_00af6c40(local_c,param_2);
  bVar2 = FUN_00af67c0(local_c);
  uVar1 = extraout_var;
  do {
    if (bVar2) {
      return (uint)uVar1 << 8;
    }
    pcVar3 = FUN_00af6660(local_c);
    if ((((((-1 < *pcVar3) && ((int)*pcVar3 < *(int *)((int)param_1 + 0x174))) && (-1 < pcVar3[1]))
         && (((int)pcVar3[1] < *(int *)((int)param_1 + 0x178) &&
             (*(int *)((int)param_1 + 0x17c) <= (int)pcVar3[2])))) &&
        (((int)pcVar3[2] <= *(int *)((int)param_1 + 0x180) &&
         (iVar4 = Lot_ResolveCompatibleCellRegion(param_1,pcVar3,'\0'), iVar4 != -1)))) &&
       (((iVar5 = FUN_00c8bbb0(DAT_011ee034,iVar4), iVar5 == 0 || (*(int *)(iVar5 + 0x88) != 3)) &&
        ((iVar5 = FUN_00c8bbb0(DAT_011ee034,iVar4), iVar5 == 0 || (*(int *)(iVar5 + 0x88) != 6))))))
    {
      iVar4 = FUN_00c8bbb0(DAT_011ee034,iVar4);
      uVar6 = 0;
      if ((iVar4 == 0) || (uVar6 = (undefined3)((uint)iVar4 >> 8), *(int *)(iVar4 + 0x88) != 5)) {
        return CONCAT31(uVar6,1);
      }
    }
    FUN_00af6650(local_c);
    bVar2 = FUN_00af67c0(local_c);
    uVar1 = extraout_var_00;
  } while( true );
}
