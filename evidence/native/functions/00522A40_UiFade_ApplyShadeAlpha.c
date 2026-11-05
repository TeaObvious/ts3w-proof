/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 40-instruction/115-byte fade shade write. Save x87 control word, set rounding toward
   zero, FISTP qword conversion using original float -255.0 at 00FBD814, restore control word, shift
   low DWORD by 24 and subtract from retained RGB. No alpha clamp is established. This is not
   current MathF.Round(positive 255*lerp) plus unchecked shift/OR; instruction precision and
   exceptional numeric results are not silently repaired. */

void __thiscall UiFade_ApplyShadeAlpha(void *this,int *param_1,float param_2)

{
  float fVar1;
  int iVar2;
  uint uVar3;
  undefined4 uStack_8;
  
  iVar2 = *param_1;
  fVar1 = *(float *)((int)this + 0x70);
  uVar3 = (**(code **)(iVar2 + 0x30))();
  uStack_8 = (int)(longlong)
                  ROUND(((*(float *)((int)this + 0x74) - fVar1) * param_2 + fVar1) * -255.0);
  (**(code **)(iVar2 + 0x60))((uVar3 & 0xffffff) + uStack_8 * -0x1000000);
  return;
}

