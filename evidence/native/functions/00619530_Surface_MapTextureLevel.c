/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=surface, output40-byte mapping/mip/flags RET12,
   returns SAME output EAX. Zeroes all ten output DWORDs first. Only surface kind2C==0 and
   backing30!=NULL proceeds. Flagsbit0 maps2000, bit1 maps10. Virtual+4C physical COM-style stdcall
   pushes EXPLICIT backing receiver,mip,&lockedRect,NULL,flags (five words), returns signed HRESULT.
   HRESULT<0 or bits unsigned<8000 leaves output zero; no compensating unlock on that rejection in
   THIS body. Success copies bits/pitch, derives dimensions via6194F0, face0,mip and original flags.
   Typed lockedRect is pitch+bits, not unaffiliated EBP; previous decompiler lost stdcall cleanup.
   GPU/API complete admission remains unexpanded. */

PC167_SurfaceMapping * __thiscall
Surface_MapTextureLevel(void *this,PC167_SurfaceMapping *outputMapping,uint mipLevel,uint mapFlags)

{
  int iVar1;
  uint arg4;
  PC167_LockedRect lockedRect;
  
  outputMapping->bits = (void *)0x0;
  outputMapping->rowPitchBytes = 0;
  outputMapping->word08 = 0;
  outputMapping->flags = 0;
  outputMapping->word10 = 0;
  outputMapping->word14 = 0;
  outputMapping->width = 0;
  outputMapping->height = 0;
  outputMapping->face = 0;
  outputMapping->mipLevel = 0;
  if ((*(int *)((int)this + 0x2c) == 0) && (*(int *)((int)this + 0x30) != 0)) {
    arg4 = 0;
    if ((mapFlags & 1) != 0) {
      arg4 = 0x2000;
    }
    if ((mapFlags & 2) != 0) {
      arg4 = arg4 | 0x10;
    }
                    /* Five STDCALL stack words including explicit receiver. lockedRect is
                       {pitch,bits}; fix cleanup before interpreting EBP/local aliases. */
    iVar1 = (**(code **)(**(int **)((int)this + 0x30) + 0x4c))
                      (*(int **)((int)this + 0x30),mipLevel,&lockedRect,(void *)0x0,arg4);
    if ((-1 < iVar1) && ((void *)0x7fff < lockedRect.bits)) {
      outputMapping->bits = lockedRect.bits;
      outputMapping->rowPitchBytes = lockedRect.pitchBytes;
      MipDimensions_ShiftAndClampOne
                (*(uint *)((int)this + 0x14),*(uint *)((int)this + 0x18),mipLevel,
                 &outputMapping->width,&outputMapping->height);
      outputMapping->face = 0;
      outputMapping->mipLevel = mipLevel;
      outputMapping->flags = mapFlags;
    }
  }
  return outputMapping;
}

