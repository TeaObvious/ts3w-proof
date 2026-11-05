/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 roof numeric instruction contract. thiscall roof,two binary32 coordinate stack
   slots RET 8, AL mask. Calls A45460 with two output-float addresses and coordinates; full
   coordinate-frame transform remains unexpanded. Multiplies outputs by stored exact4 in SSE,
   storesbinary32, then same FIST/residual-sign floor-like conversion, virtual dimensions and shared
   unsigned mask. Do not substitute axis-aligned source grid coordinates without that
   transform/caller contract. Input coordinate frame is relative to the selected roof
   representation; global world versus lot-local frame requires its caller, not this leaf. */

byte __thiscall RoofDiagonalHip_MaskAtPosition(void *this,float worldX,float worldZ)

{
  int iVar1;
  int iVar2;
  byte bVar3;
  uint height;
  uint width;
  float fVar4;
  float fVar5;
  
  FUN_00a45460(this,worldX,worldZ,&worldX,&worldZ);
  fVar4 = worldX * DAT_00fb3f7c;
  fVar5 = worldZ * DAT_00fb3f7c;
  iVar1 = (int)ROUND(fVar4);
  iVar2 = (int)ROUND(fVar5);
  height = (**(code **)(*(int *)this + 0x14))();
  width = (**(code **)(*(int *)this + 0x10))();
  bVar3 = RoofHipDiagonalMask_u32
                    (iVar1 + -1 + (uint)((uint)(fVar4 - (float)iVar1) < 0x80000001),
                     iVar2 + -1 + (uint)((uint)(fVar5 - (float)iVar2) < 0x80000001),width,height);
  return bVar3;
}

