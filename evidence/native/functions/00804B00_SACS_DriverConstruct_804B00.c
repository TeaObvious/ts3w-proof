/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete57-instruction constructor: zero intrusive count(driver+4) via XCHG, install
   primary vtable01021148 and reference interface0102112C at+8. Initialize walker and parameter
   containers, call7F5690 on+44, zero pending record words+11C/+120/+124 and label+128 as
   mPendingDecisionGraphExecutionRecordList, initialize event-key container/flags and invoke804330
   with supplied resource.802530 directly proves+11C/+120 begin/end and12-byte record processing;
   +124 capacity role is only an inferred vector-layout role, with no capacity compare/reallocation
   writer admitted here. RET8; no original script service/proxy publication occurs in this body. */

void * __thiscall SACS_DriverConstruct_804B00(void *this,int *param_1,undefined1 param_2)

{
  *(undefined ***)this = &PTR_FUN_0102bba4;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)((int)this + 8) = &PTR_LAB_0103b394;
  *(undefined ***)this = &PTR_FUN_01021148;
  *(undefined ***)((int)this + 8) = &PTR_IntrusiveRefCount_IncrementMinus4_889AF0_0102112c;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(char **)((int)this + 0x1c) = "SACS/StateMachineDriver/mWalkers";
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(char **)((int)this + 0x2c) = "SACS/StateMachineDriver/mParameters";
  FUN_004fa9f0((void *)((int)this + 0x34),-1);
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x38) = 0xfffffffe;
  *(undefined1 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  FUN_007f5690((void *)((int)this + 0x44),this);
  *(undefined4 *)((int)this + 0x11c) = 0;
  *(undefined4 *)((int)this + 0x120) = 0;
  *(undefined4 *)((int)this + 0x124) = 0;
  *(char **)((int)this + 0x128) = "SACS/StateMachineDriver/mPendingDecisionGraphExecutionRecordList"
  ;
  *(undefined4 *)((int)this + 300) = 0;
  *(undefined4 *)((int)this + 0x130) = 0;
  *(undefined4 *)((int)this + 0x134) = 0;
  *(undefined4 *)((int)this + 0x138) = 0;
  *(char **)((int)this + 0x13c) = "SACS/StateMachineDriver/mEventKeyList";
  *(undefined4 *)((int)this + 0x140) = 0xffffffff;
  *(undefined1 *)((int)this + 0x144) = param_2;
  *(undefined1 *)((int)this + 0x145) = 0;
  *(undefined1 *)((int)this + 0x146) = 0;
  *(undefined1 *)((int)this + 0x147) = 0;
  *(undefined1 *)((int)this + 0x148) = 0;
  FUN_00d75380((void *)((int)this + 0x130),0xc);
  FUN_00804330(this,param_1);
  return this;
}

