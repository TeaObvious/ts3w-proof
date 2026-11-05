/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX state, lowbyte argument RET4. On hold+54
   change to true, promote public+4F, clear join+4D/set explicit+4E as needed, clear loop+50 and
   call007FD5B0(false). Setter order, not independent bit tests, controls final state. */

void __thiscall SacsState_SetHoldFlag(void *this,char param_1)

{
  if ((*(char *)((int)this + 0x54) != param_1) &&
     (*(char *)((int)this + 0x54) = param_1, param_1 != '\0')) {
    if (*(char *)((int)this + 0x4f) != '\x01') {
      *(undefined1 *)((int)this + 0x4f) = 1;
      *(undefined1 *)((int)this + 0x4d) = 0;
      *(undefined1 *)((int)this + 0x4e) = 1;
    }
    if (*(char *)((int)this + 0x4e) != '\x01') {
      *(undefined1 *)((int)this + 0x4e) = 1;
    }
    *(undefined1 *)((int)this + 0x50) = 0;
    SacsState_SetOneShotFlag(this,'\0');
    return;
  }
  return;
}

