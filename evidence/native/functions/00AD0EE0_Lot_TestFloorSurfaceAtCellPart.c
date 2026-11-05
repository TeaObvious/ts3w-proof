/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. Physical cdecl lot and packed cell-part pointers, two
   caller-cleaned stack words/plainRET; AL-only Boolean despite inferred int return. A8FA90
   fetches64-byte keyquad,7892B0 compares all64bytes against nullquad011EC8E0; equal fails. MOVSX
   reads signedbyteX/Z/level. Only when within signed lotbounds, repack same coordinates/level with
   partmask0F and callAB67D0(...,0), then reject region type3 or6 viaAFE300. Outside that bounds
   branch does not itself fail: it still reaches AD0D00(lot,part,1,1,null), whose ALtrue fails;
   otherwise AL1. This owner is not just nonzero catalogkey or universal bounds validation.
   Complete221ownedbytes; existing ABI/types/bytes retained. */

int __cdecl Lot_TestFloorSurfaceAtCellPart(void *param_1,char *param_2)

{
  void *this;
  char *pcVar1;
  bool bVar2;
  uint3 extraout_var;
  int iVar3;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  uint uVar4;
  undefined4 local_40 [16];
  
  FUN_00afba70(local_40);
  pcVar1 = param_2;
  this = param_1;
  FloorManager_CopyPatternKeysAtCellPart(*(void **)((int)param_1 + 0x290),param_2,local_40);
  bVar2 = ResourceKeyQuad_Equals(local_40,(undefined *)&DAT_011ec8e0);
  if (bVar2) {
    return (uint)extraout_var << 8;
  }
  if ((((-1 < *pcVar1) && ((int)*pcVar1 < *(int *)((int)this + 0x174))) && (-1 < pcVar1[1])) &&
     ((((int)pcVar1[1] < *(int *)((int)this + 0x178) &&
       (*(int *)((int)this + 0x17c) <= (int)pcVar1[2])) &&
      ((int)pcVar1[2] <= *(int *)((int)this + 0x180))))) {
    param_1 = (void *)CONCAT13(0xf,*(undefined3 *)pcVar1);
    iVar3 = Lot_ResolveCompatibleCellRegion(this,(char *)&param_1,'\0');
    bVar2 = LotRegion_MatchesTypeCode(iVar3,3);
    uVar4 = CONCAT31(extraout_var_00,bVar2);
    if (bVar2) goto LAB_00ad0fb4;
    bVar2 = LotRegion_MatchesTypeCode(iVar3,6);
    uVar4 = CONCAT31(extraout_var_01,bVar2);
    if (bVar2) goto LAB_00ad0fb4;
  }
  uVar4 = Lot_TestCellRegionAndCollectionAdmission(this,pcVar1,1,1,(undefined1 *)0x0);
  if ((char)uVar4 == '\0') {
    return CONCAT31((int3)(uVar4 >> 8),1);
  }
LAB_00ad0fb4:
  return uVar4 & 0xffffff00;
}

