/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_EnableBuyDebugModeImpl. Export ordinal(s):
   1295. Entry VA: 0x1057aef0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BDE. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_EnableBuyDebugModeImpl(char param_1)

{
  void *this;
  undefined8 uVar1;
  int *piVar2;
  
  this = DAT_10c700c4;
  if ((DAT_10c6e97a != param_1) && (DAT_10c6e97a = param_1, DAT_10c700c4 != (void *)0x0)) {
    piVar2 = (int *)0x0;
    uVar1 = FUN_10233750((int)DAT_10c700c4);
    piVar2 = FUN_10237010(this,(int)uVar1,(int)((ulonglong)uVar1 >> 0x20),piVar2);
    if (piVar2 != (int *)0x0) {
      FUN_10079bf0(piVar2);
      return;
    }
  }
  return;
}

