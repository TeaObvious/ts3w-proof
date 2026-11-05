/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetDBLocationForKey. Export
   ordinal(s): 2024. Entry VA: 0x1098a500. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060008A7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ResourceMgr_GetDBLocationForKey(undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  int local_14;
  undefined4 local_10;
  int iStack_c;
  
                    /* 0x98a500  2024  ResourceMgr_GetDBLocationForKey */
  local_18 = *param_1;
  local_14 = param_1[1];
  local_20 = param_1[2];
  local_1c = param_1[3];
  puVar1 = FUN_105cc490(&local_10,&local_20);
  uVar2 = Ordinal_2(*puVar1);
  if ((2 < (int)(iStack_c - local_14 & 0xfffffffeU)) && (local_14 != 0)) {
    FUN_10918e90(local_14);
  }
  return uVar2;
}

