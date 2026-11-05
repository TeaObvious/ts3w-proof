/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_00514640. Physical ECX Window plus DrawContext pointer/RET4. Optional fill
   obtains renderer50EC40 and draws local0,0,width,height; optional drawable+204 virtual10 receives
   same context/local bounds/state. Returns AL1 with upperEAX inherited; existing undefined4
   signature is not a full32 status guarantee. Outer message0D handler is5155E0. */

undefined4 __thiscall UiWindow_DrawSelf(void *this,void *param_1)

{
  undefined4 in_EAX;
  int *piVar1;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  float local_8;
  float fStack_4;
  
  if (*(int *)((int)this + 0x200) != 0) {
    piVar1 = (int *)UiDrawContext_SelectRenderer(param_1,0,0);
    (**(code **)(*piVar1 + 4))(*(undefined4 *)((int)this + 0x200));
    in_EAX = (**(code **)(*piVar1 + 0x38))
                       (0,0,*(float *)((int)this + 0x48) - *(float *)((int)this + 0x40),
                        *(float *)((int)this + 0x4c) - *(float *)((int)this + 0x44));
  }
  if (*(int **)((int)this + 0x204) != (int *)0x0) {
    local_20 = *(undefined4 *)((int)this + 0x78);
    uStack_18 = *(undefined4 *)((int)this + 0x200);
    local_14 = *(undefined4 *)((int)this + 0x1fc);
    local_10 = 0;
    local_c = 0;
    local_8 = *(float *)((int)this + 0x48) - *(float *)((int)this + 0x40);
    fStack_4 = *(float *)((int)this + 0x4c) - *(float *)((int)this + 0x44);
    uStack_1c = 0;
    in_EAX = (**(code **)(**(int **)((int)this + 0x204) + 0x10))(param_1,&local_10,&local_20);
  }
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

