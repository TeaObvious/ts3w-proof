/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_00512b80. Physical ECX transform plus XYZ pointer/RET4. Set classification1
   onlywhen0; last matrix row becomes dx*row0+dy*row1+dz*row2+oldrow3. With row-vector point
   consumer this prepends translation T(v)*old. */

void __thiscall UiTransform_PrependTranslation(void *this,float *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  
  if (*(int *)((int)this + 0x40) == 0) {
    *(undefined4 *)((int)this + 0x40) = 1;
  }
  fVar1 = *param_1;
  fVar2 = param_1[1];
  fVar3 = param_1[2];
  *(float *)((int)this + 0x30) =
       fVar1 * *(float *)this + fVar2 * *(float *)((int)this + 0x10) +
       fVar3 * *(float *)((int)this + 0x20) + *(float *)((int)this + 0x30);
  *(float *)((int)this + 0x34) =
       fVar1 * *(float *)((int)this + 4) + fVar2 * *(float *)((int)this + 0x14) +
       fVar3 * *(float *)((int)this + 0x24) + *(float *)((int)this + 0x34);
  *(float *)((int)this + 0x38) =
       fVar1 * *(float *)((int)this + 8) + fVar2 * *(float *)((int)this + 0x18) +
       fVar3 * *(float *)((int)this + 0x28) + *(float *)((int)this + 0x38);
  *(float *)((int)this + 0x3c) =
       fVar1 * *(float *)((int)this + 0xc) + fVar2 * *(float *)((int)this + 0x1c) +
       fVar3 * *(float *)((int)this + 0x2c) + *(float *)((int)this + 0x3c);
  return;
}

