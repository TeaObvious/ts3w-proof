/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RigResource_GetSkeletonName. Export ordinal(s):
   2049. Entry VA: 0x1098bb20. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A48. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl RigResource_GetSkeletonName(int param_1)

{
  LPCWSTR pWVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int unaff_ESI;
  undefined1 local_10 [4];
  int iStack_c;
  
                    /* 0x98bb20  2049  RigResource_GetSkeletonName */
  if ((param_1 == 0) || (pWVar1 = *(LPCWSTR *)(param_1 + 0x7c), pWVar1 == (LPCWSTR)0x0)) {
    pWVar1 = L"";
  }
  puVar2 = FUN_10926db0(local_10,pWVar1,0xffffffff,(char *)0x0);
  uVar3 = Ordinal_2(*puVar2);
  if ((2 < (int)(iStack_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
    FUN_10918e90(unaff_ESI);
  }
  return uVar3;
}

