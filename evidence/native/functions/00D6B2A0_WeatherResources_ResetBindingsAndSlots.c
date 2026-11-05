/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX owner. Gated registry unbind, then resource unregister/fallback-clear regardless gates.
   Retains repeated150 slot visit; all slots0 on normal completion. Releases/zeros generated volume
   then clears first-byte latch last. No exception/finally guarantee. */

void __fastcall WeatherResources_ResetBindingsAndSlots(char *param_1)

{
  uint *puVar1;
  uint *puVar2;
  void *this;
  char cVar3;
  int *piVar4;
  
  this = DAT_011d8530;
  if ((DAT_011d8530 != (void *)0x0) && (*param_1 != '\0')) {
    if (*(uint *)(param_1 + 0x40) < *(uint *)((int)DAT_011d8530 + 8)) {
      piVar4 = (int *)(*(uint *)(param_1 + 0x40) * 0x10 + *(int *)((int)DAT_011d8530 + 4));
      *piVar4 = *piVar4 + 1;
      *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
      piVar4[3] = 0;
    }
    if (*(uint *)(param_1 + 0x44) < *(uint *)((int)this + 8)) {
      piVar4 = (int *)(*(uint *)(param_1 + 0x44) * 0x10 + *(int *)((int)this + 4));
      *piVar4 = *piVar4 + 1;
      *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
      piVar4[3] = 0;
    }
    if (*(uint *)(param_1 + 0x48) < *(uint *)((int)this + 8)) {
      piVar4 = (int *)(*(uint *)(param_1 + 0x48) * 0x10 + *(int *)((int)this + 4));
      *piVar4 = *piVar4 + 1;
      *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
      piVar4[3] = 0;
    }
    cVar3 = CachedGlobalMask8000_Query();
    if (cVar3 != '\0') {
      if (*(uint *)(param_1 + 0x60) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x60) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x80) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x80) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xa0) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xa0) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xa4) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xa4) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xe4) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xe4) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xc0) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xc0) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xc4) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xc4) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 200) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 200) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xe8) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xe8) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xec) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xec) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xf0) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xf0) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xf4) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xf4) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xcc) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xcc) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xd0) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xd0) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xd4) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xd4) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xd8),0);
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xdc),0);
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xe0),0);
      if (*(uint *)(param_1 + 0xf8) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xf8) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0xfc) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0xfc) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x100) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x100) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x104) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x104) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x108) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x108) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x10c) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x10c) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x110) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x110) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x114) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x114) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x118) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x118) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x11c) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x11c) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x120) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x120) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x124) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x124) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x128) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x128) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 300) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 300) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x130) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x130) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x134) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x134) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x138) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x138) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x13c) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x13c) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
      if (*(uint *)(param_1 + 0x140) < *(uint *)((int)this + 8)) {
        piVar4 = (int *)(*(uint *)(param_1 + 0x140) * 0x10 + *(int *)((int)this + 4));
        *piVar4 = *piVar4 + 1;
        *(undefined2 *)(piVar4 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar4[3] = 0;
      }
    }
  }
  puVar1 = (uint *)(param_1 + 0x148);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x150);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar2 = (uint *)(param_1 + 0x14c);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar2,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar2 != 0) && ((*puVar2 & 3) == 0)) {
    (**(code **)(*(int *)*puVar2 + 4))();
    *puVar2 = 0;
  }
  *puVar2 = 0;
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x154);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x144);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x158);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x15c);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x160);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x164);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x168);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x16c);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x170);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x174);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x178);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x17c);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x180);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x184);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x188);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x18c);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 400);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x194);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x198);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1b8);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1bc);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x19c);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1a0);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1a4);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1a8);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1ac);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1b0);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  puVar1 = (uint *)(param_1 + 0x1b4);
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
  }
  if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
    (**(code **)(*(int *)*puVar1 + 4))();
    *puVar1 = 0;
  }
  *puVar1 = 0;
  if (*(int *)(param_1 + 0x1c0) != 0) {
    FUN_0061a1d0(*(int *)(param_1 + 0x1c0));
  }
  piVar4 = *(int **)(param_1 + 0x1c0);
  if (piVar4 != (int *)0x0) {
    param_1[0x1c0] = '\0';
    param_1[0x1c1] = '\0';
    param_1[0x1c2] = '\0';
    param_1[0x1c3] = '\0';
    (**(code **)(*piVar4 + 8))();
  }
  *param_1 = '\0';
  return;
}

