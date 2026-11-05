/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Reviewed PC 1.67 global ambience layer tick; ECX receiver, one binary32 stack word, RET 4. If
   byte+A8 is zero, byte+AA may request virtual+3C before rechecking +A8; returning still disabled
   performs no local timer reset. Otherwise ADDSS accumulates delta at+B0. COMISS delay+AC,elapsed
   followed by JA skips only ordered delay>elapsed; equality and unordered reach unsigned
   count/free-slot gates. A selected free slot obtains a value from manager virtual+2C, or zero when
   manager is absent, and submits authored resource words+A0/+A4 plus that value to00860880. There
   is no handle-nonzero or submission-success test. The path then stores the value in the slot,
   increments count+94 and resets elapsed+B0. It does not apply another authored fade envelope.
   Actual virtual targets, downstream submission, event retirement and calling-domain/thread
   behavior require their own producers and consumers; decompiler argument and NaN spellings are not
   the ABI or full branch contract. */

void __thiscall TS3W_AmbienceGlobalTick(void *this,float deltaSeconds)

{
  int *piVar1;
  uint arg2;
  uint uVar2;
  float fVar3;
  
  if (*(char *)((int)this + 0xa8) == '\0') {
    if (*(char *)((int)this + 0xaa) != '\0') {
      (**(code **)(*(int *)this + 0x3c))(this);
    }
                    /* Recheck enable after optional virtual+3C; if still disabled, return without a
                       local elapsed reset. */
    if (*(char *)((int)this + 0xa8) == '\0') {
      return;
    }
  }
  fVar3 = *(float *)((int)this + 0xb0) + deltaSeconds;
  *(float *)((int)this + 0xb0) = fVar3;
                    /* JA skips only ordered delay>elapsed. Equality and unordered NaN reach the
                       unsigned capacity/free-slot gates; decompiled <= omits the unordered path. */
  if (((*(float *)((int)this + 0xac) <= fVar3) &&
      (*(uint *)((int)this + 0x94) < *(uint *)((int)this + 0x98))) &&
     (uVar2 = 0, *(uint *)((int)this + 0x98) != 0)) {
    piVar1 = (int *)((int)this + 0x14);
    while (*piVar1 != 0) {
      uVar2 = uVar2 + 1;
      piVar1 = piVar1 + 1;
      if (*(uint *)((int)this + 0x98) <= uVar2) {
        return;
      }
    }
    piVar1 = (int *)FUN_008afe00();
    if (piVar1 == (int *)0x0) {
      arg2 = 0;
    }
    else {
      arg2 = (**(code **)(*piVar1 + 0x2c))(piVar1);
    }
    Audio_SubmitKeyedPlayCommand(*(uint *)((int)this + 0xa0),*(uint *)((int)this + 0xa4),arg2);
    *(uint *)((int)this + uVar2 * 4 + 0x14) = arg2;
    *(int *)((int)this + 0x94) = *(int *)((int)this + 0x94) + 1;
                    /* Reset elapsed after submission and slot/count commit; this path tests neither
                       nonzero handle nor backend success. */
    *(undefined4 *)((int)this + 0xb0) = 0;
  }
  return;
}

