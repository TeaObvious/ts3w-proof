/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; actual Scrollbar primaryFBFBC8 slotA4 state/rectangle producer.
   Physical thiscall ECX complete window plus context/component stack words, RET8, void.
   Drawable+204 null skips. Initialize16-byte state with flags0/component and copied
   complete+200/+1FC. Compare zero-extended hover byte+284 then pressed byte+285 with DWORD
   component, selecting3 when both match,2 hover only. Only afterwards query IWindow+4 virtual28 and
   replace flagword with1 when window Enabled2 is clear. Orientation+280==2 ORs80hex. Read
   drawable+204 and invoke virtual10(context,complete+2B0+(component<<4),stateWords); component
   addition/shift are native32-bit arithmetic with no range guard. Capture/focus/dirty-geometry
   producers remain separate from this submission boundary. */

void __thiscall UiScrollbar_SubmitComponent(void *this,void *drawContext,uint component)

{
  uint uVar1;
  uint uStack_10;
  uint uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  if (*(int *)((int)this + 0x204) != 0) {
    uStack_8 = *(undefined4 *)((int)this + 0x200);
    uStack_4 = *(undefined4 *)((int)this + 0x1fc);
    uStack_10 = 0;
    uStack_c = component;
    if (*(byte *)((int)this + 0x284) == component) {
      if (*(byte *)((int)this + 0x285) == component) {
        uStack_10 = 3;
      }
      else if (*(byte *)((int)this + 0x284) == component) {
        uStack_10 = 2;
      }
    }
    uVar1 = (**(code **)(*(int *)((int)this + 4) + 0x28))();
    if ((uVar1 & 2) == 0) {
      uStack_10 = 1;
    }
    if (*(int *)((int)this + 0x280) == 2) {
      uStack_10 = uStack_10 | 0x80;
    }
    (**(code **)(**(int **)((int)this + 0x204) + 0x10))
              (drawContext,(void *)((component + 0x2b) * 0x10 + (int)this),&uStack_10);
  }
  return;
}

