/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0xc0-byte runtime initialized, scalar
   fields+0xb8/+0xbc=1, allocates0x18-byte Animation/TrackManager at runtime+0xb0 using
   animation-interface input. Failure leaves track manager null; attach checks it. */

void * __thiscall AnimationComponentRuntime_Construct(void *this,undefined4 param_1)

{
  void *this_00;
  undefined4 uVar1;
  
  FUN_0093ce00(this);
  uVar1 = DAT_00f998f8;
  *(undefined4 *)((int)this + 0xb4) = 0;
  *(undefined4 *)((int)this + 0xb8) = uVar1;
  *(undefined4 *)((int)this + 0xbc) = uVar1;
  this_00 = (void *)FUN_004e4500(0x18,"Animation/TrackManager",0);
  if (this_00 != (void *)0x0) {
    uVar1 = FUN_00584290(this_00,param_1);
    *(undefined4 *)((int)this + 0xb0) = uVar1;
    return this;
  }
  *(undefined4 *)((int)this + 0xb0) = 0;
  return this;
}

