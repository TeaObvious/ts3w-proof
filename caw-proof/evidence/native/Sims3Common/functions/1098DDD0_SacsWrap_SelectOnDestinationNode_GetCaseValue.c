/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SelectOnDestinationNode_GetCaseValue;
   SacsWrap_SelectOnParameterNode_GetCaseValue. Export ordinal(s): 2177; 2183. Entry VA: 0x1098ddd0.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000E17; CSHostWrap:0x06000E2A. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SacsWrap_SelectOnDestinationNode_GetCaseValue(int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  
                    /* 0x98ddd0  2177  SacsWrap_SelectOnDestinationNode_GetCaseValue
                       0x98ddd0  2183  SacsWrap_SelectOnParameterNode_GetCaseValue */
  if (param_1 == 0) {
    return 0;
  }
  piVar5 = *(int **)(param_1 + 0x34);
  puVar4 = (undefined4 *)*piVar5;
  if (puVar4 == (undefined4 *)0x0) {
    piVar5 = piVar5 + 1;
    iVar2 = *piVar5;
    while (iVar2 == 0) {
      piVar5 = piVar5 + 1;
      iVar2 = *piVar5;
    }
    puVar4 = (undefined4 *)*piVar5;
  }
  puVar3 = *(undefined4 **)(*(int *)(param_1 + 0x34) + *(int *)(param_1 + 0x38) * 4);
  while( true ) {
    if (puVar4 == puVar3) {
      return 0;
    }
    if (param_2 == 0) break;
    puVar4 = (undefined4 *)puVar4[9];
    while (puVar4 == (undefined4 *)0x0) {
      piVar1 = piVar5 + 1;
      piVar5 = piVar5 + 1;
      puVar4 = (undefined4 *)*piVar1;
    }
    param_2 = param_2 + -1;
  }
  if (puVar4 == puVar3) {
    return 0;
  }
  return *puVar4;
}

