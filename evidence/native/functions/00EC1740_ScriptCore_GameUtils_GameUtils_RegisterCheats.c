/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01197288 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_RegisterCheats [assembly=ScriptCore token=0x06000263; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_GameUtils__GameUtils_RegisterCheats(void)

{
  int *piVar1;
  void *this;
  
  piVar1 = (int *)FUN_009dff90();
  (**(code **)(*piVar1 + 0x50))();
  ScriptCore.Animation::Animation_SetMissingAnimationCallback();
  thunk_FUN_00862db0();
  piVar1 = DAT_01200ad8;
  if (DAT_01200ad8 != (int *)0x0) {
    DAT_01200ad8 = (int *)0x0;
    (**(code **)(*piVar1 + 4))();
  }
  FUN_007efbf0(L"cheat");
  if (DAT_01200ad8 == (int *)0x0) {
    _DAT_01200ab8 = (int *)0x0;
  }
  else {
    _DAT_01200ab8 = DAT_01200ad8 + 10;
  }
  _DAT_01200ab4 = 0xffffffff;
  _DAT_01200abc = &LAB_00ec95f0;
  _DAT_01200ac0 = 0;
  DAT_01200ac4 = 0;
  DAT_01200ac5 = 0xfe;
  this = (void *)FUN_0049d2e0();
  if (this != (void *)0x0) {
    FUN_0049e590(this,(int *)&DAT_01200aac);
  }
  return;
}

