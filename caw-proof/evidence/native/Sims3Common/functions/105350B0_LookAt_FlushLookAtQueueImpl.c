/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LookAt_FlushLookAtQueueImpl. Export ordinal(s):
   440. Entry VA: 0x105350b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060002EC. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl LookAt_FlushLookAtQueueImpl(undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  void *this;
  
                    /* 0x5350b0  440  LookAt_FlushLookAtQueueImpl */
  iVar1 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_10726da0(this,DAT_10c80cc4);
    if ((iVar1 != 0) && (*(void **)(iVar1 + 0x28) != (void *)0x0)) {
      iVar1 = FUN_1037ef40(*(void **)(iVar1 + 0x28),param_3);
      return iVar1;
    }
  }
  return 0;
}

