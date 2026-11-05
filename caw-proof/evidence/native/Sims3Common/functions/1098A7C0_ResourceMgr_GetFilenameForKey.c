/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetFilenameForKey. Export ordinal(s):
   2025. Entry VA: 0x1098a7c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060008A9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: ResourceMgr_GetFilenameForKey reorders managed key fields
   to the native layout and calls0x105CC690. Missing associated filenames use HIGH apostrophe LOW
   instance formatting, not a TGI string. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 __cdecl ResourceMgr_GetFilenameForKey(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_20;
  int iStack_1c;
  int local_10 [2];
  int local_8;
  
                    /* 0x98a7c0  2025  ResourceMgr_GetFilenameForKey */
  iVar1 = *(int *)(param_1 + 4);
  puVar2 = CAW_ResourceFilenameLookupOrInstance(local_10);
  FUN_10926ef0(&local_20,puVar2);
  if ((1 < local_8 - local_10[0]) && (local_10[0] != 0)) {
    FUN_10918e90(local_10[0]);
  }
  uVar3 = Ordinal_2(local_20);
  if ((2 < (int)(iStack_1c - iVar1 & 0xfffffffeU)) && (iVar1 != 0)) {
    FUN_10918e90(iVar1);
  }
  return uVar3;
}

