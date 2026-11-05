/* Genuine /TS3W.exe C export; current function identifiers verified against the retained f915 names.
   Earlier body/ABI/variable qualifications remain; no runtime or whole-entry acceptance. */



/* Analyst PC1.67 original contract. ECX Model, key16, two descriptor pointers, UInt32
   savedMaterialHash, low-byte boundsReady, RET14, ALtrue. Copies current Model key, optionally
   queries authored bounds. Ordinary model branch enqueues model command B3436C13 or2F704CAB,
   optional material substitutions, THEN force-replays nonzero saved material hash
   through948800(hash,0,1). Specialized +80 bit1 branch usesE92EBE5F and does not replay this
   material command. Later bounds/opacity/visibility/event commands remain in full body. No global
   world-load scheduling or geometry-save precedence inferred. */

undefined4 __thiscall
ModelComponent_PresentResourceAndSavedMaterial
          (void *this,undefined4 *param_1,int *param_2,int *param_3,int param_4,char param_5)

{
  int iVar1;
  char cVar2;
  byte bVar3;
  uint uVar4;
  void *this_00;
  undefined3 extraout_var;
  uint3 extraout_var_00;
  int *local_d4;
  float local_d0;
  undefined4 uStack_cc;
  int local_c0;
  undefined4 *local_bc;
  float local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 uStack_a8;
  undefined4 uStack_a4;
  undefined4 uStack_a0;
  undefined4 local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  byte abStack_60 [4];
  undefined **ppuStack_5c;
  undefined4 uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  
  *(undefined4 *)((int)this + 8) = *param_1;
  *(undefined4 *)((int)this + 0xc) = param_1[1];
  *(undefined4 *)((int)this + 0x10) = param_1[2];
  *(undefined4 *)((int)this + 0x14) = param_1[3];
  if (param_5 == '\0') {
    local_d4 = (int *)0x0;
    uVar4 = ObjectResource_LoadParamsForPrototypeKey
                      ((uint *)(*(int *)((int)this + 4) + 0x18),&local_d4);
    if ((char)uVar4 != '\0') {
      cVar2 = (char)local_d4[0xf];
      if (cVar2 == '\0') {
        *(undefined4 *)((int)this + 0x54) = 0;
      }
      else if (cVar2 == '\x01') {
        *(undefined4 *)((int)this + 0x54) = 0x80000000;
      }
      else if (cVar2 == '\x02') {
        *(undefined4 *)((int)this + 0x54) = 0x40000000;
      }
    }
    local_6c = param_1[1];
    local_70 = *param_1;
    local_64 = param_1[3];
    local_68 = 0x736884f1;
    local_d0 = 0.0;
    ModelBounds_QueryAuthoredProxy(&local_70,(float *)((int)this + 0x60),(dword *)&local_d0);
    *(undefined1 *)((int)this + 0x80) = local_d0._0_1_;
    if (local_d4 != (int *)0x0) {
      (**(code **)(*local_d4 + 4))();
    }
  }
  if ((*(byte *)((int)this + 0x80) & 1) == 0) {
    iVar1 = *(int *)((int)this + 4);
    uStack_cc = *(undefined4 *)(iVar1 + 0xc);
    local_d0 = *(float *)(iVar1 + 8);
    bVar3 = *(byte *)((int)this + 0x81) >> 3;
    local_bc = (undefined4 *)0x0;
    uStack_a0 = 0;
    local_c0 = (-(uint)((bVar3 & 1) != 0) & 0x7c2ce098) + 0xb3436c13;
    local_b0 = *param_1;
    local_ac = param_1[1];
    uStack_a8 = param_1[2];
    uStack_a4 = param_1[3];
    if ((((bVar3 & 1) == 0) && (iVar1 != 0)) && ((*(uint *)(iVar1 + 0x2c) & DAT_011ea138) != 0)) {
      uStack_a0 = 1;
    }
    local_b8 = local_d0;
    local_b4 = uStack_cc;
    RenderCommand_EnqueueIfDispatcherExists((byte *)&local_c0);
    if ((param_2[2] != 0) || (param_3[2] != 0)) {
      FUN_0094b150(this,param_2,param_3);
    }
    if (param_4 != 0) {
      ModelComponent_SetMaterialHash(this,param_4,'\0','\x01');
    }
    if (local_bc != (undefined4 *)0x0) {
      (**(code **)*local_bc)(&local_b0);
    }
  }
  else {
    local_b8 = *(float *)(*(int *)((int)this + 4) + 8);
    local_b4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_ac = param_1[1];
    local_b0 = *param_1;
    uStack_a8 = param_1[2];
    uStack_a4 = param_1[3];
    local_c0 = -0x16d141a1;
    local_bc = (undefined4 *)0x0;
    uStack_a0 = 0;
    RenderCommand_EnqueueIfDispatcherExists((byte *)&local_c0);
    if (local_bc != (undefined4 *)0x0) {
      (**(code **)*local_bc)(&local_b0);
    }
  }
  uStack_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  uStack_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
  uStack_50 = *(undefined4 *)((int)this + 0x60);
  uStack_4c = *(undefined4 *)((int)this + 100);
  uStack_48 = *(undefined4 *)((int)this + 0x68);
  uStack_44 = *(undefined4 *)((int)this + 0x6c);
  uStack_40 = *(undefined4 *)((int)this + 0x70);
  uStack_3c = *(undefined4 *)((int)this + 0x74);
  uStack_38 = *(undefined4 *)((int)this + 0x78);
  uStack_34 = *(undefined4 *)((int)this + 0x7c);
  abStack_60[0] = 0x97;
  abStack_60[1] = 0xbe;
  abStack_60[2] = 0xf3;
  abStack_60[3] = 0x70;
  ppuStack_5c = &PTR_PTR_0117c9a4;
  RenderCommand_EnqueueIfDispatcherExists(abStack_60);
  iVar1 = *(int *)((int)this + 0x54);
  if (*(void **)((int)this + 4) != (void *)0x0) {
    this_00 = Object_GetComponentByMask(*(void **)((int)this + 4),DAT_011ea2a8);
    if (this_00 != (void *)0x0) {
      local_d0 = (float)CONCAT31(local_d0._1_3_,1);
      if (((iVar1 == -0x80000000) && (DAT_011edbc4 != 0)) && (*(int *)(DAT_011edbc4 + 0x1b4) == 1))
      {
        local_d0 = (float)((uint)local_d0._1_3_ << 8);
      }
      FUN_0095e670(this_00,SUB41(local_d0,0));
    }
  }
  FUN_0095eb70(*(void **)((int)this + 4));
  ModelComponent_PublishRenderFlagsOverride((int)this);
  if ((*(byte *)((int)this + 0x81) & 2) == 0) {
    local_b8 = *(float *)(*(int *)((int)this + 4) + 8);
    local_b4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_c0 = -0x7d86e836;
    local_bc = (undefined4 *)0x0;
    local_b0 = 0;
    RenderCommand_EnqueueIfDispatcherExists((byte *)&local_c0);
    if (local_bc != (undefined4 *)0x0) {
      (**(code **)*local_bc)(&local_b0);
    }
  }
  uVar4 = 0;
  if (((*(int *)((int)this + 4) == 0) ||
      (uVar4 = *(uint *)(*(int *)((int)this + 4) + 0x2c), (DAT_011ea0fc & uVar4) != 0)) ||
     ((DAT_011ea290 & uVar4) != 0)) goto LAB_0094b7b7;
  bVar3 = *(byte *)((int)this + 0x81);
  uVar4 = CONCAT31((int3)(uVar4 >> 8),bVar3);
  if ((bVar3 & 0x10) == 0) {
    if ((bVar3 & 0x20) != 0) goto LAB_0094b7b7;
    local_d0 = *(float *)((int)this + 0x74) - *(float *)((int)this + 100);
    local_70 = 0x3e4ccccd;
    if (0.2 <= local_d0) goto LAB_0094b7b7;
  }
  cVar2 = CachedGlobalMask8000_Query();
  uVar4 = CONCAT31(extraout_var,cVar2);
  if (cVar2 != '\0') {
    local_b8 = *(float *)(*(int *)((int)this + 4) + 8);
    local_b4 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_c0 = 0xd8a7ecc;
    local_bc = (undefined4 *)0x0;
    local_b0 = 1;
    local_ac = 0x5cc5b449;
    uStack_a8 = 0;
    uStack_a4 = 0;
    RenderCommand_EnqueueIfDispatcherExists((byte *)&local_c0);
    uVar4 = (uint)extraout_var_00 << 8;
    if (local_bc != (undefined4 *)0x0) {
      uVar4 = (**(code **)*local_bc)(&local_b0);
    }
  }
LAB_0094b7b7:
  bVar3 = *(byte *)((int)this + 0x81) >> 6;
  uVar4 = CONCAT31((int3)(uVar4 >> 8),bVar3) & 0xffffff01;
  if ((bVar3 & 1) != 0) {
    uVar4 = FUN_00948900(this,(byte)uVar4);
  }
  if (ppuStack_5c != (undefined **)0x0) {
    uVar4 = (**(code **)*ppuStack_5c)(&uStack_50);
  }
  return CONCAT31((int3)(uVar4 >> 8),1);
}

