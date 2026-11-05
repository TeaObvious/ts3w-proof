/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX aligned light source; sourceColor4
   pointer RET4; void. MOVAPS reads ALL16bytes (caller pointer must be16aligned), replaces
   source+F0..FC verbatim, does not multiply old authored colour. If flagBYTE+100 bit20 set, ordered
   SIMD MULPS controlVector+10 *new sourceColor4 ->effective+E0; otherwise stores allzero. No
   finite/sign/range checks. Does not write separate scalar+130; meaning/consumer of that scalar
   remains separate. */

void __thiscall LightSource_ReplaceAlignedColor4(void *this,float *sourceColor4)

{
  float fVar1;
  float fVar2;
  float fVar3;
  
  fVar1 = sourceColor4[1];
  fVar2 = sourceColor4[2];
  fVar3 = sourceColor4[3];
  *(float *)((int)this + 0xf0) = *sourceColor4;
  *(float *)((int)this + 0xf4) = fVar1;
  *(float *)((int)this + 0xf8) = fVar2;
  *(float *)((int)this + 0xfc) = fVar3;
  if ((*(byte *)((int)this + 0x100) & 0x20) != 0) {
    fVar1 = sourceColor4[1];
    fVar2 = sourceColor4[2];
    fVar3 = sourceColor4[3];
    *(float *)((int)this + 0xe0) = *(float *)((int)this + 0x10) * *sourceColor4;
    *(float *)((int)this + 0xe4) = *(float *)((int)this + 0x14) * fVar1;
    *(float *)((int)this + 0xe8) = *(float *)((int)this + 0x18) * fVar2;
    *(float *)((int)this + 0xec) = *(float *)((int)this + 0x1c) * fVar3;
    return;
  }
  *(undefined4 *)((int)this + 0xe0) = 0;
  *(undefined4 *)((int)this + 0xe4) = 0;
  *(undefined4 *)((int)this + 0xe8) = 0;
  *(undefined4 *)((int)this + 0xec) = 0;
  return;
}

