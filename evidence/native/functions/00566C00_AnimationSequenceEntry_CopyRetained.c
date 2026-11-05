/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Copies 20-byte entry; AddRef new
   controller before replacing, Release old after replacement, then copies token, flags and two
   float blend fields. */

void * __thiscall AnimationSequenceEntry_CopyRetained(void *this,int *param_1)

{
  undefined4 *puVar1;
  undefined4 *puVar2;
  int iVar3;
  
  puVar1 = (undefined4 *)*param_1;
  puVar2 = *(undefined4 **)this;
  if (puVar1 != puVar2) {
    if (puVar1 != (undefined4 *)0x0) {
      puVar1[1] = puVar1[1] + 1;
    }
    *(undefined4 **)this = puVar1;
    if ((puVar2 != (undefined4 *)0x0) &&
       (iVar3 = puVar2[1], puVar2[1] = iVar3 + -1, iVar3 + -1 == 0)) {
      puVar2[1] = 1;
      (**(code **)*puVar2)(1);
    }
  }
  *(int *)((int)this + 4) = param_1[1];
  *(int *)((int)this + 8) = param_1[2];
  *(int *)((int)this + 0xc) = param_1[3];
  *(int *)((int)this + 0x10) = param_1[4];
  return this;
}

