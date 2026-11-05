/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Existing pond gate
   at+A0, WaterGeometry_SelectQueryRoot and quad lookup; returns selected40-byte record byte+11
   viaAL. Failure returnsfalse. No broad unqueried child geometry or current cache policy claim.
   Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority.
   All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged;
   current resource/cache policy is preserved. */

uint __thiscall WorldPonds_ContainsWaterPoint(void *this,float param_1,undefined4 param_2)

{
  uint in_EAX;
  undefined8 uVar1;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_20 = param_1;
  uStack_1c = param_2;
  fStack_18 = param_1;
  fStack_14 = param_1;
  if (*(char *)((int)this + 0xa0) != '\0') {
    uVar1 = WaterGeometry_SelectQueryRoot(this,&local_20);
    in_EAX = (uint)uVar1;
    if (-1 < (int)in_EAX) {
      in_EAX = FUN_00b5c9f0(this,in_EAX,&local_20);
      if (in_EAX != 0xffffffff) {
        return CONCAT31((int3)((uint)*(int *)((int)this + 0x5c) >> 8),
                        *(undefined1 *)(*(int *)((int)this + 0x5c) + 0x11 + in_EAX * 0x28));
      }
    }
  }
  return in_EAX & 0xffffff00;
}

