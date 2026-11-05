/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 chimney-query boundary. cdecl lot/packedcell two words/plainRET, ALstatus. Iterate
   selectedquadrants, resolve compatible cellregion, match typecode4. Not equivalent to arbitrary
   current room-positive check; actual zone owner is distinct. */

int __cdecl Lot_TestSelectedFloorZone4(void *param_1,undefined2 *param_2)

{
  uint3 uVar1;
  bool bVar2;
  uint3 extraout_var;
  int iVar3;
  undefined3 extraout_var_00;
  uint3 extraout_var_01;
  undefined2 local_8;
  undefined1 local_6;
  byte local_5;
  int local_4;
  
  FUN_00af64f0(&local_4);
  local_6 = *(undefined1 *)(param_2 + 1);
  local_8 = *param_2;
  local_5 = 0xff;
  bVar2 = FUN_00af6520(&local_4);
  uVar1 = extraout_var;
  do {
    if (bVar2) {
      return (uint)uVar1 << 8;
    }
    local_5 = FUN_00500db0((undefined1 *)&local_4);
    if ((*(byte *)((int)param_2 + 3) & local_5) != 0) {
      iVar3 = Lot_ResolveCompatibleCellRegion(param_1,(char *)&local_8,'\0');
      bVar2 = LotRegion_MatchesTypeCode(iVar3,4);
      if (bVar2) {
        return CONCAT31(extraout_var_00,1);
      }
    }
    FUN_00af6510(&local_4);
    bVar2 = FUN_00af6520(&local_4);
    uVar1 = extraout_var_01;
  } while( true );
}

