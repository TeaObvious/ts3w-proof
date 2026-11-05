/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified retail PC 1.67 sound-finished delegate store, called by
   ScriptCore.Audio::Audio_SoundFinishedCallbackImpl at 0x00863330. Canonical code pair:
   evidence/native/functions/008662C0_Audio_StoreSoundFinishedDelegate.asm and evidence/native/functions/008662C0_Audio_StoreSoundFinishedDelegate.c. Static
   evidence only.
   
   Analyst PC1.67 audio callback instruction review. ECX audio owner; RET 8 consumes
   soundId/delegate. Raw pair inserted into owner+0x27D0C through unique map insert 0x007F4270.
   Duplicate ID keeps FIRST stored delegate; insertion result ignored. Third insert stack word is
   unused, not a callback flag. No lifetime retain/release of managed delegate established. */

void __thiscall Audio_StoreSoundFinishedDelegate(void *this,uint soundId,void *delegatePointer)

{
  uint local_14;
  void *local_10;
  undefined1 local_c [12];
  
  local_14 = soundId;
  soundId = soundId & 0xffffff00;
  local_10 = delegatePointer;
  UInt32PairMap_InsertUnique((void *)((int)this + 0x27d0c),local_c,&local_14,soundId);
  return;
}

