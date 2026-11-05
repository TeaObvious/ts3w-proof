/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Pre-definition evidence note. Original PC 1.67: ASM-only until defined/read back: ECX receiver,
   message DWORD and payload pointer, RET8. Require0487B4AF and payload+8/+C
   equal[receiver+18]+48/+4C, then callA497F0. AL1 only. LotGUID alias inferred; exact pair tests
   proven. No synthetic C/prototype. */

undefined4 __thiscall CeilingManager_OnRoomRequest(void *param_1,int param_2,int param_3)

{
  if (param_2 == 0x487b4af) {
    if ((*(int *)(param_3 + 8) == *(int *)(*(int *)((int)param_1 + 0x18) + 0x48)) &&
       (*(int *)(param_3 + 0xc) == *(int *)(*(int *)((int)param_1 + 0x18) + 0x4c))) {
      CeilingManager_ProduceRoomDataMessage(param_1);
    }
  }
  return 1;
}

