/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract: role name is inferred, not a recovered original
   symbol. Physical ECX owner, two stack output pointers, RET8; no boolean/status return. MOVAPS
   copies exactly32 bytes from owner+50/+60 into output1 and64 bytes from owner+80/+90/+A0/+B0 into
   output2 before any calls. SIMD lane bits are copied, not converted or transformed; decompiler
   undefined4 scalar lanes do not prove integer-valued geometry. Owner and output buffers must meet
   the original aligned-access requirements; no null/size checks. CALL6DB500 with ECX=owner+210
   selects an optional interface. Only when nonnull, CALL60FC70 supplies an integer tested with
   mask00200000; despite the callee's existing analyst name, this use is an EAX bit test. If the bit
   is clear, CALL5044D0 on the selected interface returns a source whose first32 bytes overwrite
   output1. Output2 is never rewritten. Selection/source producers, precise bounds
   subtype/coordinate space and all vtable consumers remain outside this body; do not infer
   Sim-specific weighted skinning, local-to-world arithmetic, render scheduling or Vulkan fence
   semantics. Static instruction evidence only; original bytes unchanged. */

void __thiscall
RenderBounds_CopySelectedBoundsAndTransform(void *this,undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int iVar4;
  uint uVar5;
  undefined4 *puVar6;
  
  uVar1 = *(undefined4 *)((int)this + 0x54);
  uVar2 = *(undefined4 *)((int)this + 0x58);
  uVar3 = *(undefined4 *)((int)this + 0x5c);
  *param_1 = *(undefined4 *)((int)this + 0x50);
  param_1[1] = uVar1;
  param_1[2] = uVar2;
  param_1[3] = uVar3;
  uVar1 = *(undefined4 *)((int)this + 100);
  uVar2 = *(undefined4 *)((int)this + 0x68);
  uVar3 = *(undefined4 *)((int)this + 0x6c);
  param_1[4] = *(undefined4 *)((int)this + 0x60);
  param_1[5] = uVar1;
  param_1[6] = uVar2;
  param_1[7] = uVar3;
  uVar1 = *(undefined4 *)((int)this + 0x84);
  uVar2 = *(undefined4 *)((int)this + 0x88);
  uVar3 = *(undefined4 *)((int)this + 0x8c);
  *param_2 = *(undefined4 *)((int)this + 0x80);
  param_2[1] = uVar1;
  param_2[2] = uVar2;
  param_2[3] = uVar3;
  uVar1 = *(undefined4 *)((int)this + 0x94);
  uVar2 = *(undefined4 *)((int)this + 0x98);
  uVar3 = *(undefined4 *)((int)this + 0x9c);
  param_2[4] = *(undefined4 *)((int)this + 0x90);
  param_2[5] = uVar1;
  param_2[6] = uVar2;
  param_2[7] = uVar3;
  uVar1 = *(undefined4 *)((int)this + 0xa4);
  uVar2 = *(undefined4 *)((int)this + 0xa8);
  uVar3 = *(undefined4 *)((int)this + 0xac);
  param_2[8] = *(undefined4 *)((int)this + 0xa0);
  param_2[9] = uVar1;
  param_2[10] = uVar2;
  param_2[0xb] = uVar3;
  uVar1 = *(undefined4 *)((int)this + 0xb4);
  uVar2 = *(undefined4 *)((int)this + 0xb8);
  uVar3 = *(undefined4 *)((int)this + 0xbc);
  param_2[0xc] = *(undefined4 *)((int)this + 0xb0);
  param_2[0xd] = uVar1;
  param_2[0xe] = uVar2;
  param_2[0xf] = uVar3;
  iVar4 = FUN_006db500((int)this + 0x210);
  if (iVar4 != 0) {
    uVar5 = GetNativeDescriptorTypeName_Field44((int)this);
    if ((uVar5 & 0x200000) == 0) {
      puVar6 = (undefined4 *)FUN_005044d0(iVar4);
      uVar1 = puVar6[1];
      uVar2 = puVar6[2];
      uVar3 = puVar6[3];
      *param_1 = *puVar6;
      param_1[1] = uVar1;
      param_1[2] = uVar2;
      param_1[3] = uVar3;
      uVar1 = puVar6[5];
      uVar2 = puVar6[6];
      uVar3 = puVar6[7];
      param_1[4] = puVar6[4];
      param_1[5] = uVar1;
      param_1[6] = uVar2;
      param_1[7] = uVar3;
    }
  }
  return;
}

