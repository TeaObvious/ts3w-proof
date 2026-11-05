/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_UnregisterCheats at
   0x00ec1750, bytes e95b790000. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void DirectTargetOf_GameUtils_GameUtils_UnregisterCheats(void)

{
  int *piVar1;
  void *this;
  
  piVar1 = (int *)FUN_009dff90();
  (**(code **)(*piVar1 + 0x54))();
  ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  FUN_00862d00();
  this = (void *)FUN_0049d2e0();
  if (this != (void *)0x0) {
    FUN_0049d790(this,(int *)&DAT_01200aac);
  }
  return;
}

