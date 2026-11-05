/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Stores the requested unit enum at timer+10 and its binary32
   counter-unit conversion at timer+14. Enum4 selects milliseconds-per-performance-counter-tick from
   global0x10CABCEC, initialized through0x10926450; enum5 selects seconds-per-tick from0x10CABCE8.
   Enum1 uses the separate cycle-counter/frequency relationship. These mappings close the unit of
   the terrain debounce timer rather than establishing a frame-based delay. Analyst-assigned helper
   names are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __thiscall CAW_SetCounterTimerUnit(void *this,undefined4 param_1)

{
  undefined4 uVar1;
  
  uVar1 = DAT_10acb0d4;
  *(undefined4 *)((int)this + 0x10) = param_1;
  *(undefined4 *)((int)this + 0x14) = uVar1;
  switch(param_1) {
  case 1:
    if ((lpFrequency_10c572e8 != lpFrequency_10c572f0) || (DAT_10c572ec != DAT_10c572f4)) {
      *(float *)((int)this + 0x14) =
           (float)((-(float10)(longlong)(((ulonglong)DAT_10c572ec & 0x80000000) << 0x20) +
                   (float10)(CONCAT44(DAT_10c572ec,lpFrequency_10c572e8) & 0x7fffffffffffffff)) /
                  (-(float10)(longlong)(((ulonglong)DAT_10c572f4 & 0x80000000) << 0x20) +
                  (float10)(CONCAT44(DAT_10c572f4,lpFrequency_10c572f0) & 0x7fffffffffffffff)));
      return;
    }
    *(undefined4 *)((int)this + 0x14) = uVar1;
    break;
  case 2:
    uVar1 = DAT_10cabcf4;
  case 0:
    *(undefined4 *)((int)this + 0x14) = uVar1;
    return;
  case 3:
    *(undefined4 *)((int)this + 0x14) = DAT_10cabcf0;
    return;
  case 4:
    *(undefined4 *)((int)this + 0x14) = DAT_10cabcec;
    return;
  case 5:
    *(undefined4 *)((int)this + 0x14) = DAT_10cabce8;
    return;
  case 6:
    *(undefined4 *)((int)this + 0x14) = DAT_10cabce4;
    return;
  }
  return;
}

