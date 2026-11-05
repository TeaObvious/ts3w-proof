/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: When terrain raw mode is active, rebuilds the optimizer and
   thresholds, sets every world terrain tile desired detail to1 and calls0x10259B80 for each tile.
   This closes the initial editable collision producer: the original builds adaptive KD geometry
   rather than assuming the raw HeightFieldShape for all queries. Authored collision mode has a
   separate asset-loading path. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

void __fastcall CAW_BuildAllEditableTerrainCollision(void *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  void *this;
  undefined4 *puVar4;
  char local_9;
  undefined4 *local_8;
  undefined4 *local_4;
  
  if (*(char *)(*(int *)((int)param_1 + 100) + 0x1c) == '\0') {
    iVar2 = *(int *)((int)param_1 + 0x68);
    CAW_RebuildTerrainOptimizerFromRaster(iVar2);
    CAW_RefreshTerrainTriangleBudgetThresholds(iVar2);
    puVar1 = *(undefined4 **)((int)param_1 + 0xb4);
    for (puVar4 = *(undefined4 **)((int)param_1 + 0xb0); puVar4 != puVar1; puVar4 = puVar4 + 1) {
      piVar3 = (int *)*puVar4;
      piVar3[0x18] = 1;
      CAW_RebuildEditableTerrainChunkCollision(param_1,piVar3);
    }
  }
  else {
    puVar4 = *(undefined4 **)((int)param_1 + 0xb0);
    local_4 = *(undefined4 **)((int)param_1 + 0xb4);
    if (puVar4 != local_4) {
      do {
        puVar1 = (undefined4 *)*puVar4;
        local_9 = '\0';
        local_8 = puVar4;
        FUN_102597f0(param_1,puVar1,&local_9);
        this = (void *)FUN_1047dd40();
        if (this != (void *)0x0) {
          piVar3 = puVar1 + 0x1c;
          if ((undefined4 *)puVar1[0x1c] != (undefined4 *)0x0) {
            FUN_1047e1f0(this,(undefined4 *)puVar1[0x1c]);
          }
          puVar4 = (undefined4 *)*piVar3;
          if (puVar4 != (undefined4 *)0x0) {
            *piVar3 = 0;
            FUN_10479a60(puVar4);
          }
          FUN_101fa400(*(void **)((int)param_1 + 100),puVar1[3],puVar1[4],piVar3);
          puVar4 = local_8;
          if (*piVar3 != 0) {
            FUN_1047e170(this,*piVar3,0);
            puVar4 = local_8;
          }
        }
        puVar4 = puVar4 + 1;
      } while (puVar4 != local_4);
      return;
    }
  }
  return;
}

