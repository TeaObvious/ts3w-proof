/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX state, lowbyte argument RET4. When join+4D
   changes to true, clear sync+4C; if public+4F was set clear public and
   loop/entry/exit/oneShot/hold bytes+50..54. When unchanged or set false no such clear. Explicit+4E
   is untouched here. */

void __thiscall SacsState_SetJoinFlag(void *this,char param_1)

{
  if ((*(char *)((int)this + 0x4d) != param_1) &&
     (*(char *)((int)this + 0x4d) = param_1, param_1 != '\0')) {
    if (*(char *)((int)this + 0x4c) != '\0') {
      *(undefined1 *)((int)this + 0x4c) = 0;
    }
    if (*(char *)((int)this + 0x4f) != '\0') {
      *(undefined1 *)((int)this + 0x4f) = 0;
      *(undefined1 *)((int)this + 0x50) = 0;
      *(undefined1 *)((int)this + 0x51) = 0;
      *(undefined1 *)((int)this + 0x52) = 0;
      *(undefined1 *)((int)this + 0x53) = 0;
      *(undefined1 *)((int)this + 0x54) = 0;
    }
  }
  return;
}

