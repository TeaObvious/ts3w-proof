/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Copies at most seven 32-bit FLOAT score weights to
   destination+0x0c. If source/count is zero it does nothing. Count uses unsigned min(count,7);
   remaining constructor-zero slots retain zero. Copies values without normalization or positivity
   filtering. */

void __thiscall RouteDestination_CopyScoreWeights(void *this,uint param_1,uint param_2)

{
  uint uVar1;
  uint uVar2;
  uint *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  uint uVar6;
  int iVar7;
  
  uVar2 = param_1;
  if ((param_1 != 0) && (param_2 != 0)) {
    param_1 = 7;
    puVar3 = &param_1;
    if (param_2 < 8) {
      puVar3 = &param_2;
    }
    uVar1 = *puVar3;
    uVar6 = 0;
    if (3 < (int)uVar1) {
      iVar7 = (uVar1 - 4 >> 2) + 1;
      uVar6 = iVar7 * 4;
      puVar5 = (undefined4 *)(uVar2 + 8);
      puVar4 = this;
      do {
        puVar4[3] = puVar5[-2];
        iVar7 = iVar7 + -1;
        puVar4[4] = puVar5[-1];
        puVar4[5] = *puVar5;
        puVar4[6] = puVar5[1];
        puVar5 = puVar5 + 4;
        puVar4 = puVar4 + 4;
      } while (iVar7 != 0);
    }
    if (uVar6 < uVar1) {
      puVar4 = (undefined4 *)((int)this + uVar6 * 4 + 0xc);
      do {
        iVar7 = uVar6 * 4;
        uVar6 = uVar6 + 1;
        *puVar4 = *(undefined4 *)(uVar2 + iVar7);
        puVar4 = puVar4 + 1;
      } while (uVar6 < uVar1);
    }
  }
  return;
}

