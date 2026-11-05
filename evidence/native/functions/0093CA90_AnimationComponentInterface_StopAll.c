/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Interface this=component+8: invokes
   TrackManager_StopAll if runtime/manager exists, then own interface vtable+0x28
   cleanup/finalization. Stop does not allocate runtime in this function. */

void __fastcall AnimationComponentInterface_StopAll(int *param_1)

{
  int iVar1;
  
  iVar1 = param_1[7];
  if ((iVar1 != 0) && (*(int *)(iVar1 + 0xb0) != 0)) {
    if (iVar1 == 0) {
      iVar1 = 0;
    }
    else {
      iVar1 = *(int *)(iVar1 + 0xb0);
    }
    AnimationTrackManager_StopAll(iVar1);
  }
                    /* WARNING: Could not recover jumptable at 0x0093cac0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*param_1 + 0x28))();
  return;
}

