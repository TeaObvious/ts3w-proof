/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Reviewed native envelope timer update. While enabled and in a timed stage, add delta seconds to
   elapsed +0x20; advance eligible stages when elapsed exceeds their duration, resetting elapsed.
   Exact duration equality does not advance the stage on this tick. */

void __thiscall TS3W_AudioEnvelopeAdvance(void *this,float deltaSeconds)

{
  float *pfVar1;
  int iVar2;

  if ((((*(char *)((int)this + 0x1c) != '\0') && (iVar2 = *(int *)((int)this + 0x18), iVar2 != 0))
      && (iVar2 != 4)) && (iVar2 != 6)) {
    *(float *)((int)this + 0x20) = *(float *)((int)this + 0x20) + deltaSeconds;
    while (((iVar2 < 6 && (iVar2 = *(int *)((int)this + 0x18), iVar2 != 4)) &&
           (pfVar1 = (float *)((int)this + iVar2 * 4),
           *pfVar1 <= *(float *)((int)this + 0x20) && *(float *)((int)this + 0x20) != *pfVar1))) {
      iVar2 = iVar2 + 1;
      *(undefined1 *)((int)this + 0x1c) = 1;
      *(undefined4 *)((int)this + 0x20) = 0;
      *(int *)((int)this + 0x18) = iVar2;
    }
  }
  return;
}

