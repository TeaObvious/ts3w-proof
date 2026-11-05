/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 tree texture instruction contract. ECX32-byte map view, no stack args, void. Frees
   counted pointer arrays (including each collection element's seven-pointer array), adjusts global
   allocation accounting, clears view pointers including scalar. Does NOT destroy/copy borrowed
   authored strings. Counts words1/3 are used for nested iteration but not reset. Scope is temporary
   view lifetime, not texture-resource retention. */

void __thiscall SptMaps_DestroyStringViews(void *this)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  uint uVar4;
  
  if ((*(int *)this != 0) && (piVar3 = (int *)(*(int *)this + -4), piVar3 != (int *)0x0)) {
    _DAT_011d9628 = _DAT_011d9628 + *piVar3 * -4 + -4;
    if (DAT_011d9624 == (int *)0x0) {
      FUN_004e5e70(DAT_011cc864,(int)piVar3);
    }
    else {
      (**(code **)(*DAT_011d9624 + 8))();
    }
    *(undefined4 *)this = 0;
  }
  if (*(int *)((int)this + 8) != 0) {
    uVar4 = 0;
    if (*(int *)((int)this + 4) != 0) {
      do {
        iVar1 = *(int *)((int)this + 8);
        iVar2 = *(int *)(iVar1 + uVar4 * 4);
        if ((iVar2 != 0) && (piVar3 = (int *)(iVar2 + -4), piVar3 != (int *)0x0)) {
          _DAT_011d9628 = _DAT_011d9628 + *piVar3 * -4 + -4;
          if (DAT_011d9624 == (int *)0x0) {
            FUN_004e5e70(DAT_011cc864,(int)piVar3);
          }
          else {
            (**(code **)(*DAT_011d9624 + 8))();
          }
          *(undefined4 *)(iVar1 + uVar4 * 4) = 0;
        }
        uVar4 = uVar4 + 1;
      } while (uVar4 < *(uint *)((int)this + 4));
    }
    if ((*(int *)((int)this + 8) != 0) &&
       (piVar3 = (int *)(*(int *)((int)this + 8) + -4), piVar3 != (int *)0x0)) {
      _DAT_011d9628 = _DAT_011d9628 + *piVar3 * -4 + -4;
      if (DAT_011d9624 == (int *)0x0) {
        FUN_004e5e70(DAT_011cc864,(int)piVar3);
      }
      else {
        (**(code **)(*DAT_011d9624 + 8))();
      }
      *(undefined4 *)((int)this + 8) = 0;
    }
  }
  if (*(int *)((int)this + 0x10) != 0) {
    uVar4 = 0;
    if (*(int *)((int)this + 0xc) != 0) {
      do {
        iVar1 = *(int *)((int)this + 0x10);
        iVar2 = *(int *)(iVar1 + uVar4 * 4);
        if ((iVar2 != 0) && (piVar3 = (int *)(iVar2 + -4), piVar3 != (int *)0x0)) {
          _DAT_011d9628 = _DAT_011d9628 + *piVar3 * -4 + -4;
          if (DAT_011d9624 == (int *)0x0) {
            FUN_004e5e70(DAT_011cc864,(int)piVar3);
          }
          else {
            (**(code **)(*DAT_011d9624 + 8))();
          }
          *(undefined4 *)(iVar1 + uVar4 * 4) = 0;
        }
        uVar4 = uVar4 + 1;
      } while (uVar4 < *(uint *)((int)this + 0xc));
    }
    if ((*(int *)((int)this + 0x10) != 0) &&
       (piVar3 = (int *)(*(int *)((int)this + 0x10) + -4), piVar3 != (int *)0x0)) {
      _DAT_011d9628 = _DAT_011d9628 + *piVar3 * -4 + -4;
      if (DAT_011d9624 == (int *)0x0) {
        FUN_004e5e70(DAT_011cc864,(int)piVar3);
      }
      else {
        (**(code **)(*DAT_011d9624 + 8))();
      }
      *(undefined4 *)((int)this + 0x10) = 0;
    }
  }
  if ((*(int *)((int)this + 0x14) != 0) &&
     (piVar3 = (int *)(*(int *)((int)this + 0x14) + -4), piVar3 != (int *)0x0)) {
    _DAT_011d9628 = _DAT_011d9628 + *piVar3 * -4 + -4;
    if (DAT_011d9624 == (int *)0x0) {
      FUN_004e5e70(DAT_011cc864,(int)piVar3);
    }
    else {
      (**(code **)(*DAT_011d9624 + 8))();
    }
    *(undefined4 *)((int)this + 0x14) = 0;
  }
  if ((*(int *)((int)this + 0x18) != 0) &&
     (piVar3 = (int *)(*(int *)((int)this + 0x18) + -4), piVar3 != (int *)0x0)) {
    _DAT_011d9628 = _DAT_011d9628 + *piVar3 * -4 + -4;
    if (DAT_011d9624 == (int *)0x0) {
      FUN_004e5e70(DAT_011cc864,(int)piVar3);
    }
    else {
      (**(code **)(*DAT_011d9624 + 8))();
    }
    *(undefined4 *)((int)this + 0x18) = 0;
  }
  *(undefined4 *)this = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  return;
}

