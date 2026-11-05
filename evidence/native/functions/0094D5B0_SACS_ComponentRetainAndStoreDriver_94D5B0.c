/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete38-instruction body: ignore null driver; first invoke driver+8 vtable slot0,
   proven atomic intrusive retain889AF0 through constructor-installed0102112C. Scan component
   pointer vector[+8,+C) for first null row, otherwise extend end by4 when space exists or delegate
   insertion/growth to982420. Store the same pointer after retain. No settlement or script-handle
   admission is checked here; no new rollback guarantee follows from allocation/growth failure.
   Component reference establishment is proven, full count ownership distribution is not. RET4. */

void __thiscall SACS_ComponentRetainAndStoreDriver_94D5B0(void *this,int param_1)

{
  int iVar1;
  int *piVar2;
  
  iVar1 = param_1;
  if (param_1 != 0) {
    (*(code *)**(undefined4 **)(param_1 + 8))();
    for (piVar2 = *(int **)((int)this + 8); piVar2 != *(int **)((int)this + 0xc);
        piVar2 = piVar2 + 1) {
      if (*piVar2 == 0) goto LAB_0094d5f1;
    }
    piVar2 = *(int **)((int)this + 0xc);
    if (piVar2 < *(int **)((int)this + 0x10)) {
      *(int **)((int)this + 0xc) = piVar2 + 1;
      if (piVar2 != (int *)0x0) {
LAB_0094d5f1:
        *piVar2 = iVar1;
        return;
      }
    }
    else {
      FUN_00982420((void *)((int)this + 8),piVar2,&param_1);
    }
  }
  return;
}

