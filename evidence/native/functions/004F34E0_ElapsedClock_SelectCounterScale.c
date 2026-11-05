/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: mode field and binary32 scale selection including mode4 milliseconds; no
   initialization success guarantee.
   Mode 4 copies the calibrated global milliseconds scale. Selection does not itself establish
   successful initialization/calibration. Preserve binary32 scale and the literal mode branches; RET
   4.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __thiscall ElapsedClock_SelectCounterScale(void *this,undefined4 param_1)

{
  float fVar1;
  
  *(undefined4 *)((int)this + 0x10) = param_1;
  *(float *)((int)this + 0x14) = 1.0;
  fVar1 = 1.0;
  switch(param_1) {
  case 1:
    if ((DAT_0114d9f0 != DAT_0114d9f8) || (DAT_0114d9f4 != DAT_0114d9fc)) {
      *(float *)((int)this + 0x14) =
           (float)((-(float10)(longlong)(((ulonglong)DAT_0114d9f4 & 0x80000000) << 0x20) +
                   (float10)(CONCAT44(DAT_0114d9f4,DAT_0114d9f0) & 0x7fffffffffffffff)) /
                  (-(float10)(longlong)(((ulonglong)DAT_0114d9fc & 0x80000000) << 0x20) +
                  (float10)(CONCAT44(DAT_0114d9fc,DAT_0114d9f8) & 0x7fffffffffffffff)));
      return;
    }
    *(float *)((int)this + 0x14) = 1.0;
    break;
  case 2:
    fVar1 = DAT_011cc904;
  case 0:
    *(float *)((int)this + 0x14) = fVar1;
    return;
  case 3:
    *(undefined4 *)((int)this + 0x14) = DAT_011cc900;
    return;
  case 4:
    *(undefined4 *)((int)this + 0x14) = DAT_011cc8fc;
    return;
  case 5:
    *(undefined4 *)((int)this + 0x14) = DAT_011cc8f8;
    return;
  case 6:
    *(undefined4 *)((int)this + 0x14) = DAT_011cc8f4;
    return;
  }
  return;
}

