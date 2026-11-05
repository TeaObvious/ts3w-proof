/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* ECX owner; registry-null no-op. Per-handle valid-row publication increments revision, copies
   UInt16 registry+12hex to row+4, stores payload+0C. Extended gate literal8000. Aligned slots
   publish address resource+28, missing/pending publish0 independently. Exterior probe dynamic;
   generated volume direct. Not sampler-program proof. */

void __fastcall WeatherResources_PublishGlobalBindings(int param_1)

{
  void *this;
  char cVar1;
  int *piVar2;
  int iVar3;
  void *pvVar4;
  
  this = DAT_011d8530;
  if (DAT_011d8530 != (void *)0x0) {
    if (*(uint *)(param_1 + 0x40) < *(uint *)((int)DAT_011d8530 + 8)) {
      piVar2 = (int *)(*(uint *)(param_1 + 0x40) * 0x10 + *(int *)((int)DAT_011d8530 + 4));
      *piVar2 = *piVar2 + 1;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this + 0x12);
      piVar2[3] = param_1 + 0x10;
    }
    if (*(uint *)(param_1 + 0x44) < *(uint *)((int)this + 8)) {
      piVar2 = (int *)(*(uint *)(param_1 + 0x44) * 0x10 + *(int *)((int)this + 4));
      *piVar2 = *piVar2 + 1;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this + 0x12);
      piVar2[3] = param_1 + 0x20;
    }
    if (*(uint *)(param_1 + 0x48) < *(uint *)((int)this + 8)) {
      piVar2 = (int *)(*(uint *)(param_1 + 0x48) * 0x10 + *(int *)((int)this + 4));
      *piVar2 = *piVar2 + 1;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this + 0x12);
      piVar2[3] = param_1 + 0x30;
    }
    cVar1 = CachedGlobalMask8000_Query();
    if (cVar1 != '\0') {
      if (*(uint *)(param_1 + 0x60) < *(uint *)((int)this + 8)) {
        piVar2 = (int *)(*(uint *)(param_1 + 0x60) * 0x10 + *(int *)((int)this + 4));
        *piVar2 = *piVar2 + 1;
        *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar2[3] = param_1 + 0x50;
      }
      if (*(uint *)(param_1 + 0x80) < *(uint *)((int)this + 8)) {
        piVar2 = (int *)(*(uint *)(param_1 + 0x80) * 0x10 + *(int *)((int)this + 4));
        *piVar2 = *piVar2 + 1;
        *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar2[3] = param_1 + 0x70;
      }
      if (*(uint *)(param_1 + 0xa0) < *(uint *)((int)this + 8)) {
        piVar2 = (int *)(*(uint *)(param_1 + 0xa0) * 0x10 + *(int *)((int)this + 4));
        *piVar2 = *piVar2 + 1;
        *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar2[3] = param_1 + 0x90;
      }
      if (((*(uint *)(param_1 + 0x144) & 3) == 0) && (*(int *)(param_1 + 0x144) != 0)) {
        iVar3 = *(int *)(param_1 + 0x144) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xa4),iVar3);
      if (((*(uint *)(param_1 + 0x154) & 3) == 0) && (*(int *)(param_1 + 0x154) != 0)) {
        iVar3 = *(int *)(param_1 + 0x154) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xe8),iVar3);
      if (((*(uint *)(param_1 + 0x158) & 3) == 0) && (*(int *)(param_1 + 0x158) != 0)) {
        iVar3 = *(int *)(param_1 + 0x158) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xec),iVar3);
      if (((*(uint *)(param_1 + 0x15c) & 3) == 0) && (*(int *)(param_1 + 0x15c) != 0)) {
        iVar3 = *(int *)(param_1 + 0x15c) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xf0),iVar3);
      if (((*(uint *)(param_1 + 0x160) & 3) == 0) && (*(int *)(param_1 + 0x160) != 0)) {
        iVar3 = *(int *)(param_1 + 0x160) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xf4),iVar3);
      if (((*(uint *)(param_1 + 0x148) & 3) == 0) && (*(int *)(param_1 + 0x148) != 0)) {
        iVar3 = *(int *)(param_1 + 0x148) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xc0),iVar3);
      if (((*(uint *)(param_1 + 0x14c) & 3) == 0) && (*(int *)(param_1 + 0x14c) != 0)) {
        iVar3 = *(int *)(param_1 + 0x14c) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xc4),iVar3);
      if (((*(uint *)(param_1 + 0x150) & 3) == 0) && (*(int *)(param_1 + 0x150) != 0)) {
        iVar3 = *(int *)(param_1 + 0x150) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 200),iVar3);
      if (((*(uint *)(param_1 + 0x164) & 3) == 0) && (*(int *)(param_1 + 0x164) != 0)) {
        iVar3 = *(int *)(param_1 + 0x164) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xcc),iVar3);
      if (((*(uint *)(param_1 + 0x168) & 3) == 0) && (*(int *)(param_1 + 0x168) != 0)) {
        iVar3 = *(int *)(param_1 + 0x168) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xd0),iVar3);
      if (((*(uint *)(param_1 + 0x16c) & 3) == 0) && (*(int *)(param_1 + 0x16c) != 0)) {
        iVar3 = *(int *)(param_1 + 0x16c) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xd4),iVar3);
      if (((*(uint *)(param_1 + 0x170) & 3) == 0) && (*(int *)(param_1 + 0x170) != 0)) {
        iVar3 = *(int *)(param_1 + 0x170) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xd8),iVar3);
      if (((*(uint *)(param_1 + 0x174) & 3) == 0) && (*(int *)(param_1 + 0x174) != 0)) {
        iVar3 = *(int *)(param_1 + 0x174) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xdc),iVar3);
      if (((*(uint *)(param_1 + 0x178) & 3) == 0) && (*(int *)(param_1 + 0x178) != 0)) {
        iVar3 = *(int *)(param_1 + 0x178) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xe0),iVar3);
      if (*(uint *)(param_1 + 0xe4) < *(uint *)((int)this + 8)) {
        piVar2 = (int *)(*(uint *)(param_1 + 0xe4) * 0x10 + *(int *)((int)this + 4));
        *piVar2 = *piVar2 + 1;
        *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this + 0x12);
        piVar2[3] = param_1 + 0xb0;
      }
      if (((*(uint *)(param_1 + 0x17c) & 3) == 0) && (*(int *)(param_1 + 0x17c) != 0)) {
        iVar3 = *(int *)(param_1 + 0x17c) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xf8),iVar3);
      if (((*(uint *)(param_1 + 0x180) & 3) == 0) && (*(int *)(param_1 + 0x180) != 0)) {
        iVar3 = *(int *)(param_1 + 0x180) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0xfc),iVar3);
      if (((*(uint *)(param_1 + 0x184) & 3) == 0) && (*(int *)(param_1 + 0x184) != 0)) {
        iVar3 = *(int *)(param_1 + 0x184) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x100),iVar3);
      if (((*(uint *)(param_1 + 0x188) & 3) == 0) && (*(int *)(param_1 + 0x188) != 0)) {
        iVar3 = *(int *)(param_1 + 0x188) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x104),iVar3);
      if (((*(uint *)(param_1 + 0x18c) & 3) == 0) && (*(int *)(param_1 + 0x18c) != 0)) {
        iVar3 = *(int *)(param_1 + 0x18c) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x108),iVar3);
      if (((*(uint *)(param_1 + 400) & 3) == 0) && (*(int *)(param_1 + 400) != 0)) {
        iVar3 = *(int *)(param_1 + 400) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x10c),iVar3);
      if (((*(uint *)(param_1 + 0x194) & 3) == 0) && (*(int *)(param_1 + 0x194) != 0)) {
        iVar3 = *(int *)(param_1 + 0x194) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x110),iVar3);
      if (((*(uint *)(param_1 + 0x198) & 3) == 0) && (*(int *)(param_1 + 0x198) != 0)) {
        iVar3 = *(int *)(param_1 + 0x198) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x114),iVar3);
      if (((*(uint *)(param_1 + 0x1b8) & 3) == 0) && (*(int *)(param_1 + 0x1b8) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1b8) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x118),iVar3);
      if (((*(uint *)(param_1 + 0x1bc) & 3) == 0) && (*(int *)(param_1 + 0x1bc) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1bc) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x11c),iVar3);
      if (((*(uint *)(param_1 + 0x19c) & 3) == 0) && (*(int *)(param_1 + 0x19c) != 0)) {
        iVar3 = *(int *)(param_1 + 0x19c) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x124),iVar3);
      if (((*(uint *)(param_1 + 0x1a0) & 3) == 0) && (*(int *)(param_1 + 0x1a0) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1a0) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x128),iVar3);
      if (((*(uint *)(param_1 + 0x1a4) & 3) == 0) && (*(int *)(param_1 + 0x1a4) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1a4) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 300),iVar3);
      pvVar4 = LoadPump_ReadFrameServiceGlobal();
      iVar3 = FUN_006e8220((int)pvVar4);
      if (*(int *)(iVar3 + 100) == 0) {
        iVar3 = 0;
      }
      else {
        iVar3 = *(int *)(*(int *)(iVar3 + 100) + 0x2c5c);
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x130),iVar3);
      if (((*(uint *)(param_1 + 0x1a8) & 3) == 0) && (*(int *)(param_1 + 0x1a8) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1a8) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x134),iVar3);
      if (((*(uint *)(param_1 + 0x1ac) & 3) == 0) && (*(int *)(param_1 + 0x1ac) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1ac) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x138),iVar3);
      if (((*(uint *)(param_1 + 0x1b0) & 3) == 0) && (*(int *)(param_1 + 0x1b0) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1b0) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x13c),iVar3);
      if (((*(uint *)(param_1 + 0x1b4) & 3) == 0) && (*(int *)(param_1 + 0x1b4) != 0)) {
        iVar3 = *(int *)(param_1 + 0x1b4) + 0x28;
      }
      else {
        iVar3 = 0;
      }
      ShaderParameterRegistry_SetTexturePayload(this,*(uint *)(param_1 + 0x140),iVar3);
      ShaderParameterRegistry_SetTexturePayload
                (this,*(uint *)(param_1 + 0x120),*(int *)(param_1 + 0x1c0));
    }
  }
  return;
}

