/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: ECX receiver; start words+30/+34 gate. Ordered corrected scaled elapsed
   strictly>binary32 3.0 only; equality/unordered skip. Clear all four start/accumulator words
   before tail-submit. Conditional mode5 seconds; no rebuild/delivery guarantee. */

void __fastcall CeilingRenderManager_PollDeferredRoomRequest(int param_1)

{
  float10 fVar1;
  
  if (*(int *)(param_1 + 0x30) != 0 || *(int *)(param_1 + 0x34) != 0) {
    fVar1 = ElapsedClock_ReadScaledTicks((undefined4 *)(param_1 + 0x30));
    if ((float10)3.0 < fVar1) {
      *(undefined4 *)(param_1 + 0x30) = 0;
      *(undefined4 *)(param_1 + 0x34) = 0;
      *(undefined4 *)(param_1 + 0x38) = 0;
      *(undefined4 *)(param_1 + 0x3c) = 0;
      CeilingRenderManager_SubmitRoomRequest(param_1);
      return;
    }
  }
  return;
}

