/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Sims3PackFile_GetMinRequiredGameVersion. Export
   ordinal(s): 2410. Entry VA: 0x109927b0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A25. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 Sims3PackFile_GetMinRequiredGameVersion(void)

{
  undefined4 uVar1;
  int unaff_ESI;
  undefined *local_20;
  undefined *local_1c;
  undefined2 *local_18;
  char *local_14;
  undefined4 local_10 [4];
  
                    /* 0x9927b0  2410  Sims3PackFile_GetMinRequiredGameVersion */
  FUN_107a0510(local_10);
  local_14 = "Scratch/Sims3PackFile_GetMinRequiredGameVersion/versionStr";
  local_20 = &_Dst_10ca8244;
  local_1c = &_Dst_10ca8244;
  local_18 = &DAT_10ca8246;
  FUN_1079dbf0(&local_20);
  uVar1 = Ordinal_2(local_20);
  if ((2 < (int)((int)local_1c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return uVar1;
}

