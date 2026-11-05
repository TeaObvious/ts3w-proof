/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetPackageId. Export ordinal(s):
   1786. Entry VA: 0x10982ea0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000F06. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl ContentManager_GetPackageId(int param_1,uint param_2)

{
  undefined4 uVar1;
  int unaff_ESI;
  undefined *local_20;
  undefined *local_1c;
  undefined2 *local_18;
  char *local_14;
  undefined4 local_10 [4];
  
                    /* 0x982ea0  1786  ContentManager_GetPackageId */
  FUN_10933570(local_10);
  FUN_10521400();
  uVar1 = FUN_10520f90(param_1,param_2,local_10);
  if ((char)uVar1 == '\0') {
    return 0;
  }
  local_20 = &_Dst_10ca8244;
  local_1c = &_Dst_10ca8244;
  local_14 = "Scratch/ContentManager/tmp";
  local_18 = &DAT_10ca8246;
  FUN_107ae570(local_10,&local_20);
  uVar1 = Ordinal_2(local_20);
  if ((2 < (int)((int)local_1c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return uVar1;
}

