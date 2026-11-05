/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, actor/state hash words, RET8.
   Actor0 or failed lookup applies resolved state to all existing8-byte bindings. Defined
   actor/unresolved state sets strict error145 only when144 and emits ResultFFFFFFFD. State0
   resolves null; all-actor place then remains null-noop. No immediate update or meaningful Boolean
   result. */

void __thiscall SacsDriver_EnterActorState(void *this,int param_1,int param_2)

{
  int iVar1;
  void *pvVar2;
  undefined4 *this_00;
  int *piVar3;
  uint uVar4;
  int iVar5;
  
  if (param_1 == 0) {
    pvVar2 = (void *)0x0;
  }
  else {
    pvVar2 = (void *)SACS_LookupDestinationWalker_803c00(this,param_1);
  }
  uVar4 = 0;
  if (*(int *)((int)this + 0xc) != 0) {
    if (param_2 == 0) {
      uVar4 = 0;
    }
    else {
      uVar4 = SACS_FindGraphStateByHash(*(int *)((int)this + 0xc));
    }
  }
  if (pvVar2 == (void *)0x0) {
    iVar1 = *(int *)((int)this + 0x14);
    for (iVar5 = *(int *)((int)this + 0x10); iVar5 != iVar1; iVar5 = iVar5 + 8) {
      SacsDriver_PlaceActorWalker(this,*(void **)(iVar5 + 4),uVar4);
    }
    return;
  }
  if (uVar4 != 0) {
    SacsDriver_PlaceActorWalker(this,pvVar2,uVar4);
    return;
  }
  if (*(char *)((int)this + 0x144) != '\0') {
    *(undefined1 *)((int)this + 0x145) = 1;
  }
  this_00 = FUN_007427b0();
  if (this_00 == (undefined4 *)0x0) {
    SACS_AdmitFilteredEvent(this,(int *)0x0);
    return;
  }
  piVar3 = (int *)FUN_008004c0(this_00,1,0xfffffffd);
  SACS_AdmitFilteredEvent(this,piVar3);
  return;
}

