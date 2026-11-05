/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASPartResourceWrap_GetTextureBuilderName. Export
   ordinal(s): 1732. Entry VA: 0x1097f130. Original managed P/Invoke MethodDef(s): none located in
   the shipped managed assemblies. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

undefined4 __cdecl CASPartResourceWrap_GetTextureBuilderName(int param_1,int param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  int unaff_ESI;
  undefined1 local_10 [4];
  int iStack_c;
  
                    /* 0x97f130  1732  CASPartResourceWrap_GetTextureBuilderName */
  puVar1 = FUN_10926db0(local_10,*(LPCWSTR *)(*(int *)(param_1 + 0x5c) + 0x10 + param_2 * 0x20),
                        0xffffffff,(char *)0x0);
  uVar2 = Ordinal_2(*puVar1);
  if ((2 < (int)(iStack_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return uVar2;
}

