/* PC1.67 original static contract. If component+50 !=FFFFFFFF, enqueue04878BC4 with ownerGUID,
   mask7FFFFC00 and stored override value. FFFFFFFF skips publication. No scene-membership test or
   direct Model+60/+70 write. Delivery/readiness and downstream model override consumers are
   separate boundaries. */

void __fastcall ModelComponent_PublishRenderFlagsOverride(int param_1)

{
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  int local_4c;
  
  local_4c = *(int *)(param_1 + 0x50);
  if (local_4c != -1) {
    local_58 = *(undefined4 *)(*(int *)(param_1 + 4) + 8);
    local_54 = *(undefined4 *)(*(int *)(param_1 + 4) + 0xc);
    local_60[0] = 0xc4;
    local_60[1] = 0x8b;
    local_60[2] = 0x87;
    local_60[3] = 4;
    local_5c = (undefined4 *)0x0;
    local_50 = 0x7ffffc00;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(&local_50);
    }
  }
  return;
}
