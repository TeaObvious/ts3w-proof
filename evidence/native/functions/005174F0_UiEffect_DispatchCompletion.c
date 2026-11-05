/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 66-instruction/162-byte effect completion dispatch. Physical owner at +0x14 and group at
   +0x68 select grouped versus window routes. In the selected ungrouped trigger-0/1 path call window
   virtual +0xA0, recheck owner, then tail-dispatch +0xA4. Grouped lower calls 005172A0/00517320
   remain unexpanded. These slots do not establish current numeric event IDs 0x10002/0x10003 or
   managed callback lifetime parity. */

void __fastcall UiEffect_DispatchCompletion(void *param_1)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  
  if (*(int **)((int)param_1 + 0x14) != (int *)0x0) {
    if (*(int *)((int)param_1 + 0x68) == 0) {
      if ((*(int *)((int)param_1 + 0x2c) == 0) || (*(int *)((int)param_1 + 0x2c) == 1)) {
        (**(code **)(**(int **)((int)param_1 + 0x14) + 0xa0))();
      }
      if (*(int *)((int)param_1 + 0x14) != 0) {
                    /* WARNING: Could not recover jumptable at 0x0051752f. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(**(int **)((int)param_1 + 0x14) + 0xa4))();
        return;
      }
    }
    else {
      piVar1 = FUN_005172a0(param_1,*(int **)((int)param_1 + 0x14));
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 0x28))();
        iVar2 = (**(code **)(*piVar1 + 0x18))();
        if (((iVar2 == 0) || (iVar2 = (**(code **)(*piVar1 + 0x18))(), iVar2 == 1)) &&
           (piVar1 = FUN_00517320(param_1,*(int **)((int)param_1 + 0x14)), piVar1 != (int *)0x0)) {
          iVar2 = **(int **)((int)param_1 + 0x14);
          uVar3 = (**(code **)(*piVar1 + 0x28))();
          (**(code **)(iVar2 + 0x74))(1,uVar3 & 0xffffff01);
        }
      }
    }
  }
  return;
}

