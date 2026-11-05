/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Transforms the input world X/Z pair using stored rows and a fixed 0.5 middle input. Tests the
   transformed coordinates against its stored bounds and queries the admitted partition; rejected
   coordinates return zero. Exact bound-global values and partition selection child behavior are not
   established by this body alone. */

undefined4 __thiscall RoomPartition_QueryWorldXZ(void *this,float param_1,float param_2)

{
  float fVar1;
  undefined4 uVar2;
  float fVar3;
  float fVar4;
  
  fVar3 = param_1 * *(float *)((int)this + 0xe0) + *(float *)((int)this + 0x110) +
          _DAT_00f9b5b4 * *(float *)((int)this + 0xf0) + param_2 * *(float *)((int)this + 0x100);
  fVar4 = param_1 * *(float *)((int)this + 0xe8) + *(float *)((int)this + 0x118) +
          _DAT_00f9b5b4 * *(float *)((int)this + 0xf8) + param_2 * *(float *)((int)this + 0x108);
  if (DAT_010f4ccc <= fVar3) {
    fVar1 = (float)*(int *)((int)this + 0x264);
    if (*(int *)((int)this + 0x264) < 0) {
      fVar1 = fVar1 + FLOAT_00f99948;
    }
    if (fVar3 <= fVar1) {
      if (DAT_010f4ccc <= fVar4) {
        fVar1 = (float)*(int *)((int)this + 0x268);
        if (*(int *)((int)this + 0x268) < 0) {
          fVar1 = fVar1 + FLOAT_00f99948;
        }
        if (fVar4 <= fVar1) {
          uVar2 = FUN_006a6740(this,fVar3,fVar4);
          return uVar2;
        }
      }
    }
  }
  return 0;
}

