/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SlotComponent_GetResourceKey. Export ordinal(s):
   2418. Entry VA: 0x1097fc80. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600095F. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl SlotComponent_GetResourceKey(undefined4 *param_1,int param_2)

{
  undefined4 uVar1;
  
                    /* 0x97fc80  2418  SlotComponent_GetResourceKey */
  if (param_2 != 0) {
    *param_1 = *(undefined4 *)(param_2 + 0x38);
    param_1[1] = *(undefined4 *)(param_2 + 0x3c);
    uVar1 = *(undefined4 *)(param_2 + 0x30);
    param_1[3] = *(undefined4 *)(param_2 + 0x34);
    param_1[2] = uVar1;
    return;
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[3] = 0;
  param_1[2] = 0;
  return;
}

