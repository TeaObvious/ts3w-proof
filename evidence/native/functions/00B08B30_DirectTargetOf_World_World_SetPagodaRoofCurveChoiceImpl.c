/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_SetPagodaRoofCurveChoiceImpl
   at 0x00787470, bytes e9bb163800. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_SetPagodaRoofCurveChoiceImpl
   at 0x00787470, bytes e9bb163800. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __cdecl DirectTargetOf_World_World_SetPagodaRoofCurveChoiceImpl(int param_1)

{
  void *this;
  int *piVar1;
  int *piVar2;
  undefined8 uVar3;
  uint *visitCounter;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    visitCounter = (uint *)0x0;
    uVar3 = FUN_00c5f560((int)DAT_011edbc4);
    piVar1 = WorldObjects_FindLotByGuid
                       (this,(uint)uVar3,(uint)((ulonglong)uVar3 >> 0x20),visitCounter);
    if ((piVar1 != (int *)0x0) && ((void *)piVar1[0xab] != (void *)0x0)) {
      FUN_00b9a830((void *)piVar1[0xab],param_1);
      piVar2 = FloorMessagePool_AcquireStorage();
      if (piVar2 == (int *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        *piVar2 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar2[1] = 0;
        UNLOCK();
        *piVar2 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        (**(code **)(*piVar2 + 4))();
      }
      piVar2[2] = piVar1[0x12];
      piVar2[3] = piVar1[0x13];
      piVar2[4] = 2;
      piVar1 = (int *)MessageDispatch_GetCurrent();
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 0x1c))(0x6e130aa,piVar2,0,0);
      }
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  return;
}

