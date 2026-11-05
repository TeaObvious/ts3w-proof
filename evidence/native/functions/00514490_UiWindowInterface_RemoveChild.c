/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX is parent IWindow interface at complete+4, one child
   IWindow stack word/RET4. Convert nonnull child to complete pointer by subtract4, unlink its
   intrusive child node FIRST, then load parent interface+2C (complete+30 service). If present
   call50CBC0(service,childComplete), then clear childComplete+2C parent pointer and release child
   primary virtual4. The same childComplete in ESI survives notification; a callback does not
   authorize replacing it by a fresh handle lookup. No child Shutdown is directly called here; no
   safe null-child contract should be inferred from the conversion branches. */

void __thiscall UiWindowInterface_RemoveChild(void *this,void *childInterface)

{
  int *piVar1;
  int iVar2;
  code *pcVar3;
  int *windowComplete;
  
  if (childInterface == (void *)0x0) {
    windowComplete = (int *)0x0;
  }
  else {
    windowComplete = (int *)((int)childInterface + -4);
  }
  piVar1 = (int *)windowComplete[3];
  iVar2 = windowComplete[2];
  *piVar1 = iVar2;
  *(int **)(iVar2 + 4) = piVar1;
  if (*(void **)((int)this + 0x2c) != (void *)0x0) {
    UiWindowService_DetachSubtree(*(void **)((int)this + 0x2c),windowComplete);
  }
  pcVar3 = *(code **)(*windowComplete + 4);
  windowComplete[0xb] = 0;
  (*pcVar3)();
  return;
}

