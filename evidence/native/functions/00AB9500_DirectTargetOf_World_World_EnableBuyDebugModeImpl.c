/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_EnableBuyDebugModeImpl at
   0x00787400, bytes e9fb203300. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void __cdecl DirectTargetOf_World_World_EnableBuyDebugModeImpl(char param_1)

{
  void *this;
  undefined8 uVar1;
  int *piVar2;
  
  this = DAT_011edbc4;
  if ((DAT_011ec49a != param_1) && (DAT_011ec49a = param_1, DAT_011edbc4 != (void *)0x0)) {
    piVar2 = (int *)0x0;
    uVar1 = FUN_00c5f560((int)DAT_011edbc4);
    piVar2 = FUN_00c62810(this,(int)uVar1,(int)((ulonglong)uVar1 >> 0x20),piVar2);
    if (piVar2 != (int *)0x0) {
      FUN_00ab4760(piVar2);
      return;
    }
  }
  return;
}

