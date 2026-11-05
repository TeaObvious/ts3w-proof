/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; tracked native window identity handler, physical thiscall ECX
   complete Button plus context DWORD and window-interface pointer, RET8. Context1: entering this+4
   requests Highlighted8 on, then queries capture context1 and requests Depressed2 according to
   identity; leaving requests Highlighted8 off then Depressed2 off. Other contexts request
   Active10hex according to interface identity and, after that setter callback, compare the saved
   incoming pointer with this+4 again; mismatch requests Depressed2 off. SETZ writes only AL before
   PUSH EAX at5183DF/51843D: upper EAX bits are unnormalized; concrete setter517FB0 tests only the
   low byte at stack+8, so these high bits do not affect its mask choice. All normal returns AL1.
   Primary vtableFBC418 slot5C; context semantics beyond selected identity operations are not
   guessed. */

bool __thiscall
UiButton_HandleTrackedWindowChange(void *this,uint context,void *trackedWindowInterface)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  
  if (context != 1) {
    if (this == (void *)0x0) {
      pvVar2 = (void *)0x0;
    }
    else {
      pvVar2 = (void *)((int)this + 4);
    }
                    /* Analyst: PUSH EAX after SETZ AL retains unnormalized upper24 bits; not a
                       zero-extended DWORD Boolean; concrete517FB0 reads only that low byte. */
    (**(code **)(*(int *)((int)this + 0x250) + 0x28))
              (0x10,CONCAT31((int3)((uint)pvVar2 >> 8),trackedWindowInterface == pvVar2));
    if (trackedWindowInterface != (void *)((int)this + 4)) {
      (**(code **)(*(int *)((int)this + 0x250) + 0x28))(2,0);
    }
    return true;
  }
  if (this == (void *)0x0) {
    pvVar2 = (void *)0x0;
  }
  else {
    pvVar2 = (void *)((int)this + 4);
  }
  if (trackedWindowInterface == pvVar2) {
    (**(code **)(*(int *)((int)this + 0x250) + 0x28))(8,1);
    iVar1 = *(int *)((int)this + 0x250);
    iVar3 = (**(code **)(**(int **)((int)this + 0x30) + 0x60))(1);
                    /* Analyst: PUSH EAX after SETZ AL retains unnormalized upper24 bits; concrete
                       setter517FB0 reads only the low byte at stack+8. */
    (**(code **)(iVar1 + 0x28))(2,iVar3 == (int)this + 4);
    return true;
  }
  (**(code **)(*(int *)((int)this + 0x250) + 0x28))(8,0);
  (**(code **)(*(int *)((int)this + 0x250) + 0x28))(2,0);
  return true;
}

