/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX lot. Clear+4B0; requires floor
   manager, rejects +4BC and Commercial subtype80. Compare local sea against ground perimeter, X
   edges then interior Z edges; a strictly below-sea edge sets flag. AB1A90 subtracts lot transform
   originY from world sea. This is state production, not merely a saved LDES Boolean. */

void __fastcall Lot_RefreshSeaBoundaryFlag(int *param_1)

{
  float *pfVar1;
  float fVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  float10 fVar7;
  
  *(undefined1 *)(param_1 + 300) = 0;
  if (((param_1[0xa4] != 0) && ((char)param_1[0x12f] == '\0')) &&
     ((param_1[0x102] != 1 || (param_1[0x103] != 0x50)))) {
    fVar7 = Lot_GetLocalSeaLevel(param_1);
    fVar2 = (float)fVar7;
    iVar3 = param_1[0x5e];
    iVar6 = 0;
    if (-1 < iVar3) {
      iVar4 = param_1[0xa4];
      do {
        iVar5 = *(int *)(iVar4 + 0x24);
        pfVar1 = (float *)(*(int *)(iVar5 + 0x10) +
                          ((*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) * *(int *)(iVar5 + 8) *
                           *(int *)(iVar5 + 4) + iVar6) * 4);
        if ((*pfVar1 <= fVar2 && fVar2 != *pfVar1) ||
           (iVar5 = *(int *)(iVar4 + 0x24),
           pfVar1 = (float *)(*(int *)(iVar5 + 0x10) +
                             (((*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) *
                               *(int *)(iVar5 + 4) + param_1[0x5d]) * *(int *)(iVar5 + 8) + iVar6) *
                             4), *pfVar1 <= fVar2 && fVar2 != *pfVar1)) goto LAB_00ab77ca;
        iVar6 = iVar6 + 1;
      } while (iVar6 <= iVar3);
    }
    iVar6 = 1;
    if (1 < param_1[0x5d]) {
      iVar4 = param_1[0xa4];
      while ((iVar5 = *(int *)(iVar4 + 0x24),
             pfVar1 = (float *)(*(int *)(iVar5 + 0x10) +
                               ((*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) *
                                *(int *)(iVar5 + 4) + iVar6) * *(int *)(iVar5 + 8) * 4),
             fVar2 < *pfVar1 || fVar2 == *pfVar1 &&
             (iVar5 = *(int *)(iVar4 + 0x24),
             pfVar1 = (float *)(*(int *)(iVar5 + 0x10) +
                               (((*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) *
                                 *(int *)(iVar5 + 4) + iVar6) * *(int *)(iVar5 + 8) + iVar3) * 4),
             fVar2 < *pfVar1 || fVar2 == *pfVar1))) {
        iVar6 = iVar6 + 1;
        if (param_1[0x5d] <= iVar6) {
          return;
        }
      }
LAB_00ab77ca:
      *(undefined1 *)(param_1 + 300) = 1;
    }
  }
  return;
}

