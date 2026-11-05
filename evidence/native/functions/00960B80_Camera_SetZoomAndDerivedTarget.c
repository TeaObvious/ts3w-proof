/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: stores the zoom scalar at +270 and forms target +200 as eye +60 minus backward
   view basis +50 times zoom. The ordinary unit-basis path underlies camera-to-audio-listener
   coordinate reconstruction. Raw instruction proof:
   00960B80_Camera_SetZoomAndDerivedTarget.asm.
   original PC 1.67 TS3W.exe. */

void __thiscall Camera_SetZoomAndDerivedTarget(void *this,float param_1)

{
  *(float *)((int)this + 0x270) = param_1;
  *(float *)((int)this + 0x200) =
       (0.0 - *(float *)((int)this + 0x50)) * param_1 + *(float *)((int)this + 0x60);
  *(float *)((int)this + 0x204) =
       (0.0 - *(float *)((int)this + 0x54)) * param_1 + *(float *)((int)this + 100);
  *(float *)((int)this + 0x208) =
       (0.0 - *(float *)((int)this + 0x58)) * param_1 + *(float *)((int)this + 0x68);
  *(float *)((int)this + 0x20c) =
       (0.0 - *(float *)((int)this + 0x5c)) * param_1 + *(float *)((int)this + 0x6c);
  return;
}

