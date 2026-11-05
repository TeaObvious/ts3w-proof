/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC167_STATIC_ROTATE_0053d4e0. Physical ECX effect plus two stack words/RET8; second word is
   transform receiver. Compare abs axisXYZ strictly above epsilon bits34000000; zeroactive skips,
   one selects X/Y/Z, multiple selects arbitrary-axis helper. Stored angle compared with0; use one
   MULSS by degree factor bits3C8EFA35. Sole-axis helpers receive no axis sign/magnitude. Message14
   dispatcher supplies the Window+b0 receiver; see50CF40/504BE0. Existing inferred signature/storage
   retained. */

void __thiscall StaticRotate_ApplyTransform(void *this,undefined4 param_1,void *param_2)

{
  float fVar1;
  byte bVar2;
  undefined1 uVar3;
  
  bVar2 = _DAT_00fc05e0 < ABS(*(float *)((int)this + 0x10));
  uVar3 = _DAT_00fc05e0 < ABS(*(float *)((int)this + 0x14));
  if ((bool)uVar3) {
    bVar2 = bVar2 + 1;
  }
  if (_DAT_00fc05e0 < ABS(*(float *)((int)this + 0x18))) {
    uVar3 = 2;
    bVar2 = bVar2 + 1;
  }
  if (1 < bVar2) {
    uVar3 = 3;
  }
  if ((bVar2 != 0) && (fVar1 = *(float *)((int)this + 0x20), fVar1 != DAT_010f4ccc)) {
    switch(uVar3) {
    case 0:
      FUN_00512be0(param_2,fVar1 * _DAT_00fc05dc);
      return;
    case 1:
      FUN_00512cd0(param_2,fVar1 * _DAT_00fc05dc);
      return;
    case 2:
      UiTransform_AppendZRotation(param_2,fVar1 * _DAT_00fc05dc);
      return;
    case 3:
      FUN_00512eb0(param_2,(float *)((int)this + 0x10),fVar1 * _DAT_00fc05dc);
    }
  }
  return;
}

