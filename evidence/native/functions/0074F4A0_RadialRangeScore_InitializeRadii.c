/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Initializes preferred-radius score context: center float4,
   preferredRadius squared+0x10, minRadius squared+0x14, maxRadius squared+0x18, positive-side spans
   at+0x1c/+0x20. Consumer0074f810 evaluates squared radial deviation. */

void __thiscall
RadialRangeScore_InitializeRadii
          (void *this,undefined4 *param_1,float param_2,float param_3,float param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  
  uVar1 = param_1[1];
  uVar2 = param_1[2];
  uVar3 = param_1[3];
  *(undefined4 *)this = *param_1;
  *(undefined4 *)((int)this + 4) = uVar1;
  *(undefined4 *)((int)this + 8) = uVar2;
  *(undefined4 *)((int)this + 0xc) = uVar3;
  fVar6 = param_4 * param_4;
  uVar4 = (int)(param_2 * param_2 - fVar6) >> 0x1f;
  fVar5 = (float)(~uVar4 & (uint)fVar6 | (uint)(param_2 * param_2) & uVar4);
  fVar7 = param_3 * param_3;
  uVar4 = (int)(fVar5 - fVar7) >> 0x1f;
  fVar5 = (float)(~uVar4 & (uint)fVar5 | (uint)fVar7 & uVar4);
  *(float *)((int)this + 0x18) = fVar6;
  *(float *)((int)this + 0x14) = fVar7;
  *(float *)((int)this + 0x10) = fVar5;
  *(float *)((int)this + 0x1c) = fVar5 - fVar7;
  *(float *)((int)this + 0x20) = fVar6 - fVar5;
  return;
}

