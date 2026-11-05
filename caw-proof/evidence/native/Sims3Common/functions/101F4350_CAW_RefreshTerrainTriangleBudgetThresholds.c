/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: On first use initializes both budgets through0x101F4280 and
   marks initialized. Later recomputes both thresholds through0x1025E850 using the retained
   budget/ceiling pairs. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __fastcall CAW_RefreshTerrainTriangleBudgetThresholds(int param_1)

{
  int iVar1;
  float *pfVar2;
  float10 fVar3;
  
  if (*(char *)(param_1 + 0x48) == '\0') {
    CAW_InitializeTerrainTriangleBudgets(param_1);
    *(undefined1 *)(param_1 + 0x48) = 1;
    return;
  }
  pfVar2 = (float *)(param_1 + 0x54);
  iVar1 = 2;
  do {
    if (*(void **)(param_1 + 0x68) != (void *)0x0) {
      fVar3 = CAW_SelectTerrainTriangleBudgetThreshold
                        (*(void **)(param_1 + 0x68),(uint)pfVar2[-1],0x100,(uint)pfVar2[-2]);
      *pfVar2 = (float)fVar3;
    }
    pfVar2 = pfVar2 + 3;
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  return;
}

