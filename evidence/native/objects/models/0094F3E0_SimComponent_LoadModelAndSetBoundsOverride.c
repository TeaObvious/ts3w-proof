/* PC1.67 original static contract. ECX component with owner+4, model resource key+10, resource
   slot+30. Conditional manager virtual34 load with interface025ED708. Publish model command
   B3436C13 or2F704CAB using ownerGUID; resolve owner's Model component, set its render override
   to00200000 through948D80, then publish owner visibility95EB70. No scene-membership test and no
   direct writes to Model+60/+70 bounds. This resource/override producer alone does not prove
   completion of an outfit change or renderer-to-component bounds synchronization. Physical
   RET4/ALtrue; inferred prototype omits the purged stack word. */

undefined4 __fastcall SimComponent_LoadModelAndSetBoundsOverride(int param_1)

{
  byte bVar1;
  uint uVar2;
  uint3 extraout_var;
  void *this;
  int iVar3;
  int iStack_60;
  undefined4 *puStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  
  if (*(int *)(param_1 + 0x18) != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x34))
                (param_1 + 0x10,0x25ed708,param_1 + 0x30,param_1 + 8,0,
                 ResourceCallback_InvokeVirtual04,1,1);
    }
  }
  bVar1 = 1;
  if ((*(int *)(param_1 + 0x30) != 0) && ((*(uint *)(param_1 + 0x30) & 3) == 0)) {
    uVar2 = *(uint *)(*(int *)(param_1 + 0x30) + 0x38) & 0xcf00;
    if ((uVar2 == 0x400) || ((uVar2 == 0x500 || (uVar2 == 0x300)))) {
      bVar1 = 1;
    }
    else {
      bVar1 = 0;
    }
  }
  uStack_58 = *(undefined4 *)(*(int *)(param_1 + 4) + 8);
  uStack_54 = *(undefined4 *)(*(int *)(param_1 + 4) + 0xc);
  puStack_5c = (undefined4 *)0x0;
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  iStack_60 = (-(uint)bVar1 & 0x7c2ce098) + 0xb3436c13;
  uStack_44 = 0;
  uStack_40 = 1;
  RenderCommand_EnqueueIfDispatcherExists((byte *)&iStack_60);
  iVar3 = (uint)extraout_var << 8;
  if (*(void **)(param_1 + 4) != (void *)0x0) {
    this = Object_GetComponentByMask(*(void **)(param_1 + 4),DAT_011e9fc4);
    iVar3 = 0;
    if (this != (void *)0x0) {
      ModelComponent_SetRenderFlagsOverride(this,0x200000);
      iVar3 = FUN_0095eb70(*(void **)(param_1 + 4));
    }
  }
  if (puStack_5c != (undefined4 *)0x0) {
    iVar3 = (**(code **)*puStack_5c)(&uStack_50);
  }
  return CONCAT31((int3)((uint)iVar3 >> 8),1);
}
