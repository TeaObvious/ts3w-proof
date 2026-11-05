/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: copies requested pitch to sky-pitch +80C and the first component of current
   rotation +7D0, then sets skyEnabled +809. Instant preset restore calls this after the base pose
   update. Raw proof: evidence/native/functions/0096FF80_MainCamera_EnableSkyPitchImmediate.asm */

void __thiscall MainCamera_EnableSkyPitchImmediate(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 0x80c) = param_1;
  *(undefined1 *)((int)this + 0x809) = 1;
  *(undefined4 *)((int)this + 2000) = param_1;
  *(undefined4 *)((int)this + 0x7d4) = *(undefined4 *)((int)this + 0x7d4);
  *(undefined4 *)((int)this + 0x7d8) = *(undefined4 *)((int)this + 0x7d8);
  *(undefined4 *)((int)this + 0x7dc) = *(undefined4 *)((int)this + 0x7dc);
  return;
}

