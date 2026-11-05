/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; actual Slider primaryFBFF88 slotA4 component-state producer.
   Physical thiscall complete window, draw context and unsigned component stack words, RET8, void.
   If drawable+204 null return. Build16-byte local state from flags0, component, copied complete+200
   and+1FC words. Query IWindow complete+4 virtual28; disabled window bit2 gives state1. Otherwise
   hover byte+264 matching requested component gives state3 when pressed byte+265 also matches,
   state2 otherwise; unmatched remains0. Orientation+260==2 adds80hex. Then reread drawable+204 and
   call its virtual10(context, complete+268+(component<<4), stateWords). The component rectangle and
   metadata are native stored producers, not frontend freshly recomputed geometry. Other copied
   state-word meanings and concrete polymorphic drawable identity remain outside this body. No
   component range check is added. */

void __thiscall UiSlider_SubmitComponent(void *this,void *drawContext,uint component)

{
  byte bVar1;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  if (*(int *)((int)this + 0x204) != 0) {
    local_4 = *(undefined4 *)((int)this + 0x1fc);
    local_8 = *(undefined4 *)((int)this + 0x200);
    local_10 = 0;
    local_c = component;
    bVar1 = (**(code **)(*(int *)((int)this + 4) + 0x28))();
    if ((bVar1 & 2) == 0) {
      local_10 = 1;
    }
    else if (*(byte *)((int)this + 0x264) == component) {
      if (*(byte *)((int)this + 0x265) == component) {
        local_10 = 3;
      }
      else if (*(byte *)((int)this + 0x264) == component) {
        local_10 = 2;
      }
    }
    if (*(int *)((int)this + 0x260) == 2) {
      local_10 = local_10 | 0x80;
    }
    (**(code **)(**(int **)((int)this + 0x204) + 0x10))
              (drawContext,component * 0x10 + 0x268 + (int)this,&local_10);
  }
  return;
}

