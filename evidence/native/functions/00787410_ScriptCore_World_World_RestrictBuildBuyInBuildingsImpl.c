/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c10 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_RestrictBuildBuyInBuildingsImpl [assembly=ScriptCore token=0x06000787;
   bState: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_RestrictBuildBuyInBuildingsImpl(char param_1)

{
  void *this;
  undefined8 uVar1;
  int *piVar2;
  
  this = DAT_011edbc4;
  if ((DAT_01183e88 != param_1) && (DAT_01183e88 = param_1, DAT_011edbc4 != (void *)0x0)) {
    piVar2 = (int *)0x0;
    uVar1 = FUN_00c5f560((int)DAT_011edbc4);
    piVar2 = FUN_00c62810(this,(int)uVar1,(int)((ulonglong)uVar1 >> 0x20),piVar2);
    if (piVar2 != (int *)0x0) {
      FUN_00ab47c0(piVar2);
      return;
    }
  }
  return;
}

