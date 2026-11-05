/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_SwapLoadScreen at
   0x00ec10a0, bytes e9ab0a93ff. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3.
   
   PC 1.67 complete existing body 0x007F1B50..0x007F1B73: 36 original bytes / 12 instructions.
   One stack argument, plain RET; stored inferred prototype/storage preserved. Calls 0x0050AF90;
   null result skips both slot publication and queue dispatch. Otherwise copies the argument
   without a null-callback gate into global 0x011D9C4C BEFORE calling service virtual +0x1C with
   callback 0x007F1880 and literal 0. A later producer replaces the one global slot. Queue
   admission,
   thread/cadence, virtual scheduler effects, ownership of the incoming callback and exceptional
   rollback are not established by this body. The registered 0x00EC10A0 E9 target remains this
   entry;
   no constructor/type/prototype/body or byte change is made. */

void __cdecl DirectTargetOf_GameUtils_GameUtils_SwapLoadScreen(undefined4 param_1)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_0050af90();
  if (piVar1 != (int *)0x0) {
    DAT_011d9c4c = param_1;
    (**(code **)(*piVar1 + 0x1c))(GameUtils_DispatchPendingLoadScreenSwap,0);
  }
  return;
}

