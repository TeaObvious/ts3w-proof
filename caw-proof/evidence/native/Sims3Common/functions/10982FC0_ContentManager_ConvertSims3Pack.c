/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_ConvertSims3Pack. Export
   ordinal(s): 1774. Entry VA: 0x10982fc0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000F04. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl
ContentManager_ConvertSims3Pack(char param_1,char *param_2,short *param_3,short *param_4)

{
  undefined1 uVar1;
  undefined4 uVar2;
  undefined2 *local_10;
  undefined *local_c;
  undefined *local_8;
  char *local_4;
  
                    /* 0x982fc0  1774  ContentManager_ConvertSims3Pack */
  local_10 = (undefined2 *)&_Dst_10ca8244;
  local_c = &_Dst_10ca8244;
  local_4 = "Scratch/DownloadContent/ConvertPackage/cryptoKey";
  local_8 = &DAT_10ca8245;
  uVar2 = FUN_10982f40(param_2,&local_10);
  if ((char)uVar2 == '\0') {
    if ((1 < (int)local_8 - (int)local_10) && (local_10 != (undefined2 *)0x0)) {
      FUN_10918e90((int)local_10);
    }
    return 0;
  }
  uVar1 = FUN_107ba710(&local_10,param_1,param_3,param_4);
  if ((1 < (int)local_8 - (int)local_10) && (local_10 != (undefined2 *)0x0)) {
    FUN_10918e90((int)local_10);
  }
  return uVar1;
}

