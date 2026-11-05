/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011677b8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Audio::Audio_SoundFinishedCallbackImpl [assembly=ScriptCore token=0x060011E1; soundId:
   System.UInt32, finishedCallback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 audio callback instruction review. cdecl(soundId:uint32,delegatePointer32).
   Global011D9C40 minus27BD0 resolves audio owner; absent global/owner is no-op. Calls008662C0; no
   success return, wrapper RET caller cleanup. Complete body ends863352. */

void __cdecl ScriptCore_Audio__Audio_SoundFinishedCallbackImpl(uint soundId,void *delegatePointer)

{
  if ((DAT_011d9c40 != 0) && ((void *)(DAT_011d9c40 + -0x27bd0) != (void *)0x0)) {
    Audio_StoreSoundFinishedDelegate((void *)(DAT_011d9c40 + -0x27bd0),soundId,delegatePointer);
  }
  return;
}

