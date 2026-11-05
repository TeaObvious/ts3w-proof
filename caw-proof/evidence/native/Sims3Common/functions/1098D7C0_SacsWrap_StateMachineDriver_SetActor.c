/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachineDriver_SetActor. Export
   ordinal(s): 2201. Entry VA: 0x1098d7c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000D92. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl SacsWrap_StateMachineDriver_SetActor(void *param_1,wint_t *param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
                    /* 0x98d7c0  2201  SacsWrap_StateMachineDriver_SetActor */
  if ((param_1 != (void *)0x0) && (param_2 != (wint_t *)0x0)) {
    iVar2 = FUN_1072a1a0();
    puVar3 = (undefined4 *)FUN_1072abb0(iVar2);
    if (puVar3 != (undefined4 *)0x0) {
      LOCK();
      puVar3[1] = puVar3[1] + 1;
      UNLOCK();
    }
    FUN_105f6180(param_1,param_2,puVar3);
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  return;
}

