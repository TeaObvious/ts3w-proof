/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StateMachine_GetParameterDefinitions.
   Export ordinal(s): 2215. Entry VA: 0x1098da90. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000CEC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl SacsWrap_StateMachine_GetParameterDefinitions(int param_1,uint param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int *piVar5;
  
                    /* 0x98da90  2215  SacsWrap_StateMachine_GetParameterDefinitions */
  if ((param_1 != 0) && ((param_2 == 0 || (param_3 != 0)))) {
    piVar5 = *(int **)(param_1 + 100);
    iVar4 = *piVar5;
    if (iVar4 == 0) {
      piVar5 = piVar5 + 1;
      iVar4 = *piVar5;
      while (iVar4 == 0) {
        piVar5 = piVar5 + 1;
        iVar4 = *piVar5;
      }
      iVar4 = *piVar5;
    }
    iVar2 = *(int *)(*(int *)(param_1 + 100) + *(int *)(param_1 + 0x68) * 4);
    uVar3 = 0;
    while (iVar4 != iVar2) {
      if (uVar3 < param_2) {
        *(undefined4 *)(param_3 + uVar3 * 4) = *(undefined4 *)(iVar4 + 4);
      }
      uVar3 = uVar3 + 1;
      iVar4 = *(int *)(iVar4 + 8);
      while (iVar4 == 0) {
        piVar1 = piVar5 + 1;
        piVar5 = piVar5 + 1;
        iVar4 = *piVar1;
      }
    }
    return uVar3;
  }
  return 0;
}

