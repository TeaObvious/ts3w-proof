/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   SlotComponent_PointSlot_GetSlotMatrixFromSimulator. Export ordinal(s): 2424. Entry VA:
   0x109809c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000958. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SlotComponent_PointSlot_GetSlotMatrixFromSimulator(undefined4 *param_1,int *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined1 local_90 [60];
  undefined4 auStack_54 [20];
  
                    /* 0x9809c0  2424  SlotComponent_PointSlot_GetSlotMatrixFromSimulator */
  if (param_2 != (int *)0x0) {
    puVar1 = (undefined4 *)(**(code **)(*param_2 + 0x14))(local_90);
    puVar1 = (undefined4 *)FUN_10980020(auStack_54,puVar1);
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

