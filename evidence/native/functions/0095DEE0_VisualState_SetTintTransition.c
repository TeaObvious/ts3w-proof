/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. Companion RGB producer: replace low24 of component+0C
   preserving alpha. Only changed RGB emits object event28, even explicitFrom does NOT override
   equality here. Payload same16-byte duration/byteflag/fromARGB/targetARGB layout; do not conflate
   flag with universal force-event. */

void __thiscall
VisualState_SetTintTransition(void *this,uint toRGB,float duration,uint fromRGB,byte explicitFrom)

{
  uint uVar1;
  float local_10;
  byte local_c;
  uint local_8;
  uint local_4;
  
  uVar1 = *(uint *)((int)this + 0xc);
  local_4 = (uVar1 ^ toRGB) & 0xffffff ^ uVar1;
  if (uVar1 != local_4) {
    local_c = explicitFrom;
    *(uint *)((int)this + 0xc) = local_4;
    local_8 = (local_4 ^ fromRGB) & 0xffffff ^ local_4;
    local_10 = duration;
    ObjectEvents_Dispatch(0x1c,*(void **)((int)this + 4),&local_10);
  }
  return;
}

