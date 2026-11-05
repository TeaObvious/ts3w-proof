/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 local light rig contract. ECX candidate+fourstackargs RET10.
   Copiesdirectionfourfloats. Colors=((inputColor * inputMultiplier) * (globalFLOAT11D1A28 *
   dynamicsetting11D1BB0)) withSSEfloatboundary/order, allfourlanes. Brightness+28=(B*global11D2148
   +G*global11D2144)+R*global11D2140 inthatinstructionorder. StorespayloadWord+24. NOmax(0,dot)
   orfixed(.21,.67,.12) established; these globals are mutable and located in uninitialized BSS (NOT
   file-backed) andtheirproducer/defaultsremainopen. +20/+2Cnotsethere;
   initializer6BC2D0/callerprovideotherfields. */

void __thiscall
RigCandidate_InitializeScaled
          (void *this,float *direction,float *color,float *colorMultiplier,uint payloadWord)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float *pfVar7;
  float fVar8;
  
  pfVar7 = (float *)FUN_007e51a0(&DAT_011d1bb0);
  fVar8 = fRam011d1a28 * *pfVar7;
  fVar1 = direction[1];
  fVar2 = direction[2];
  fVar3 = direction[3];
  *(float *)this = *direction;
  *(float *)((int)this + 4) = fVar1;
  *(float *)((int)this + 8) = fVar2;
  *(float *)((int)this + 0xc) = fVar3;
  fVar1 = colorMultiplier[1];
  fVar2 = colorMultiplier[2];
  fVar3 = colorMultiplier[3];
  fVar4 = color[1];
  fVar5 = color[2];
  fVar6 = color[3];
  *(float *)((int)this + 0x10) = *color * *colorMultiplier * fVar8;
  *(float *)((int)this + 0x14) = fVar4 * fVar1 * fVar8;
  *(float *)((int)this + 0x18) = fVar5 * fVar2 * fVar8;
  *(float *)((int)this + 0x1c) = fVar6 * fVar3 * fVar8;
  *(float *)((int)this + 0x28) =
       *(float *)((int)this + 0x18) * fRam011d2148 + *(float *)((int)this + 0x14) * fRam011d2144 +
       *(float *)((int)this + 0x10) * _DAT_011d2140;
  *(uint *)((int)this + 0x24) = payloadWord;
  return;
}

