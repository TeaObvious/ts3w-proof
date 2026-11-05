/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 complete146-byte thiscall one BrushRasterSample pointer, RET4, ALBoolean not whole EAX.
   Reject texel8==0 or current tool okE4==0. Sample+4C is product aspect (strength+20),+50 Float32
   softness, signed Int32 X/Z at0/4. Ground manager lot34->290 selects retained
   current18-minus-min10 plane with grid24 strides4/8 and data10. Target uses x87 FLD strength, FMUL
   sample softness, FIMUL zero-extended byte texel, FSUBR current ground, then SINGLE FSTP Float32
   atD3FDFA; there is NO Float32 product store, clamp255, equality gate or explicit NaN skip. Native
   current CW precision not set here; explicit portable53-bit double intermediates are a bounded
   host profile, not universal64-bit/CW/exception parity. Calls D391B0 with target, pointer toolE4
   and errors10C; returns that AL directly. Full mutation/error/history/controller policy is
   separate from target arithmetic. */

bool __thiscall WaterTool_DigSample(void *this,BrushRasterSample *sample)

{
  byte *pbVar1;
  int iVar2;
  int iVar3;
  BrushRasterSample *pBVar4;
  bool bVar5;
  
  pBVar4 = sample;
  pbVar1 = &sample->texel;
  sample = (BrushRasterSample *)(uint)*pbVar1;
  if ((*pbVar1 != 0) && (*(char *)((int)this + 0xe4) != '\0')) {
    iVar2 = *(int *)(*(int *)((int)this + 0x34) + 0x290);
    iVar3 = *(int *)(iVar2 + 0x24);
    bVar5 = WaterUndoable_ChangeGroundElevation
                      (*(void **)((int)this + 0x194),pBVar4->sampleX,pBVar4->sampleZ,
                       *(float *)(*(int *)(iVar3 + 0x10) +
                                 (((*(int *)(iVar2 + 0x18) - *(int *)(iVar2 + 0x10)) *
                                   *(int *)(iVar3 + 4) + pBVar4->sampleX) * *(int *)(iVar3 + 8) +
                                 pBVar4->sampleZ) * 4) -
                       pBVar4->brush->strength * pBVar4->softness * (float)(int)sample,
                       (bool *)((int)this + 0xe4),(undefined *)((int)this + 0x10c));
    return bVar5;
  }
  return false;
}

