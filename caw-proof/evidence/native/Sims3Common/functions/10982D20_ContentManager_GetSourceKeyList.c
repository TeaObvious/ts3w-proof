/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10982d85) */
/* WARNING: Removing unreachable block (ram,0x10982d90) */
/* WARNING: Removing unreachable block (ram,0x10982d96) */
/* WARNING: Removing unreachable block (ram,0x10982dad) */
/* WARNING: Removing unreachable block (ram,0x10982dc2) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetSourceKeyList. Export
   ordinal(s): 1790. Entry VA: 0x10982d20. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EFD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ContentManager_GetSourceKeyList(ushort *param_1,undefined4 *param_2,int param_3)

{
  void *this;
  undefined1 auStack_44 [8];
  undefined4 uStack_3c;
  undefined4 local_10 [4];
  
                    /* 0x982d20  1790  ContentManager_GetSourceKeyList */
  this = (void *)FUN_107744c0();
  if (this != (void *)0x0) {
    uStack_3c = 0x10982d48;
    FUN_10934a30(local_10,param_1,0x10);
    FUN_109335c0(auStack_44,local_10);
    FUN_1077a7b0(this);
    return 0;
  }
  return 0;
}

