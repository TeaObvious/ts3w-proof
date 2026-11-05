/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_SoundFinishedCallbackImpl. Export
   ordinal(s): 34. Entry VA: 0x10654b20. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000089. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl Audio_SoundFinishedCallbackImpl(uint param_1,undefined4 param_2)

{
                    /* 0x654b20  34  Audio_SoundFinishedCallbackImpl */
  if ((DAT_10c7d4a0 != 0) && ((void *)(DAT_10c7d4a0 + -0x27bd0) != (void *)0x0)) {
    FUN_10657a50((void *)(DAT_10c7d4a0 + -0x27bd0),param_1,param_2);
  }
  return;
}

