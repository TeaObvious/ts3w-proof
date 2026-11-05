/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, actorhash RET4, AL Boolean. Actor0
   returns true after existing-row iteration without checking each status. Nonzero first equal hash
   returns nonnull walker membership; absent or null returns false. No lazy allocation and no
   join-status test. */

bool __thiscall SacsDriver_CanPauseActor(void *this,int param_1)

{
  int *piVar1;
  int iVar2;
  bool bVar3;
  
  if (param_1 == 0) {
    iVar2 = *(int *)((int)this + 0x10);
    bVar3 = true;
    while (iVar2 != *(int *)((int)this + 0x14)) {
      bVar3 = bVar3 != false;
      iVar2 = iVar2 + 8;
      if (!bVar3) {
        return false;
      }
    }
  }
  else {
    for (piVar1 = *(int **)((int)this + 0x10); piVar1 != *(int **)((int)this + 0x14);
        piVar1 = piVar1 + 2) {
      if (*piVar1 == param_1) {
        if (piVar1[1] != 0) {
          return true;
        }
        break;
      }
    }
    bVar3 = false;
  }
  return bVar3;
}

