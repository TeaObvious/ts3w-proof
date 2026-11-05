/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. If owner+48 false, initializes budget records via00c22c30
   and sets flag. Otherwise recalculates two existing budget records using optimizer00c88a80.
   Heightmap unload preserves this owner and its budget records. */

void __thiscall TerrainOptimizerOwner_RefreshBudgets(void *this)

{
  int iVar1;
  float *pfVar2;
  float10 fVar3;
  
  if (*(char *)((int)this + 0x48) == '\0') {
    TerrainOptimizerOwner_InitializeBudgets(this);
    *(undefined1 *)((int)this + 0x48) = 1;
    return;
  }
  pfVar2 = (float *)((int)this + 0x54);
  iVar1 = 2;
  do {
    if (*(void **)((int)this + 0x68) != (void *)0x0) {
      fVar3 = FUN_00c88a80(*(void **)((int)this + 0x68),(uint)pfVar2[-1],0x100,(uint)pfVar2[-2]);
      *pfVar2 = (float)fVar3;
    }
    pfVar2 = pfVar2 + 3;
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  return;
}

