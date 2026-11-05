/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX pond plus x/z
   and road-test flag, RET0C/AL Boolean. ContainsWaterPoint first, then actual C6A090 height tuple
   and strict height<water. Optional road lookup excludes positive OnStreet; absent road network
   accepts only after height admission. Full child road/height policy remains existing owners; no
   current missing-height acceptance inferred. Original managed LotPond
   constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

uint __thiscall
WorldPonds_HoldsPointAboveGround(void *this,float param_1,float param_2,char param_3)

{
  uint uVar1;
  uint extraout_EAX;
  float10 fVar2;
  
  uVar1 = WorldPonds_ContainsWaterPoint((void *)((int)this + 0x480),param_1,param_2);
  if ((char)uVar1 != '\0') {
    fVar2 = WorldSurface_QueryHeight
                      (*(void **)((int)this + 0x214),param_1,param_2,0,'\x01','\0',(undefined1 *)0x0
                       ,(undefined1 *)0x0,'\0','\0');
    uVar1 = extraout_EAX;
    if (fVar2 < (float10)*(float *)((int)this + 0x218)) {
      if (param_3 != '\0') {
        uVar1 = *(uint *)((int)this + 0x214);
        if (*(void **)(uVar1 + 0x5c) != (void *)0x0) {
          uVar1 = FUN_00b77f60(*(void **)(uVar1 + 0x5c),param_1,param_2,'\x01','\0',
                               (undefined4 *)0x0,(float *)0x0,'\0');
          if ((char)uVar1 != '\0') {
            return uVar1 & 0xffffff00;
          }
        }
      }
      return CONCAT31((int3)(uVar1 >> 8),1);
    }
  }
  return uVar1 & 0xffffff00;
}

