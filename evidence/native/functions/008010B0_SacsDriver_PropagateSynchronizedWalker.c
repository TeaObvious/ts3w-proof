/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, masterwalker RET4. For each other
   current-or-pending actor, assign differing current and immediately pump retained callbacks; copy
   return28. When follower destination24 absent or equals master24, clear pending1C and
   retainedloop18 with native dirty propagation. No deep request-vector copy or inherited master
   ownership. */

void __thiscall SacsDriver_PropagateSynchronizedWalker(void *this,void *param_1)

{
  undefined4 uVar1;
  int iVar2;
  void *this_00;
  int iVar3;
  
  uVar1 = *(undefined4 *)((int)param_1 + 0x28);
  iVar2 = *(int *)((int)param_1 + 0x10);
  iVar3 = *(int *)((int)this + 0x10);
  if (iVar3 != *(int *)((int)this + 0x14)) {
    do {
      this_00 = *(void **)(iVar3 + 4);
      if ((this_00 != param_1) &&
         ((*(int *)((int)this_00 + 0x10) != 0 || (*(int *)((int)this_00 + 0x1c) != 0)))) {
        if (iVar2 != *(int *)((int)this_00 + 0x10)) {
          *(int *)((int)this_00 + 0x10) = iVar2;
          SACS_PumpWalkerCallbacks_800640((int)this_00);
        }
        *(undefined4 *)((int)this_00 + 0x28) = uVar1;
        if ((*(int *)((int)this_00 + 0x24) == 0) ||
           (*(int *)((int)param_1 + 0x24) == *(int *)((int)this_00 + 0x24))) {
          if (*(int *)((int)this_00 + 0x1c) != 0) {
            *(undefined4 *)((int)this_00 + 0x1c) = 0;
            SacsWalker_PropagateDirtyState(this_00,'\0');
          }
          *(undefined4 *)((int)this_00 + 0x18) = 0;
          SacsWalker_PropagateDirtyState(this_00,'\0');
        }
      }
      iVar3 = iVar3 + 8;
    } while (iVar3 != *(int *)((int)this + 0x14));
  }
  return;
}

