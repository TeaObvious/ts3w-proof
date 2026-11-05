/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetThumbnailFilePathStatic. Export
   ordinal(s): 2660. Entry VA: 0x109998a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000519. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetThumbnailFilePathStatic(LPCWSTR param_1)

{
  undefined4 uVar1;
  undefined4 local_a0 [16];
  uint local_60;
  uint local_5c;
  
                    /* 0x9998a0  2660  WorldWrap_GetThumbnailFilePathStatic */
  FUN_1039c030(local_a0);
  uVar1 = FUN_10998290(param_1,local_a0,0);
  if ((char)uVar1 == '\0') {
    FUN_1039c0f0(local_a0);
    return 0;
  }
  uVar1 = Ordinal_2(-(uint)(local_60 != local_5c) & local_60);
  FUN_1039c0f0((undefined4 *)&stack0xffffff5c);
  return uVar1;
}

