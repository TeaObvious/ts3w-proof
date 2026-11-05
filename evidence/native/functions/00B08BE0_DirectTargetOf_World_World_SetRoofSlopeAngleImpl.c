/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

/* Retained historical annotation 2, previous C line 7; earlier snapshot context. */
/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_SetRoofSlopeAngleImpl at
   0x00787490, bytes e94b173800. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */



/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.World::World_SetRoofSlopeAngleImpl at
   0x00787490, bytes e94b173800. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __cdecl DirectTargetOf_World_World_SetRoofSlopeAngleImpl(int param_1)

{
  void *pvVar1;
  int *piVar2;
  int *piVar3;
  float10 fVar4;
  undefined8 uVar5;
  uint *visitCounter;
  
  pvVar1 = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    visitCounter = (uint *)0x0;
    uVar5 = FUN_00c5f560((int)DAT_011edbc4);
    piVar2 = WorldObjects_FindLotByGuid
                       (pvVar1,(uint)uVar5,(uint)((ulonglong)uVar5 >> 0x20),visitCounter);
    if ((piVar2 != (int *)0x0) && (pvVar1 = (void *)piVar2[0xab], pvVar1 != (void *)0x0)) {
      fVar4 = FUN_00b02630((float)param_1);
      fVar4 = (float10)fptan(fVar4 * (float10)0.017453292);
      FUN_00b9a660(pvVar1,(float)(fVar4 * (float10)0.5));
      piVar3 = FloorMessagePool_AcquireStorage();
      if (piVar3 == (int *)0x0) {
        piVar3 = (int *)0x0;
      }
      else {
        *piVar3 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        piVar3[1] = 0;
        UNLOCK();
        *piVar3 = (int)&PTR_DestroyPooledFloorMessage_01065f8c;
        (**(code **)(*piVar3 + 4))();
      }
      piVar3[2] = piVar2[0x12];
      piVar3[3] = piVar2[0x13];
      piVar3[4] = 2;
      piVar2 = (int *)MessageDispatch_GetCurrent();
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 0x1c))(0x6e130aa,piVar3,0,0);
      }
      (**(code **)(*piVar3 + 8))();
      return;
    }
  }
  return;
}

