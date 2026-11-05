/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; responsibility name, upstream event classification unproved.
   Physical thiscall ECX complete Button and three stack DWORDs, RET0C; same signed first-word
   admission as5181F0, second7D8 gate, third unused. Zero/failed gate returns AL0. If complete+78
   Depressed2 is set, call Button+250 virtual28(mask2,value0), then read live complete+25C bit1 and
   invoke primary virtualA4 only when clear. All admitted paths AL1. Current/native comparison must
   retain post-setter flag read and opaque indirect effects; return upper bits are unspecified.
   Primary vtableFBC418 slot34. */

bool __thiscall
UiButton_HandleTriggerRelease
          (void *this,int signedTriggerWord,uint triggerCode,uint opaqueUnusedWord)

{
  if ((signedTriggerWord != 0) && ((signedTriggerWord < 2 || (triggerCode == 0x7d8)))) {
    if ((*(byte *)((int)this + 0x78) & 2) != 0) {
      (**(code **)(*(int *)((int)this + 0x250) + 0x28))(2,0);
      if ((*(byte *)((int)this + 0x25c) & 1) == 0) {
        (**(code **)(*(int *)this + 0xa4))();
      }
    }
    return true;
  }
  return false;
}

