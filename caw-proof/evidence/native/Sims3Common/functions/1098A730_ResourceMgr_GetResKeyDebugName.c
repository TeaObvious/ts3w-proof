/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetResKeyDebugName. Export
   ordinal(s): 2029. Entry VA: 0x1098a730. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060008A8. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ResourceMgr_GetResKeyDebugName(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_20;
  int iStack_1c;
  int local_10 [2];
  int local_8;
  
                    /* 0x98a730  2029  ResourceMgr_GetResKeyDebugName */
  iVar1 = *(int *)(param_1 + 4);
  puVar2 = (undefined4 *)FUN_105cc470(local_10);
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

