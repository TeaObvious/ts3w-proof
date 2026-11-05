/* PC1.67 original static contract. ECX Model component plus scene pointer and two opaque payload
   words, RET0C. CommandF33E398B carries ownerGUID, scene and both words to
   RenderCommand_EnqueueIfDispatcherExists. No object-manager insertion or scene-result
   acknowledgement here. Optional component+54==40000000 sends additional flags/command; applies
   component+81 bit2 through948890. Enqueue is not proof that the renderer has accepted/completed
   scene entry. */

void __thiscall
ModelComponent_EnqueueSceneEntry
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  byte local_b0 [4];
  undefined4 *local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50 [2];
  undefined4 local_48;
  undefined4 local_44;
  
  local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  local_50[0] = param_1;
  local_60[0] = 0x8b;
  local_60[1] = 0x39;
  local_60[2] = 0x3e;
  local_60[3] = 0xf3;
  local_5c = (undefined4 *)0x0;
  local_48 = param_2;
  local_44 = param_3;
  RenderCommand_EnqueueIfDispatcherExists(local_60);
  if (*(int *)((int)this + 0x54) == 0x40000000) {
    local_a8 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_a4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_b0[0] = 0xc4;
    local_b0[1] = 0x8b;
    local_b0[2] = 0x87;
    local_b0[3] = 4;
    local_ac = (undefined4 *)0x0;
    local_a0 = 0x20;
    local_9c = 0x20;
    RenderCommand_EnqueueIfDispatcherExists(local_b0);
    if (local_ac != (undefined4 *)0x0) {
      (**(code **)*local_ac)(&local_a0);
    }
    local_a8 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_a4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_b0[0] = 0x55;
    local_b0[1] = 0xd2;
    local_b0[2] = 0xcc;
    local_b0[3] = 0xd;
    local_ac = (undefined4 *)0x0;
    RenderCommand_EnqueueIfDispatcherExists(local_b0);
    if (local_ac != (undefined4 *)0x0) {
      (**(code **)*local_ac)(&local_a0);
    }
  }
  FUN_00948890(this,*(byte *)((int)this + 0x81) >> 2 & 1);
  if (local_5c != (undefined4 *)0x0) {
    (**(code **)*local_5c)(local_50);
  }
  return;
}
