/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_SetPagodaRoofCurveChoiceImpl
   at 0x00787470, bytes e9bb163800. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void __cdecl DirectTargetOf_World_World_SetPagodaRoofCurveChoiceImpl(int param_1)

{
  void *this;
  int *piVar1;
  undefined8 uVar2;
  int *piVar3;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar3 = (int *)0x0;
    uVar2 = FUN_00c5f560((int)DAT_011edbc4);
    piVar3 = FUN_00c62810(this,(int)uVar2,(int)((ulonglong)uVar2 >> 0x20),piVar3);
    if ((piVar3 != (int *)0x0) && ((void *)piVar3[0xab] != (void *)0x0)) {
      FUN_00b9a830((void *)piVar3[0xab],param_1);
      piVar1 = FUN_00adf150();
      if (piVar1 == (int *)0x0) {
        piVar1 = (int *)0x0;
      }
      else {
        *piVar1 = (int)&PTR_FUN_01065f8c;
        LOCK();
        piVar1[1] = 0;
        UNLOCK();
        *piVar1 = (int)&PTR_FUN_01065f8c;
        (**(code **)(*piVar1 + 4))();
      }
      piVar1[2] = piVar3[0x12];
      piVar1[3] = piVar3[0x13];
      piVar1[4] = 2;
      piVar3 = (int *)FUN_0044c4f0();
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x1c))(0x6e130aa,piVar1,0,0);
      }
      (**(code **)(*piVar1 + 8))();
      return;
    }
  }
  return;
}

