/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67: advances elapsed/duration, marks duration inactive when complete, and writes
   eight position/target components with cubic ease-out weight 1-(1-fraction)^3. The exponent 3.0 is
   an original PE constant, not a decompiler guess. Raw instruction proof:
   00963060_CameraPoseLerp_TickCubicEaseOut.asm. Reference
   original PC 1.67 TS3W.exe. */

void __thiscall CameraPoseLerp_TickCubicEaseOut(void *this,float param_1)

{
  float fVar1;
  float fVar2;
  float10 fVar3;
  float fVar4;
  
  fVar2 = DAT_00f998f8;
  fVar1 = *(float *)((int)this + 0x74);
  if (0.0 <= fVar1) {
    fVar4 = param_1 + *(float *)((int)this + 0x70);
    *(float *)((int)this + 0x70) = fVar4;
    if ((fVar1 <= 0.0) || (fVar2 <= fVar4 / fVar1)) {
      *(undefined4 *)((int)this + 0x74) = DAT_00fab218;
    }
    fVar3 = (float10)_CIpow();
    fVar1 = (float)((float10)1 - fVar3);
    *(float *)((int)this + 0x10) =
         (*(float *)((int)this + 0x30) - *(float *)((int)this + 0x50)) * fVar1 +
         *(float *)((int)this + 0x50);
    *(float *)((int)this + 0x14) =
         (*(float *)((int)this + 0x34) - *(float *)((int)this + 0x54)) * fVar1 +
         *(float *)((int)this + 0x54);
    *(float *)((int)this + 0x18) =
         (*(float *)((int)this + 0x38) - *(float *)((int)this + 0x58)) * fVar1 +
         *(float *)((int)this + 0x58);
    *(float *)((int)this + 0x1c) =
         (*(float *)((int)this + 0x3c) - *(float *)((int)this + 0x5c)) * fVar1 +
         *(float *)((int)this + 0x5c);
    *(float *)((int)this + 0x20) =
         (*(float *)((int)this + 0x40) - *(float *)((int)this + 0x60)) * fVar1 +
         *(float *)((int)this + 0x60);
    *(float *)((int)this + 0x24) =
         (*(float *)((int)this + 0x44) - *(float *)((int)this + 100)) * fVar1 +
         *(float *)((int)this + 100);
    *(float *)((int)this + 0x28) =
         (*(float *)((int)this + 0x48) - *(float *)((int)this + 0x68)) * fVar1 +
         *(float *)((int)this + 0x68);
    *(float *)((int)this + 0x2c) =
         (*(float *)((int)this + 0x4c) - *(float *)((int)this + 0x6c)) * fVar1 +
         *(float *)((int)this + 0x6c);
  }
  return;
}

