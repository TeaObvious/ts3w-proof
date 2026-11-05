/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   SlotComponent_PointSlot_GetSlotMatrixFromRenderer. Export ordinal(s): 2423. Entry VA: 0x10980a20.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000959. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

void __cdecl
SlotComponent_PointSlot_GetSlotMatrixFromRenderer(undefined4 *param_1,int *param_2,int param_3)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_40 [16];
  
                    /* 0x980a20  2423  SlotComponent_PointSlot_GetSlotMatrixFromRenderer */
  if (param_2 != (int *)0x0) {
    puVar1 = (undefined4 *)
             SlotComponent_Slot_GetSlotMatrix
                       (local_40,*(undefined4 *)(param_3 + 8),*(undefined4 *)(param_3 + 0xc),param_2
                        ,'\0');
    for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
      *param_1 = *puVar1;
      puVar1 = puVar1 + 1;
      param_1 = param_1 + 1;
    }
    return;
  }
  puVar1 = &DAT_10b96350;
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar1;
    puVar1 = puVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

