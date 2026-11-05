/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: Three cdecl stack words, plain RET. Sample candidate virtual+0x30 with
   third0, store binary32 maximum, retain candidate references within strict abs difference<binary32
   0.001. Called by C3CF50 for each narrowing query. Concrete subtype/coordinate domain remains
   separate. Descriptive analyst role, not a recovered original symbol. */

void __cdecl RoofCandidates_CollectMaximumHeightTies(int *param_1,undefined4 *param_2,char *param_3)

{
  float fVar1;
  int *piVar2;
  int iVar3;
  char *this;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  void *unaff_EDI;
  float *pfVar7;
  float10 fVar8;
  float fVar9;
  float *local_10 [2];
  int *piStack_8;
  
  this = param_3;
  FUN_00be7d50(*(int **)param_3,*(int **)(param_3 + 4));
  *(undefined4 *)(this + 4) = *(undefined4 *)this;
  uVar5 = param_1[1] - *param_1 >> 2;
  if (uVar5 != 0) {
    param_3 = "Lot/GetRoofsWithMaxHeightAtLocation/htArray";
    FUN_00d4c330(local_10,uVar5,&param_3);
    uVar6 = uVar5;
    pfVar7 = local_10[0];
    if (uVar5 != 0) {
      for (; uVar6 != 0; uVar6 = uVar6 - 1) {
        *pfVar7 = 0.0;
        pfVar7 = pfVar7 + 1;
      }
    }
    fVar8 = (float10)(**(code **)(**(int **)*param_1 + 0x30))(*param_2,param_2[1],0);
    *local_10[0] = (float)fVar8;
    fVar9 = *local_10[0];
    uVar6 = 1;
    if (1 < uVar5) {
      do {
        fVar8 = (float10)(**(code **)(**(int **)(*piStack_8 + uVar6 * 4) + 0x30))
                                   (*param_2,param_2[1],0);
        *(float *)((int)unaff_EDI + uVar6 * 4) = (float)fVar8;
        fVar1 = *(float *)((int)unaff_EDI + uVar6 * 4);
        if (fVar9 < fVar1) {
          fVar9 = fVar1;
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 < uVar5);
    }
    uVar6 = 0;
    if (uVar5 != 0) {
      do {
        if (ABS(*(float *)(uVar6 * 4 + (int)unaff_EDI) - fVar9) < 0.001) {
          piVar2 = *(int **)(this + 4);
          piVar4 = (int *)(*piStack_8 + uVar6 * 4);
          if (piVar2 < *(int **)(this + 8)) {
            *(int **)(this + 4) = piVar2 + 1;
            if (piVar2 != (int *)0x0) {
              iVar3 = *piVar4;
              *piVar2 = iVar3;
              if (iVar3 != 0) {
                LOCK();
                *(int *)(iVar3 + 4) = *(int *)(iVar3 + 4) + 1;
                UNLOCK();
              }
            }
          }
          else {
            FUN_00beb2b0(this,piVar2,piVar4);
          }
        }
        uVar6 = uVar6 + 1;
      } while (uVar6 < uVar5);
    }
    Memory_FreeIfNonNull(unaff_EDI);
  }
  return;
}

