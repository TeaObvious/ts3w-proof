/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX Slots receiver, supplied DWORD at stack+4,
   RET4; EAX appended point or0 on entry/model-resolution refusal. Requires model+40h and nonzero
   identifier, resolves a separate model index, allocates/initializes a point, stores the original
   supplied DWORD at point+4 and+10h, copies the resolved model matrix into point+20h..+5Ch, and
   appends to the dynamic+54h/+58h list. Supplied bone identifier is not the resolved index.
   Allocation/helper valid-caller assumptions and complete lifetime remain separate; no
   valid-ordinal-range or malformed-input policy is established. */

undefined4 __thiscall SlotComponent_AppendBonePointByIdentifier(void *this,int param_1)

{
  void *pvVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *local_68;
  void *local_64;
  undefined4 local_60;
  undefined4 uStack_5c;
  undefined4 uStack_58;
  float fStack_54;
  float local_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 local_40;
  float fStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  if ((*(int *)((int)this + 0x40) != 0) && (param_1 != 0)) {
    local_64 = this;
    iVar2 = FUN_00575c80(*(int *)((int)this + 0x40) + 0x28);
    if (-1 < iVar2) {
      puVar3 = FUN_004e8a80(&DAT_011ea118);
      pvVar1 = local_64;
      puVar4 = (undefined4 *)0x0;
      if (puVar3 != (undefined4 *)0x0) {
        puVar3[1] = 0;
        puVar3[2] = 0;
        puVar3[3] = 0;
        puVar3[4] = 0;
        puVar3[5] = 0;
        puVar3[7] = 0;
        puVar3[6] = 1;
        *puVar3 = &PTR_FUN_01045174;
        puVar4 = puVar3;
      }
      puVar4[2] = puVar4[2] | 2;
      local_50 = FLOAT_00f998f8;
      puVar4[4] = param_1;
      puVar4[1] = param_1;
      uStack_4c = 0;
      uStack_48 = 0;
      uStack_44 = 0;
      local_40 = 0;
      fStack_3c = local_50;
      uStack_38 = 0;
      uStack_34 = 0;
      fStack_54 = local_50;
      uStack_58 = 0;
      uStack_5c = 0;
      local_60 = 0;
      local_30 = 0;
      uStack_2c = 0;
      fStack_28 = local_50;
      uStack_24 = 0;
      local_20 = 0;
      uStack_1c = 0;
      uStack_18 = 0;
      fStack_14 = local_50;
      local_68 = puVar4;
      FUN_005775a0((void *)(iVar2 * 0x30 + *(int *)(*(int *)((int)local_64 + 0x40) + 0x9c)),
                   (uint *)&local_50);
      puVar4[8] = local_50;
      puVar4[9] = uStack_4c;
      puVar4[10] = uStack_48;
      puVar4[0xb] = uStack_44;
      puVar4[0xc] = local_40;
      puVar4[0xd] = fStack_3c;
      puVar4[0xe] = uStack_38;
      puVar4[0xf] = uStack_34;
      puVar4[0x10] = local_30;
      puVar4[0x11] = uStack_2c;
      puVar4[0x12] = fStack_28;
      puVar4[0x13] = uStack_24;
      puVar4[0x14] = local_20;
      puVar4[0x15] = uStack_1c;
      puVar4[0x16] = uStack_18;
      puVar4[0x17] = fStack_14;
      puVar3 = *(undefined4 **)((int)pvVar1 + 0x58);
      if (puVar3 < *(undefined4 **)((int)pvVar1 + 0x5c)) {
        *(undefined4 **)((int)pvVar1 + 0x58) = puVar3 + 1;
        if (puVar3 != (undefined4 *)0x0) {
          *puVar3 = puVar4;
          return *(undefined4 *)(*(int *)((int)pvVar1 + 0x58) + -4);
        }
      }
      else {
        FUN_00982420((void *)((int)pvVar1 + 0x54),puVar3,&local_68);
      }
      return *(undefined4 *)(*(int *)((int)pvVar1 + 0x58) + -4);
    }
  }
  return 0;
}

