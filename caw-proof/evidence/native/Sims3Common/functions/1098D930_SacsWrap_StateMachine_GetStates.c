/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_GetStates. Export
   ordinal(s): 2216. Entry VA: 0x1098d930. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CEA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl SacsWrap_StateMachine_GetStates(void *param_1,uint param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  int local_8;
  int local_4;
  
                    /* 0x98d930  2216  SacsWrap_StateMachine_GetStates */
  if ((param_1 != (void *)0x0) && ((param_2 == 0 || (param_3 != 0)))) {
    FUN_105f2150(param_1,&local_8);
    iVar2 = *(int *)(*(int *)((int)param_1 + 0x84) + *(int *)((int)param_1 + 0x88) * 4);
    uVar3 = 0;
    if (local_8 != iVar2) {
      do {
        if (uVar3 < param_2) {
          *(undefined4 *)(param_3 + uVar3 * 4) = *(undefined4 *)(local_8 + 4);
        }
        uVar3 = uVar3 + 1;
        local_8 = *(int *)(local_8 + 8);
        while (local_8 == 0) {
          piVar1 = (int *)(local_4 + 4);
          local_4 = local_4 + 4;
          local_8 = *piVar1;
        }
      } while (local_8 != iVar2);
      return uVar3;
    }
  }
  return 0;
}

