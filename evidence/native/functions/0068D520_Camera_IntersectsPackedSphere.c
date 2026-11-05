/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 object screen-query original boundary review (2026-10-17). Complete194B51Listing. ECX
   camera plus one stack float4 sphere pointer, RET4/AL Boolean. Two packed comparison blocks
   evaluate eight serialized lanes, inverting/or-ing masks and accepting only no outside/unordered
   lane. No claim that native eight lanes equal current six normalized clip planes or that complete
   camera-plane production was reconstructed. No distance-gate test in this helper. Original managed
   World facade and UInt64/Boolean forwarder remain authoritative. IDs, physical ABI, inferred
   prototypes/types, body/bytes/Listing/flow/references and analysis state remain unchanged. */

undefined4 __thiscall Camera_IntersectsPackedSphere(void *this,float *param_1)

{
  undefined1 auVar1 [16];
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  int iVar6;
  undefined1 auVar7 [16];
  
  fVar2 = *param_1;
  fVar3 = param_1[1];
  fVar4 = param_1[2];
  fVar5 = param_1[3];
  auVar7._0_8_ = CONCAT44(-(uint)(*(float *)((int)this + 0x2a4) <=
                                 *(float *)((int)this + 0x144) * fVar3 +
                                 *(float *)((int)this + 0x124) * fVar2 +
                                 *(float *)((int)this + 0x164) * fVar4 + fVar5),
                          -(uint)(*(float *)((int)this + 0x2a0) <=
                                 *(float *)((int)this + 0x140) * fVar3 +
                                 *(float *)((int)this + 0x120) * fVar2 +
                                 *(float *)((int)this + 0x160) * fVar4 + fVar5)) ^
                 0xffffffffffffffff;
  auVar7._8_4_ = -(uint)(*(float *)((int)this + 0x2a8) <=
                        *(float *)((int)this + 0x148) * fVar3 +
                        *(float *)((int)this + 0x128) * fVar2 +
                        *(float *)((int)this + 0x168) * fVar4 + fVar5) ^ 0xffffffff;
  auVar7._12_4_ =
       -(uint)(*(float *)((int)this + 0x2ac) <=
              *(float *)((int)this + 0x14c) * fVar3 + *(float *)((int)this + 300) * fVar2 +
              *(float *)((int)this + 0x16c) * fVar4 + fVar5) ^ 0xffffffff;
  auVar1._8_4_ = -(uint)(*(float *)((int)this + 0x2b8) <=
                        *(float *)((int)this + 0x158) * fVar3 +
                        *(float *)((int)this + 0x138) * fVar2 +
                        *(float *)((int)this + 0x178) * fVar4 + fVar5) ^ 0xffffffff;
  auVar1._0_8_ = CONCAT44(-(uint)(*(float *)((int)this + 0x2b4) <=
                                 *(float *)((int)this + 0x154) * fVar3 +
                                 *(float *)((int)this + 0x134) * fVar2 +
                                 *(float *)((int)this + 0x174) * fVar4 + fVar5),
                          -(uint)(*(float *)((int)this + 0x2b0) <=
                                 *(float *)((int)this + 0x150) * fVar3 +
                                 *(float *)((int)this + 0x130) * fVar2 +
                                 *(float *)((int)this + 0x170) * fVar4 + fVar5)) ^
                 0xffffffffffffffff;
  auVar1._12_4_ =
       -(uint)(*(float *)((int)this + 700) <=
              *(float *)((int)this + 0x15c) * fVar3 + *(float *)((int)this + 0x13c) * fVar2 +
              *(float *)((int)this + 0x17c) * fVar4 + fVar5) ^ 0xffffffff;
  iVar6 = movmskps(this,auVar7 | auVar1);
  return CONCAT31(0xffffff,iVar6 == 0);
}

