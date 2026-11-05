/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX parent IWindow, one child IWindow stack word/RET4.
   Convert child to complete-4; acquire extra complete primary reference via virtual0. Call parent
   IWindow virtualE0(RemoveChild) with child interface, then child complete primary
   virtual1C(Shutdown), finally complete virtual4(Release). Additional reference preserves real
   child identity across detach callbacks. Direct child destruction and simple grid RemoveChild are
   distinct mechanisms; current layout-counter policy is not this native reference algorithm. */

void __thiscall UiWindowInterface_DestroyChild(void *this,void *childInterface)

{
  int *piVar1;
  
  if (childInterface == (void *)0x0) {
    piVar1 = (int *)0x0;
  }
  else {
    piVar1 = (int *)((int)childInterface + -4);
    if (piVar1 != (int *)0x0) {
      (**(code **)*piVar1)();
      goto LAB_005144f4;
    }
  }
  childInterface = (void *)0x0;
LAB_005144f4:
  (**(code **)(*(int *)this + 0xe0))(childInterface);
  (**(code **)(*piVar1 + 0x1c))();
  (**(code **)(*piVar1 + 4))();
  return;
}

