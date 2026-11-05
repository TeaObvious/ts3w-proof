/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Primary gameplay-camera vtable 01046D00 slot+40. Sets or clears requested
   bits at controller+880; this is script motion bank selection, not a replacement for physical
   mouse drag. ret8 confirms flags,bool. */

void __thiscall MainCamera_SetScriptMotionFlags(void *this,uint requestedFlags,char setFlags)

{
  if (setFlags != '\0') {
    *(uint *)((int)this + 0x880) = *(uint *)((int)this + 0x880) | requestedFlags;
    return;
  }
  *(uint *)((int)this + 0x880) = *(uint *)((int)this + 0x880) & ~requestedFlags;
  return;
}

