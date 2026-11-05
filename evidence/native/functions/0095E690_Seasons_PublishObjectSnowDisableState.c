/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Publishes DisableObjectSnow from mask1E0000 and DisableObjectFrost from
   relevant non-roof bits; sends render material commands and propagates enabled state to slotted
   child render components through parent-disable source1. Traversal/lifetime boilerplate is
   retained. */

void __thiscall Seasons_PublishObjectSnowDisableState(void *this,char param_1)

{
  uint uVar1;
  char cVar2;
  void *pvVar3;
  int iVar4;
  bool bVar5;
  int aiStack_c4 [5];
  undefined4 local_b0;
  undefined4 *local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  uint local_a0;
  undefined4 local_9c;
  undefined4 local_98;
  undefined4 local_94;
  undefined4 local_60;
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  uint local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  
  uVar1 = *(uint *)(*(int *)((int)this + 4) + 0x2c);
  if (((DAT_011e9e90 & uVar1) == 0) && ((DAT_011ea0fc & uVar1) == 0)) {
    uVar1 = *(uint *)((int)this + 8);
    bVar5 = (uVar1 & 0x1e0000) == 0;
    cVar2 = CachedGlobalMask8000_Query();
    if (cVar2 != '\0') {
      local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
      local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
      local_50 = (uint)!bVar5;
      local_60 = 0xd8a7ecc;
      local_5c = (undefined4 *)0x0;
      local_4c = 0x7bfef7db;
      local_48 = 1;
      local_44 = 0;
      RenderCommand_EnqueueIfDispatcherExists((byte *)&local_60);
      local_a8 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
      local_a4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
      local_a0 = (uint)((uVar1 & 0x1c0000) != 0);
      local_b0 = 0xd8a7ecc;
      local_ac = (undefined4 *)0x0;
      local_9c = 0x38dd71a4;
      local_98 = 1;
      local_94 = 0;
      RenderCommand_EnqueueIfDispatcherExists((byte *)&local_b0);
      if (local_ac != (undefined4 *)0x0) {
        (**(code **)*local_ac)(&local_a0);
      }
      if (local_5c != (undefined4 *)0x0) {
        (**(code **)*local_5c)(&local_50);
      }
    }
    if (((param_1 != '\0') && (*(void **)((int)this + 4) != (void *)0x0)) &&
       (pvVar3 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea114),
       pvVar3 != (void *)0x0)) {
      FUN_00951890(pvVar3,aiStack_c4);
      iVar4 = FUN_00950f40(aiStack_c4);
      cVar2 = (char)iVar4;
      while (cVar2 != '\0') {
        pvVar3 = (void *)FUN_009503c0((int)aiStack_c4);
        if ((pvVar3 != (void *)0x0) &&
           (pvVar3 = Object_GetComponentByMask(pvVar3,DAT_011ea2a8), pvVar3 != (void *)0x0)) {
          Seasons_SetObjectSnowDisableSource(pvVar3,bVar5,1);
        }
        iVar4 = FUN_00950f40(aiStack_c4);
        cVar2 = (char)iVar4;
      }
    }
  }
  return;
}

