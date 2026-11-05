/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX actor, one dword RET4; normalizes species0
   to100 and reduces nonzero age7F/sex3000 masks to their least-set-bit positions through
   branch/shift arithmetic, then stores recomposed bits at+2F0. Zero-mask path supplies shift
   count32; x86 masks the count to0, producing bit0. Consumer of005E0B40; raw rig flags and
   actor-normalized flags are distinct. Full downstream rig/resource/scene update is not established
   by this leaf. */

void __thiscall AnimationActor_SetCasFlags(void *this,uint param_1)

{
  char cVar1;
  byte bVar2;
  uint uVar3;
  char cVar4;
  byte bVar5;
  uint uVar6;
  uint uVar7;
  
  uVar6 = param_1 & 0x3000;
  uVar7 = param_1 & 0xcf00;
  uVar3 = param_1 & 0x7f;
  if (uVar3 == 0) {
    bVar5 = 0;
  }
  else {
    cVar4 = '\x01';
    if (uVar3 == 0) {
      cVar4 = '\x11';
      uVar3 = 0;
    }
    if ((char)uVar3 == '\0') {
      cVar4 = cVar4 + '\b';
      uVar3 = 0;
    }
    if ((uVar3 & 0xf) == 0) {
      cVar4 = cVar4 + '\x04';
      uVar3 = uVar3 >> 4;
    }
    bVar5 = (byte)uVar3;
    if ((uVar3 & 3) == 0) {
      cVar4 = cVar4 + '\x02';
      bVar5 = (byte)(uVar3 >> 2);
    }
    bVar5 = cVar4 - (bVar5 & 1);
  }
  if (uVar6 == 0) {
    bVar2 = 0;
  }
  else {
    cVar4 = '\x01';
    if (uVar6 == 0) {
      cVar4 = '\x11';
      uVar6 = 0;
    }
    cVar1 = cVar4 + '\f';
    bVar2 = (byte)(uVar6 >> 0xc);
    if (uVar6 >> 0xc == 0) {
      cVar1 = cVar4 + '\x0e';
      bVar2 = 0;
    }
    bVar2 = cVar1 - (bVar2 & 1);
  }
  if (uVar7 == 0) {
    uVar7 = 0x100;
  }
  *(uint *)((int)this + 0x2f0) = uVar7 | 1 << (bVar2 & 0x1f) | 1 << (bVar5 & 0x1f);
  return;
}

