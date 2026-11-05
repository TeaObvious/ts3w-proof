/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
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
  
  InitializeVertexRegionIterator(local_c,param_2);
  bVar2 = IsVertexRegionIteratorAtEnd(local_c);
  uVar1 = extraout_var;
  do {
    if (bVar2) {
      return (uint)uVar1 << 8;
    }
    pcVar3 = GetVertexRegionIteratorCell(local_c);
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
    AdvanceVertexRegionIterator(local_c);
    bVar2 = IsVertexRegionIteratorAtEnd(local_c);
    uVar1 = extraout_var_00;
  } while( true );
}

