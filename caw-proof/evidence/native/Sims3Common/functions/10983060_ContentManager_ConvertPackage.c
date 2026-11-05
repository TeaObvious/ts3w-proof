/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_ConvertPackage. Export ordinal(s):
   1773. Entry VA: 0x10983060. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000F05. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl ContentManager_ConvertPackage(undefined4 param_1,char *param_2,wchar_t *param_3)

{
  undefined4 uVar1;
  undefined2 *local_10;
  undefined *local_c;
  undefined *local_8;
  char *local_4;
  
                    /* 0x983060  1773  ContentManager_ConvertPackage */
  local_10 = (undefined2 *)&_Dst_10ca8244;
  local_c = &_Dst_10ca8244;
  local_4 = "Scratch/DownloadContent/ConvertPackage/cryptoKey";
  local_8 = &DAT_10ca8245;
  uVar1 = FUN_10982f40(param_2,&local_10);
  if ((char)uVar1 == '\0') {
    if ((1 < (int)local_8 - (int)local_10) && (local_10 != (undefined2 *)0x0)) {
      local_10 = (undefined2 *)FUN_10918e90((int)local_10);
    }
    return (uint)local_10 & 0xffffff00;
  }
  uVar1 = FUN_10783da0(&local_10,param_1,param_3);
  if ((1 < (int)local_8 - (int)local_10) && (local_10 != (undefined2 *)0x0)) {
    local_10 = (undefined2 *)FUN_10918e90((int)local_10);
  }
  return CONCAT31((int3)((uint)local_10 >> 8),(char)uVar1);
}

