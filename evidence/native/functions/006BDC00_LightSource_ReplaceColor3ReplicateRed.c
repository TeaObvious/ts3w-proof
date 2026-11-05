/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX source; pointer to THREE scalar floats
   RET4; void. Reads RGB12 and constructs aligned vector(R,G,B,R), explicitly replicating RED into
   fourth lane (not literal alpha1). Replaces+F0; if flag+100 bit20, effective+E0=controlVector+10
   *new vector, otherwise zero. Input may be unaligned because individual MOVSS loads; source object
   aligned accesses remain required. No finite/sign checks or+130 write. Complete LITE
   factory/decoder remains outside this body. */

void __thiscall LightSource_ReplaceColor3ReplicateRed(void *this,float *sourceRgb3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  
  fVar1 = sourceRgb3[2];
  fVar2 = *sourceRgb3;
  fVar3 = sourceRgb3[1];
  *(float *)((int)this + 0xf0) = fVar2;
  *(float *)((int)this + 0xf4) = fVar3;
  *(float *)((int)this + 0xf8) = fVar1;
  *(float *)((int)this + 0xfc) = fVar2;
  if ((*(byte *)((int)this + 0x100) & 0x20) != 0) {
    *(float *)((int)this + 0xe0) = *(float *)((int)this + 0x10) * fVar2;
    *(float *)((int)this + 0xe4) = *(float *)((int)this + 0x14) * fVar3;
    *(float *)((int)this + 0xe8) = *(float *)((int)this + 0x18) * fVar1;
    *(float *)((int)this + 0xec) = *(float *)((int)this + 0x1c) * fVar2;
    return;
  }
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(undefined4 *)((int)this + 0xe4) = 0;
  *(undefined4 *)((int)this + 0xe8) = 0;
  *(undefined4 *)((int)this + 0xec) = 0;
  return;
}

