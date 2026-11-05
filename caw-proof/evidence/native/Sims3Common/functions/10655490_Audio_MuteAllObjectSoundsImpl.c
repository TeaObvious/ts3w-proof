/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_MuteAllObjectSoundsImpl. Export ordinal(s):
   26. Entry VA: 0x10655490. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000085. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Audio_MuteAllObjectSoundsImpl(undefined4 param_1,undefined4 param_2,undefined1 param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  void *this;
  undefined4 *local_4;
  
                    /* 0x655490  26  Audio_MuteAllObjectSoundsImpl */
  local_4 = (undefined4 *)0x0;
  iVar2 = FUN_1072a1a0();
  if (iVar2 != 0) {
    puVar3 = (undefined4 *)FUN_1072abb0(iVar2);
    FUN_10673770(&local_4,puVar3);
    puVar3 = local_4;
    if (local_4 != (undefined4 *)0x0) {
      this = (void *)FUN_10726da0(local_4,DAT_10c8d6b0);
      if (this != (void *)0x0) {
        FUN_10734570(this,param_3);
      }
      piVar1 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  return;
}

