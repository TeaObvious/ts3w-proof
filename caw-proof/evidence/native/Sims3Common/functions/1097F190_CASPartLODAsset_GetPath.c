/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartLODAsset_GetPath. Export ordinal(s): 1715.
   Entry VA: 0x1097f190. Original managed P/Invoke MethodDef(s): none located in the shipped managed
   assemblies. This is an export/declaration annotation only; ABI, behavior and runtime execution
   require the original instructions and caller evidence. */

undefined4 __cdecl CASPartLODAsset_GetPath(int param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int unaff_ESI;
  undefined1 local_10 [4];
  int iStack_c;
  
                    /* 0x97f190  1715  CASPartLODAsset_GetPath */
  puVar1 = FUN_10926ef0(local_10,(undefined4 *)(param_1 + 0xc));
  uVar2 = Ordinal_2(*puVar1);
  if ((2 < (int)(iStack_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return uVar2;
}

