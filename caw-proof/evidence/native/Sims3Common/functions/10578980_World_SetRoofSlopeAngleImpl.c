/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: World_SetRoofSlopeAngleImpl. Export ordinal(s):
   1597. Entry VA: 0x10578980. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CDC. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl World_SetRoofSlopeAngleImpl(int param_1)

{
  void *pvVar1;
  int *piVar2;
  float10 fVar3;
  undefined8 uVar4;
  int *piVar5;
  
  pvVar1 = DAT_10c700c4;
  if (DAT_10c700c4 != (void *)0x0) {
    piVar5 = (int *)0x0;
    uVar4 = FUN_10233750((int)DAT_10c700c4);
    piVar5 = FUN_10237010(pvVar1,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),piVar5);
    if ((piVar5 != (int *)0x0) && (pvVar1 = (void *)piVar5[0xab], pvVar1 != (void *)0x0)) {
      fVar3 = FUN_100c9820((float)param_1);
      fVar3 = (float10)fptan(fVar3 * (float10)_DAT_10aba5cc);
      FUN_10169060(pvVar1,(float)(fVar3 * (float10)_DAT_10b310ec));
      piVar2 = FUN_100a59b0();
      if (piVar2 == (int *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        *piVar2 = (int)&PTR_FUN_10ab8a58;
        LOCK();
        piVar2[1] = 0;
        UNLOCK();
        *piVar2 = (int)&PTR_FUN_10ab8a58;
        (**(code **)(*piVar2 + 4))();
      }
      piVar2[2] = piVar5[0x12];
      piVar2[3] = piVar5[0x13];
      piVar2[4] = 2;
      piVar5 = (int *)FUN_108835e0();
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 0x1c))(0x6e130aa,piVar2,0,0);
      }
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  return;
}

