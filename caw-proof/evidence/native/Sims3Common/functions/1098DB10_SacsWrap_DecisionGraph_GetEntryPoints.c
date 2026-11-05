/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_DecisionGraph_GetEntryPoints. Export
   ordinal(s): 2135. Entry VA: 0x1098db10. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DAC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl SacsWrap_DecisionGraph_GetEntryPoints(int param_1,uint param_2,int param_3)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined4 *puVar5;
  int *piVar6;
  
                    /* 0x98db10  2135  SacsWrap_DecisionGraph_GetEntryPoints */
  if ((param_1 != 0) && ((param_2 == 0 || (param_3 != 0)))) {
    piVar6 = *(int **)(param_1 + 0x2c);
    puVar5 = (undefined4 *)*piVar6;
    if (puVar5 == (undefined4 *)0x0) {
      piVar6 = piVar6 + 1;
      iVar2 = *piVar6;
      while (iVar2 == 0) {
        piVar6 = piVar6 + 1;
        iVar2 = *piVar6;
      }
      puVar5 = (undefined4 *)*piVar6;
    }
    puVar3 = *(undefined4 **)(*(int *)(param_1 + 0x2c) + *(int *)(param_1 + 0x30) * 4);
    uVar4 = 0;
    while (puVar5 != puVar3) {
      if (uVar4 < param_2) {
        *(undefined4 *)(param_3 + uVar4 * 4) = *puVar5;
      }
      uVar4 = uVar4 + 1;
      puVar5 = (undefined4 *)puVar5[1];
      while (puVar5 == (undefined4 *)0x0) {
        piVar1 = piVar6 + 1;
        piVar6 = piVar6 + 1;
        puVar5 = (undefined4 *)*piVar1;
      }
    }
    return uVar4;
  }
  return 0;
}

