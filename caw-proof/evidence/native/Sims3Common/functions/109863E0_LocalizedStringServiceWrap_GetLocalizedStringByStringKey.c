/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   LocalizedStringServiceWrap_GetLocalizedStringByStringKey. Export ordinal(s): 1899. Entry VA:
   0x109863e0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000018. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl LocalizedStringServiceWrap_GetLocalizedStringByStringKey(wint_t *param_1)

{
  void *this;
  undefined4 uVar1;
  int unaff_ESI;
  undefined *local_10;
  undefined *local_c;
  undefined2 *local_8;
  char *local_4;
  
                    /* 0x9863e0  1899  LocalizedStringServiceWrap_GetLocalizedStringByStringKey */
  if (param_1 != (wint_t *)0x0) {
    this = (void *)FUN_10395250();
    if (this != (void *)0x0) {
      local_10 = &_Dst_10ca8244;
      local_c = &_Dst_10ca8244;
      local_4 = "Scratch/LocalizedStringServiceWrap/localizedString";
      local_8 = &DAT_10ca8246;
      uVar1 = FUN_10397170(this,param_1,(int *)&local_10);
      if ((char)uVar1 != '\0') {
        uVar1 = Ordinal_2(local_10);
        if ((2 < (int)((int)local_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
          FUN_10918e90(unaff_ESI);
        }
        return uVar1;
      }
      if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (undefined *)0x0))
      {
        FUN_10918e90((int)local_10);
      }
    }
  }
  return 0;
}

