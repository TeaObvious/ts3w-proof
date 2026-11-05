/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX source; float32 dimmer and notify
   LOWBYTE in TWO physical stack words RET8; result Boolean AL. SUBPS(oldVector+10,splat input);
   low-lane COMISS against0 chooses difference or negated vector (unordered takes negative branch).
   Low-lane COMISS against original binary32 at106E6EC (3C23D70A,0.009999999776482582); only ordered
   strictly greater updates. Equality/less/NaN returnsAL0 unchanged. Updates ALLfour control lanes,
   then source+F0 times controls ->effective+E0 when bit20 enabled else zero. notify lowbyte nonzero
   invokes virtual+44 only after update. No finite guard; Inf can update for ordered infinite
   difference. Scalar+130 untouched. */

bool __thiscall LightSource_SetDimmerAboveThreshold(void *this,float dimmer,byte notify)

{
  float *pfVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_20 = *(float *)((int)this + 0x10) - dimmer;
  fStack_1c = *(float *)((int)this + 0x14) - dimmer;
  fStack_18 = *(float *)((int)this + 0x18) - dimmer;
  fStack_14 = *(float *)((int)this + 0x1c) - dimmer;
  local_30 = 0.0;
  if (local_20 < 0.0) {
    local_30 = 0.0 - local_20;
    fStack_2c = 0.0 - fStack_1c;
    fStack_28 = 0.0 - fStack_18;
    fStack_24 = 0.0 - fStack_14;
    pfVar1 = &local_30;
  }
  else {
    pfVar1 = &local_20;
  }
  local_20 = *pfVar1;
  local_30 = 0.01;
                    /* COMISS/JBE: equality, less and unordered all skip update; NOT >=0.01 and no
                       finite guard. */
  if (0.01 < local_20) {
    *(float *)((int)this + 0x10) = dimmer;
    *(float *)((int)this + 0x14) = dimmer;
    *(float *)((int)this + 0x18) = dimmer;
    *(float *)((int)this + 0x1c) = dimmer;
    *(undefined4 *)((int)this + 0xf0) = *(undefined4 *)((int)this + 0xf0);
    *(undefined4 *)((int)this + 0xf4) = *(undefined4 *)((int)this + 0xf4);
    *(undefined4 *)((int)this + 0xf8) = *(undefined4 *)((int)this + 0xf8);
    *(undefined4 *)((int)this + 0xfc) = *(undefined4 *)((int)this + 0xfc);
    if ((*(byte *)((int)this + 0x100) & 0x20) == 0) {
      fVar2 = 0.0;
      fVar3 = 0.0;
      fVar4 = 0.0;
      fVar5 = 0.0;
    }
    else {
      fVar2 = *(float *)((int)this + 0xf0) * *(float *)((int)this + 0x10);
      fVar3 = *(float *)((int)this + 0xf4) * *(float *)((int)this + 0x14);
      fVar4 = *(float *)((int)this + 0xf8) * *(float *)((int)this + 0x18);
      fVar5 = *(float *)((int)this + 0xfc) * *(float *)((int)this + 0x1c);
    }
    *(float *)((int)this + 0xe0) = fVar2;
    *(float *)((int)this + 0xe4) = fVar3;
    *(float *)((int)this + 0xe8) = fVar4;
    *(float *)((int)this + 0xec) = fVar5;
    if (notify != 0) {
      (**(code **)(*(int *)this + 0x44))();
    }
    return true;
  }
  return false;
}

