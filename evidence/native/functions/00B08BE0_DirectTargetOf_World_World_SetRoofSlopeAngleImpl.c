/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_SetRoofSlopeAngleImpl at
   0x00787490, bytes e94b173800. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

void __cdecl DirectTargetOf_World_World_SetRoofSlopeAngleImpl(int param_1)

{
  void *pvVar1;
  int *piVar2;
  float10 fVar3;
  undefined8 uVar4;
  int *piVar5;
  
  pvVar1 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar5 = (int *)0x0;
    uVar4 = FUN_00c5f560((int)DAT_011edbc4);
    piVar5 = FUN_00c62810(pvVar1,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),piVar5);
    if ((piVar5 != (int *)0x0) && (pvVar1 = (void *)piVar5[0xab], pvVar1 != (void *)0x0)) {
      fVar3 = FUN_00b02630((float)param_1);
      fVar3 = (float10)fptan(fVar3 * (float10)_DAT_0106b7ac);
      FUN_00b9a660(pvVar1,(float)(fVar3 * (float10)_DAT_00f9b5b4));
      piVar2 = FUN_00adf150();
      if (piVar2 == (int *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        *piVar2 = (int)&PTR_FUN_01065f8c;
        LOCK();
        piVar2[1] = 0;
        UNLOCK();
        *piVar2 = (int)&PTR_FUN_01065f8c;
        (**(code **)(*piVar2 + 4))();
      }
      piVar2[2] = piVar5[0x12];
      piVar2[3] = piVar5[0x13];
      piVar2[4] = 2;
      piVar5 = (int *)FUN_0044c4f0();
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 0x1c))(0x6e130aa,piVar2,0,0);
      }
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  return;
}

