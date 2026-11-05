/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete49-instruction scheduling producer: current-driver/mode and supplied low-byte flag
   control whether7FFE10 is called. When selected driver equals current manager+14 in the admitted
   branch, set revisit byte+18 and return. Otherwise scan pending driver vector+1C/+20 for
   duplicate; append the same pointer by end+4 or growth982420. No intrusive retain is performed by
   this body. RET8. This is request/revisit coalescing, not an off-thread release FIFO or evidence
   of concurrent-vector safety;7FFE10/growth internals remain separately scoped. */

void __thiscall SACS_QueueOrRevisitDriver_7FCF80(void *this,int param_1,char param_2)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = param_1;
  if ((*(char *)((int)this + 0x19) == '\0') || (param_1 != *(int *)((int)this + 0x14))) {
    if (param_2 != '\0') goto LAB_007fcfb8;
  }
  else if (param_2 != '\0') {
    FUN_007ffe10(param_1);
  }
  if (iVar1 == *(int *)((int)this + 0x14)) {
    *(undefined1 *)((int)this + 0x18) = 1;
    return;
  }
LAB_007fcfb8:
  for (piVar2 = *(int **)((int)this + 0x1c); piVar2 != *(int **)((int)this + 0x20);
      piVar2 = piVar2 + 1) {
    if (*piVar2 == iVar1) {
      return;
    }
  }
  piVar2 = *(int **)((int)this + 0x20);
  if (piVar2 < *(int **)((int)this + 0x24)) {
    *(int **)((int)this + 0x20) = piVar2 + 1;
    if (piVar2 != (int *)0x0) {
      *piVar2 = iVar1;
      return;
    }
  }
  else {
    FUN_00982420((void *)((int)this + 0x1c),piVar2,&param_1);
  }
  return;
}

