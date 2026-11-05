/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SetAGS. Export ordinal(s): 688. Entry VA:
   0x105485d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060001C3. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_SetAGS(uint param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  undefined4 *puVar6;
  int iVar7;
  
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar4 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar4 != (int *)0x0)) {
    (**(code **)(*piVar4 + 0x10))();
    piVar4[0xf] = param_2;
    for (piVar2 = (int *)piVar4[0x38]; piVar2 != piVar4 + 0x38; piVar2 = (int *)*piVar2) {
      piVar3 = (int *)piVar2[2];
      if (piVar3 != (int *)0x0) {
        LOCK();
        piVar3[1] = piVar3[1] + 1;
        UNLOCK();
      }
      iVar5 = (**(code **)(*piVar3 + 0xc))();
      iVar7 = piVar4[0xf];
      puVar6 = (undefined4 *)FUN_1060e130(iVar5);
      FUN_10650fa0(piVar3,puVar6,iVar7);
      piVar1 = piVar3 + 1;
      LOCK();
      iVar7 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar7 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar3)(1);
      }
    }
                    /* WARNING: Could not recover jumptable at 0x10546a29. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar4 + 0x14))();
    return;
  }
  return;
}

