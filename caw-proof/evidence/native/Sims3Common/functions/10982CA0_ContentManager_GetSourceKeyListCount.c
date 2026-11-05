/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10982d04) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetSourceKeyListCount. Export
   ordinal(s): 1791. Entry VA: 0x10982ca0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EFC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl ContentManager_GetSourceKeyListCount(ushort *param_1)

{
  void *this;
  int iVar1;
  undefined1 auStack_38 [8];
  undefined4 uStack_30;
  undefined4 local_10 [4];
  
                    /* 0x982ca0  1791  ContentManager_GetSourceKeyListCount */
  this = (void *)FUN_107744c0();
  if (this == (void *)0x0) {
    return 0;
  }
  uStack_30 = 0x10982cbf;
  FUN_10934a30(local_10,param_1,0x10);
  FUN_109335c0(auStack_38,local_10);
  iVar1 = FUN_1077a7b0(this);
  return iVar1;
}

