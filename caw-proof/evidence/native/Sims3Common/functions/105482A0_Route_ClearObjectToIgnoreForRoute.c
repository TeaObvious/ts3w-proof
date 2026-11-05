/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_ClearObjectToIgnoreForRoute. Export
   ordinal(s): 625. Entry VA: 0x105482a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060001A0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl Route_ClearObjectToIgnoreForRoute(uint param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar4 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar4 != (int *)0x0)) {
    (**(code **)(*piVar4 + 0x10))();
    puVar5 = (undefined4 *)FUN_1039b2a0((int)(piVar4 + 0x56));
    puVar5[1] = *puVar5;
    piVar6 = (int *)piVar4[0x38];
    if (piVar6 != piVar4 + 0x38) {
      do {
        piVar3 = (int *)piVar6[2];
        if (piVar3 != (int *)0x0) {
          LOCK();
          piVar3[1] = piVar3[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar3 + 0x10))(piVar4 + 0x56);
        piVar1 = piVar3 + 1;
        LOCK();
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*piVar3)(1);
        }
        piVar6 = (int *)*piVar6;
      } while (piVar6 != piVar4 + 0x38);
    }
                    /* WARNING: Could not recover jumptable at 0x105458b9. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar4 + 0x14))();
    return;
  }
  return;
}

