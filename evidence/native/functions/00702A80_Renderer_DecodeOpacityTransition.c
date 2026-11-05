/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. ECX renderer; GUID low/high +payload16. Reads
   unsigned alpha bytes from+0B and+0F, converts CVTSI2SS then MULSS by binary32(1/255)00FAE564.
   Target normalized/clamped0..1, timefrom+0,flagbyte+4.
   Calls007021A0(target,duration,explicitFrom,from). Pointer/float aliases in decompilation are
   storage artifacts. */

void __thiscall
Renderer_DecodeOpacityTransition(void *this,uint objectIdLo,uint objectIdHi,uint *payload16)

{
  uint *puVar1;
  uint **ppuVar2;
  uint **ppuVar3;
  uint *local_10;
  float local_c;
  byte local_8;
  undefined3 uStack_7;
  float local_4;
  
  ppuVar2 = &local_10;
  ppuVar3 = &local_10;
  local_c = (float)*(byte *)((int)payload16 + 0xb) * DAT_00fae564;
  local_4 = (float)*payload16;
  puVar1 = payload16 + 1;
  _local_8 = CONCAT31(uStack_7,(byte)*puVar1);
  local_10 = (uint *)0x0;
  if (0.0 <= (float)*(byte *)((int)payload16 + 0xf) * DAT_00fae564) {
    ppuVar2 = &payload16;
  }
  payload16 = *ppuVar2;
  local_10 = DAT_00f998f8;
  if ((float)payload16 <= (float)DAT_00f998f8) {
    ppuVar3 = &payload16;
  }
  Renderer_RequestObjectOpacityTransition
            (this,objectIdLo,objectIdHi,(float)*ppuVar3,local_4,(byte)*puVar1,local_c);
  return;
}

