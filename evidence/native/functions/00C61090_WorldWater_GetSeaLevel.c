/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX world pointer,
   plain RET, x87 ST0 float result. Nonnull world+60 Sea pointer yields Sea+14; absent pointer
   yields exact -100.0 from original01079674. Current nullable cache and host zero fallback remain
   distinct current behavior. Original managed LotPond constructor/startup/ID/corner/BuildBuy
   lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

float10 __fastcall WorldWater_GetSeaLevel(int param_1)

{
  undefined4 local_4;
  
  local_4 = -100.0;
  if (*(int *)(param_1 + 0x60) != 0) {
    local_4 = *(float *)(*(int *)(param_1 + 0x60) + 0x14);
  }
  return (float10)local_4;
}

