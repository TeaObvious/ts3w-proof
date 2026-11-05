/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Return(inputState[+4E0]>>2)&1: pan-drag
   maskbit4. Main frame00975B47 consults it to suppress automatic edge-scroll translation. This
   accessor does not test angular-drag maskbit2 and has no angle/velocity arithmetic. */

byte __fastcall CameraInput_IsPanDragActive(int inputState)

{
  return *(byte *)(inputState + 0x4e0) >> 2 & 1;
}

