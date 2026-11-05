/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: ECX lot plus targetID/packedcell, void RET8. Reads four lanes through AB3E50, changes selected mask lanes independently and writes AC2ED0 at signedlevel-minus-lotminimum. Original pool/fountain/platform flags drive A91AA0 and dirty fields2BC/2C0. Does not by itself establish undo/public event ownership. */

void __thiscall FUN_00ac4530(void *this,int param_1,char *param_2)

{
  int iVar1;
  bool bVar2;
  char *pcVar3;
  bool bVar4;
  bool bVar5;
  bool bVar6;
  bool bVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  int local_10 [4];
  
  iVar9 = param_1;
  bVar4 = LotRegion_MatchesTypeCode(param_1,3);
  if (!bVar4) {
    bVar5 = LotRegion_MatchesTypeCode(iVar9,6);
    bVar4 = false;
    if (!bVar5) goto LAB_00ac4567;
  }
  bVar4 = true;
LAB_00ac4567:
  bVar6 = LotRegion_MatchesTypeCode(iVar9,5);
  pcVar3 = param_2;
  iVar10 = (int)param_2[2] - *(int *)((int)this + 0x17c);
  bVar5 = false;
  bVar2 = false;
  piVar8 = (int *)FUN_00ab3e50(*(void **)((int)this + 0x2a4),(int)*param_2,(int)param_2[1],iVar10);
  local_10[0] = *piVar8;
  local_10[1] = piVar8[1];
  local_10[2] = piVar8[2];
  local_10[3] = piVar8[3];
  iVar9 = 0;
  do {
    if ((byte)(pcVar3[3] & '\x01' << ((byte)iVar9 & 0x1f)) != 0) {
      iVar1 = local_10[iVar9];
      bVar7 = LotRegion_MatchesTypeCode(iVar1,3);
      if (bVar7) {
LAB_00ac4605:
        bVar5 = true;
      }
      else {
        bVar7 = LotRegion_MatchesTypeCode(iVar1,6);
        if (bVar7) goto LAB_00ac4605;
        bVar7 = LotRegion_MatchesTypeCode(iVar1,5);
        if (bVar7) {
          bVar2 = true;
        }
      }
      local_10[iVar9] = param_1;
    }
    iVar9 = iVar9 + 1;
    if (3 < iVar9) {
      FUN_00ac2ed0(*(void **)((int)this + 0x2a4),local_10,(int)*pcVar3,(int)pcVar3[1],iVar10);
      if ((bVar4) || (bVar5)) {
        param_1 = CONCAT13(param_1._3_1_,*(undefined3 *)pcVar3);
        FUN_00a91aa0(*(void **)((int)this + 0x290),(char *)&param_1);
      }
      if ((*(int *)((int)this + 700) != 0) && ((bVar4 || (bVar5)))) {
        *(undefined1 *)(*(int *)((int)this + 700) + 4) = 1;
      }
      if ((*(int *)((int)this + 0x2c0) != 0) && ((bVar6 || (bVar2)))) {
        *(undefined1 *)(*(int *)((int)this + 0x2c0) + 4) = 1;
      }
      return;
    }
  } while( true );
}
