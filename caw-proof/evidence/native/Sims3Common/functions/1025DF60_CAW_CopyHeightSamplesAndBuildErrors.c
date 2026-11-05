/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Copies raw uint16 rows into interleaved height/error pairs,
   repeats the final authored sample/row into the padded grid, then calls 0x1025D860 to rebuild the
   error hierarchy. Caller supplies authored sample count and byte row stride. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

void __thiscall CAW_CopyHeightSamplesAndBuildErrors(void *this,int param_1,int param_2,uint param_3)

{
  int iVar1;
  undefined2 uVar2;
  int iVar3;
  undefined2 *puVar4;
  uint uVar5;
  uint uVar6;
  
  uVar6 = 0;
  if (param_3 != 0) {
    do {
      puVar4 = (undefined2 *)(**(int **)this + *(int *)((int)this + 8) * uVar6 * 4);
      uVar5 = 0;
      do {
        *puVar4 = *(undefined2 *)(param_1 + uVar5 * 2);
        uVar5 = uVar5 + 1;
        puVar4 = puVar4 + 2;
      } while (uVar5 < param_3);
      uVar2 = *(undefined2 *)(param_1 + -2 + param_3 * 2);
      uVar5 = param_3;
      if (param_3 < *(uint *)((int)this + 8)) {
        do {
          *puVar4 = uVar2;
          uVar5 = uVar5 + 1;
          puVar4 = puVar4 + 2;
        } while (uVar5 < *(uint *)((int)this + 8));
      }
      param_1 = param_1 + param_2;
      uVar6 = uVar6 + 1;
    } while (uVar6 < param_3);
  }
  uVar6 = *(uint *)((int)this + 8);
  iVar3 = **(int **)this;
  iVar1 = param_3 - 1;
  if (param_3 < uVar6) {
    do {
      memcpy((void *)(**(int **)this + *(int *)((int)this + 8) * param_3 * 4),
             (void *)(iVar3 + iVar1 * uVar6 * 4),*(int *)((int)this + 8) * 4);
      param_3 = param_3 + 1;
    } while (param_3 < *(uint *)((int)this + 8));
  }
  CAW_BuildTerrainDiamondErrors(this,*(uint *)((int)this + 0xc));
  return;
}

