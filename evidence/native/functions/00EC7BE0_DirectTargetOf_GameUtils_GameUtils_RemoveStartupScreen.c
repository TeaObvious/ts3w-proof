/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_RemoveStartupScreen
   at 0x00ec1090, bytes e94b6b0000. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void DirectTargetOf_GameUtils_GameUtils_RemoveStartupScreen(void)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_0050af90();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x1c))(&LAB_00ec7b70,0);
  }
  FUN_00ec6fd0();
  return;
}

