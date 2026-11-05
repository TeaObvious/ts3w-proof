/* Analyst-assigned name; PC1.67 outfit appearance application to an existing SimBuilder. ECX
   builder, one stack outfit pointer, RET 4; existing provisional Ghidra signature retained. Copies
   appearance fields and admitted parts, then traverses outfit blend records at +0x2B8/+0x2BC with
   stride 0x18. Each record carries a 16-byte key, float amount at +0x10 and another word.
   Instructions 005E5125..005E5145 skip zero amount and call SimBuilder_SetFacialBlend for nonzero;
   005E514A advances without testing AL, so one unacquirable new blend does not abort the remaining
   outfit. Existing stored outfit bytes are not modified. Final dirty fields become +0x1C=0x3FFFF,
   +0x18=0x1F, +0x14=0x1F. Do not infer a finite-value clamp or full resource-factory acceptance
   from this consumer; current C aliases are not a recovered original type model. Owned body has a
   gap 005E4F9A..005E4F9F excluded. Static instruction contract, no runtime claim. */

void __thiscall SimBuilder_ApplyOutfitAppearance(void *this,void *param_1)

{
  undefined4 uVar1;
  uint uVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int local_ac;
  int local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  float local_98;
  undefined4 local_94;
  uint local_90;
  uint local_8c [9];
  uint local_68 [9];
  undefined4 local_44 [5];
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  
  FUN_005e40e0(this,'\0');
  AnimationRig_SetCasFlagsAndDirtyState(this,*(uint *)((int)param_1 + 0x38) & 0xff7f);
  *(undefined4 *)((int)this + 0x28) = *(undefined4 *)((int)param_1 + 0x40);
  *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)param_1 + 0x44);
  *(undefined4 *)((int)this + 0x30) = *(undefined4 *)((int)param_1 + 0x48);
  *(undefined4 *)((int)this + 0x34) = *(undefined4 *)((int)param_1 + 0x4c);
  uVar1 = *(undefined4 *)((int)param_1 + 0x50);
  *(uint *)((int)this + 0x1c) = *(uint *)((int)this + 0x1c) | 0x102;
  *(undefined4 *)((int)this + 0x38) = uVar1;
  *(uint *)((int)this + 0x14) = *(uint *)((int)this + 0x14) | 0x1f;
  uVar2 = *(uint *)((int)this + 0x1c);
  *(undefined4 *)((int)this + 0x50) = *(undefined4 *)((int)param_1 + 0x68);
  *(uint *)((int)this + 0x1c) = uVar2 | 0x10;
  *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)param_1 + 0x6c);
  *(uint *)((int)this + 0x1c) = uVar2 | 0x30;
  *(undefined4 *)((int)this + 0x58) = *(undefined4 *)((int)param_1 + 0x70);
  *(uint *)((int)this + 0x1c) = uVar2 | 0x70;
  *(undefined4 *)((int)this + 0x5c) = *(undefined4 *)((int)param_1 + 0x74);
  *(uint *)((int)this + 0x1c) = uVar2 | 0xf0;
  *(undefined4 *)((int)this + 0x60) = *(undefined4 *)((int)param_1 + 0x78);
  uVar1 = *(undefined4 *)((int)param_1 + 0x7c);
  *(uint *)((int)this + 0x1c) = uVar2 | 0x200f0;
  *(undefined4 *)((int)this + 0x268) = uVar1;
  uVar1 = *(undefined4 *)((int)param_1 + 0x80);
  *(uint *)((int)this + 0x1c) = uVar2 | 0x200f0;
  *(undefined4 *)((int)this + 0x26c) = uVar1;
  *(undefined4 *)((int)this + 0x270) = *(undefined4 *)((int)param_1 + 0x88);
  *(undefined4 *)((int)this + 0x274) = *(undefined4 *)((int)param_1 + 0x8c);
  *(undefined4 *)((int)this + 0x278) = *(undefined4 *)((int)param_1 + 0x90);
  uVar1 = *(undefined4 *)((int)param_1 + 0x94);
  *(uint *)((int)this + 0x1c) = uVar2 | 0x200f0;
  *(undefined4 *)((int)this + 0x27c) = uVar1;
  iVar7 = (*(int *)((int)param_1 + 0x9c) - *(int *)((int)param_1 + 0x98)) / 0x68;
  local_ac = 0;
  if (0 < iVar7) {
    do {
      FUN_005e3570(&local_90);
      puVar3 = (undefined4 *)FUN_005e5a80(param_1,local_ac);
      if ((puVar3 != (undefined4 *)0x0) && (puVar3[2] != 0)) {
        FUN_00c30730(&local_90,puVar3 + 4);
        local_30 = *puVar3;
        local_2c = puVar3[1];
        local_28 = puVar3[2];
        local_24 = puVar3[3];
        if (local_8c != puVar3 + 5) {
          FUN_00d4d2a0(local_8c);
          FUN_005d3df0(local_8c,(int *)puVar3[5],(int *)puVar3[6]);
        }
        if (local_68 != puVar3 + 0xe) {
          FUN_00d4d2a0(local_68);
          FUN_005d3df0(local_68,(int *)puVar3[0xe],(int *)puVar3[0xf]);
        }
        if ((void *)puVar3[0x17] != (void *)0x0) {
          FUN_005bfd20((void *)puVar3[0x17],local_44);
        }
        piVar4 = (int *)FUN_004e4500(0x98,*(undefined4 *)((int)this + 0x1e8),0);
        if (piVar4 + 2 != (int *)0x0) {
          FUN_005e3ec0(piVar4 + 2,(int)&local_90);
        }
        *piVar4 = (int)this + 0x1e0;
        piVar4[1] = *(int *)((int)this + 0x1e4);
        **(undefined4 **)((int)this + 0x1e4) = piVar4;
        *(int **)((int)this + 0x1e4) = piVar4;
      }
      FUN_005e3600(&local_90);
      local_ac = local_ac + 1;
    } while (local_ac < iVar7);
  }
  iVar7 = (*(int *)((int)param_1 + 700) - *(int *)((int)param_1 + 0x2b8)) / 0x18;
  if (0 < iVar7) {
    iVar6 = 0;
    do {
      local_a8 = *(int *)(*(int *)((int)param_1 + 0x2b8) + iVar6);
      iVar5 = *(int *)((int)param_1 + 0x2b8) + iVar6;
      local_a4 = *(undefined4 *)(iVar5 + 4);
      local_a0 = *(undefined4 *)(iVar5 + 8);
      local_9c = *(undefined4 *)(iVar5 + 0xc);
      local_98 = *(float *)(iVar5 + 0x10);
      local_94 = *(undefined4 *)(iVar5 + 0x14);
      if (local_98 != 0.0) {
        SimBuilder_SetFacialBlend(this,&local_a8,(int)local_98);
      }
      iVar6 = iVar6 + 0x18;
      iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
  }
  *(undefined4 *)((int)this + 0x1c) = 0x3ffff;
  *(undefined4 *)((int)this + 0x18) = 0x1f;
  *(undefined4 *)((int)this + 0x14) = 0x1f;
  return;
}
