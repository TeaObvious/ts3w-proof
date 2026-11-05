/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX controller, byte argument RET4, stores+3C8.
   Consumer0054E810 passes it to the codec mirror input;0054E950 selects normal versus opposing-bone
   output. Thumbnail caller passes0, so the pose is not mirrored. This field is not the loop flag.
    */

void __thiscall ClipPoseController_SetMirrorEnabled(void *this,undefined1 param_1)

{
  *(undefined1 *)((int)this + 0x3c8) = param_1;
  return;
}

