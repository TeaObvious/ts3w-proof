/* PC1.67 original static contract. ECX Model plus one stackDWORD/RET4. Store value at component+50
   then call948B00. Does not create bounds, insert manager or require scene membership. Sim
   loader94F3E0 supplies00200000. */

void __thiscall ModelComponent_SetRenderFlagsOverride(void *this,undefined4 param_1)

{
  *(undefined4 *)((int)this + 0x50) = param_1;
  ModelComponent_PublishRenderFlagsOverride((int)this);
  return;
}
