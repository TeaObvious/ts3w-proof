/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: cdecl lot/packedcell/allowtype6/optionaloutbyte, ALBool/plainRET. Signedbounds check; fullmask0F AB67D0strict, type3 first then optionaltype6, successful out0/1 only. Failure leaves out untouched; upperEAX not certified by stored undefined4. */

/* Analyst note (PC1.67 lot-level support comparison): Analyst concrete region/type predicate.
   Physical cdecl lot,packed signed-byte cell,low-byte allowType6,optional output-byte pointer;
   plain RET, AL only. MOVSX reads x/z/level; x/z require0<=coordinate<lot width/depth, level within
   signed lot+17C..+180. Force quadrant mask0F and call AB67D0 with false. AFE300 compares resulting
   region row+88 with type code3; on match return AL1 and write optional byte0. Only if third flag
   nonzero, test type6 then AL1/optional byte1. Otherwise AL0 and optional output untouched.
   Codes3/6 are observed native registry values, not fabricated managed enum names. Full raw
   key/region equivalence semantics remain AB67D0 and its children; no native allocation/lifetime or
   nullable failure is inferred. */

undefined4 __cdecl
Lot_TestCellSupportRegionType(void *param_1,char *param_2,char param_3,undefined1 *param_4)

{
  bool bVar1;
  int iVar2;
  undefined3 extraout_var;
  char *pcVar3;
  undefined3 extraout_var_00;
  
  pcVar3 = param_2;
  if ((((-1 < *param_2) && ((int)*param_2 < *(int *)((int)param_1 + 0x174))) && (-1 < param_2[1]))
     && ((((int)param_2[1] < *(int *)((int)param_1 + 0x178) &&
          (*(int *)((int)param_1 + 0x17c) <= (int)param_2[2])) &&
         ((int)param_2[2] <= *(int *)((int)param_1 + 0x180))))) {
    param_2 = (char *)CONCAT13(0xf,*(undefined3 *)param_2);
    iVar2 = Lot_ResolveCompatibleCellRegion(param_1,(char *)&param_2,'\0');
    bVar1 = LotRegion_MatchesTypeCode(iVar2,3);
    pcVar3 = (char *)CONCAT31(extraout_var,bVar1);
    if (bVar1) {
      if (param_4 != (undefined1 *)0x0) {
        *param_4 = 0;
      }
      return CONCAT31((int3)((uint)param_4 >> 8),1);
    }
    if (param_3 != '\0') {
      bVar1 = LotRegion_MatchesTypeCode(iVar2,6);
      pcVar3 = (char *)CONCAT31(extraout_var_00,bVar1);
      if (bVar1) {
        if (param_4 != (undefined1 *)0x0) {
          *param_4 = 1;
        }
        return CONCAT31((int3)((uint)param_4 >> 8),1);
      }
    }
  }
  return (uint)pcVar3 & 0xffffff00;
}
