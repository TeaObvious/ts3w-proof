/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Visits every per-track sequence in
   manager intrusive list, calls SequenceController_StopAll then removes manager listener from
   active/pending children. Does not limit stop to caller-specified track. */

void __fastcall AnimationTrackManager_StopAll(int param_1)

{
  undefined4 *puVar1;
  
  for (puVar1 = *(undefined4 **)(param_1 + 4); puVar1 != (undefined4 *)(param_1 + 4);
      puVar1 = (undefined4 *)*puVar1) {
    if ((void *)puVar1[2] != (void *)0x0) {
      AnimationSequenceController_StopAll((void *)puVar1[2]);
      AnimationSequenceController_UnregisterListenerFromChildren((void *)puVar1[2],param_1);
    }
  }
  return;
}

