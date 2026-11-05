/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete WindowBase, no stack words/plain RET, only AL
   true; old fastcall/uint metadata was imprecise. Repeatedly removes current first procedure
   via5158B0 until list+218 empty, then515700. Subsequently repeatedly removes child via IWindow
   complete+4 virtualE4; release/null actual members+204,+20C,+208. Procedure callbacks precede
   child teardown. Full owned body skips7 alignment bytes515B99..9F throughJMP515B97->515BA0;
   canonical envelope marks them unowned. Do not treat this function as the entire CLR layout-lease
   algorithm. */

bool __thiscall UiWindow_Shutdown(void *this)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  piVar1 = (int *)((int)this + 0x218);
  piVar2 = (int *)*piVar1;
  while (piVar2 != piVar1) {
    UiWindow_RemoveProcedure(this,*(void **)(*piVar1 + 8));
    piVar2 = (int *)*piVar1;
  }
  FUN_00515700((int)this);
  if (*(int *)((int)this + 0x214) != (int)this + 0x210) {
    do {
      iVar3 = *(int *)((int)this + 0x214);
      if ((iVar3 == 0) || (iVar3 == 8)) {
        iVar3 = 0;
      }
      else {
        iVar3 = iVar3 + -4;
      }
      (**(code **)(*(int *)((int)this + 4) + 0xe4))(iVar3);
    } while (*(int *)((int)this + 0x214) != (int)this + 0x210);
  }
  piVar1 = *(int **)((int)this + 0x204);
  if (piVar1 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x204) = 0;
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = *(int **)((int)this + 0x20c);
  if (piVar1 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x20c) = 0;
    (**(code **)(*piVar1 + 4))();
  }
  piVar1 = *(int **)((int)this + 0x208);
  if (piVar1 != (int *)0x0) {
    *(undefined4 *)((int)this + 0x208) = 0;
    (**(code **)(*piVar1 + 4))();
  }
  return true;
}

