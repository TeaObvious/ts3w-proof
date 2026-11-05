/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetKeyForResource. Export ordinal(s):
   2026. Entry VA: 0x1098a0a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A46. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ResourceMgr_GetKeyForResource(int param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
                    /* 0x98a0a0  2026  ResourceMgr_GetKeyForResource */
  uVar1 = *(undefined4 *)(param_1 + 8);
  uVar2 = *(undefined4 *)(param_1 + 0xc);
  uVar3 = *(undefined4 *)(param_1 + 0x14);
  *param_2 = *(undefined4 *)(param_1 + 0x10);
  param_2[3] = uVar2;
  param_2[1] = uVar3;
  param_2[2] = uVar1;
  return;
}

