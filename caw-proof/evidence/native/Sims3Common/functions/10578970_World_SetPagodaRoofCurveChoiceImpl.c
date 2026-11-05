/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetPagodaRoofCurveChoiceImpl. Export
   ordinal(s): 1595. Entry VA: 0x10578970. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000CDA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl World_SetPagodaRoofCurveChoiceImpl(int param_1)

{
  void *this;
  int *piVar1;
  undefined8 uVar2;
  int *piVar3;
  
  this = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    piVar3 = (int *)0x0;
    uVar2 = FUN_10233750((int)DAT_10c700c4);
    piVar3 = FUN_10237010(this,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),piVar3);
    if ((piVar3 != (int *)0x0) && ((void *)piVar3[0xab] != (void *)0x0)) {
      FUN_10169230((void *)piVar3[0xab],param_1);
      piVar1 = FUN_100a59b0();
      if (piVar1 == (int *)0x0) {
        piVar1 = (int *)0x0;
      }
      else {
        *piVar1 = (int)&PTR_FUN_10ab8a58;
        LOCK();
        piVar1[1] = 0;
        UNLOCK();
        *piVar1 = (int)&PTR_FUN_10ab8a58;
        (**(code **)(*piVar1 + 4))();
      }
      piVar1[2] = piVar3[0x12];
      piVar1[3] = piVar3[0x13];
      piVar1[4] = 2;
      piVar3 = (int *)FUN_108835e0();
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x1c))(0x6e130aa,piVar1,0,0);
      }
      (**(code **)(*piVar1 + 8))();
      return;
    }
  }
  return;
}

