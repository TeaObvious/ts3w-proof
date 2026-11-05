/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. Physical cdecl lot pointer plus packed cell-part
   pointer, two caller-cleaned stack words/plainRET; Boolean only inAL, upperEAX is not normalized.
   Require packed bytelevel+2==0. Fetch concrete four-key pattern block through A8FA90; compare
   first16-byte key against nullkey011EC8A0 with fourDWORD comparisons. Then reject ACF070,
   AD0470(lot,part,null,0) or AD0D00(lot,part,1,1,null) lowbyte results. Optional lotbyte+4BC
   additionally requires807670 ALtrue. This complete predicate includes water/collection/special
   admission beyond a host pattern-key bit. No inferred UInt32 Boolean, sign widening or
   child-policy names are adopted. Complete188ownedbytes; ABI/types/bytes unchanged. */

uint __cdecl Lot_TestTerrainSurfaceAtCellPart(int *param_1,char *param_2)

{
  bool bVar1;
  uint in_EAX;
  uint uVar2;
  undefined3 extraout_var;
  int local_40;
  int local_3c;
  int local_38;
  uint local_34;
  
  if (param_2[2] != '\0') {
    return in_EAX & 0xffffff00;
  }
  FUN_00afba70(&local_40);
  uVar2 = FloorManager_CopyPatternKeysAtCellPart((void *)param_1[0xa4],param_2,&local_40);
  if ((((local_40 == DAT_011ec8a0) && (local_38 == DAT_011ec8a8)) &&
      (uVar2 = local_34, local_34 == DAT_011ec8ac)) && (local_3c == DAT_011ec8a4)) {
    bVar1 = FUN_00acf070(param_1,param_2);
    uVar2 = CONCAT31(extraout_var,bVar1);
    if (!bVar1) {
      uVar2 = Lot_TestCellBelowSea(param_1,param_2,(void *)0x0,'\0');
      if ((char)uVar2 == '\0') {
        uVar2 = Lot_TestCellRegionAndCollectionAdmission(param_1,param_2,1,1,(undefined1 *)0x0);
        if ((char)uVar2 == '\0') {
          if ((char)param_1[0x12f] != '\0') {
            uVar2 = FUN_00807670(param_1,param_2);
            if ((char)uVar2 == '\0') goto LAB_00ad0ecc;
          }
          return CONCAT31((int3)(uVar2 >> 8),1);
        }
      }
    }
  }
LAB_00ad0ecc:
  return uVar2 & 0xffffff00;
}

