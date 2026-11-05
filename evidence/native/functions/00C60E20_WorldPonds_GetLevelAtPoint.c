/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX world plus
   x/z/road flag, RET0C/x87ST0. World bounds admission and pond order retained; initial result-100,
   selected water must be above sentinel. Registered PondLevel wrapper writes output then applies
   its unusual near-sentinel Boolean; do not invert to conventional success. Original managed
   LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical
   ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache
   policy is preserved. */

float10 __thiscall
WorldPonds_GetLevelAtPoint(void *param_1,float param_2,float param_3,char param_4)

{
  float fVar1;
  undefined4 *puVar2;
  void *this;
  undefined4 uVar3;
  undefined4 *puVar4;
  float local_4;
  
  local_4 = -100.0;
  if ((((*(float *)((int)param_1 + 0xb4) <= param_2) && (*(float *)((int)param_1 + 0xb8) <= param_3)
       ) && (param_2 < *(float *)((int)param_1 + 0xbc))) &&
     (param_3 < *(float *)((int)param_1 + 0xc4) + *(float *)((int)param_1 + 0xc0))) {
    puVar2 = *(undefined4 **)((int)param_1 + 0x104);
    puVar4 = *(undefined4 **)((int)param_1 + 0x100);
    if (puVar4 != puVar2) {
      while( true ) {
        this = (void *)*puVar4;
        uVar3 = WorldPonds_HoldsPointAboveGround(this,param_2,param_3,param_4);
        if ((char)uVar3 != '\0') break;
        puVar4 = puVar4 + 1;
        if (puVar4 == puVar2) {
          return (float10)-100.0;
        }
      }
      fVar1 = *(float *)((int)this + 0x218);
      if (-100.0 < fVar1) {
        local_4 = fVar1;
      }
    }
  }
  return (float10)local_4;
}

