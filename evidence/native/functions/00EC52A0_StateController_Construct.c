/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (72 bytes/24 instructions). ECX=this, stack(currentTag), EAX=this,
   RET4. Calls base0059F4C0 with identifierF0DC99A8 and0, stores vtable010F4D3C, exchanges1 into
   dispatch word+0x10, zeros queue begin/end/capacity+0x14/+0x18/+0x1C, stores allocation-label
   pointer+0x20, zeros current pointer+0x24 and initializes current tag+0x28 from argument, then
   zeros pending pointer/tag+0x2C/+0x30. Controller vtable+0x20 points to00EC5470. XCHG does not
   establish queue/pointer/thread safety; base effects and complete lifecycle stay separate. */

void * __thiscall StateController_Construct(void *this,undefined4 param_1)

{
  FUN_0059f4c0(this,0xf0dc99a8,0);
  *(undefined ***)this = &PTR_FUN_010f4d3c;
  LOCK();
  *(undefined4 *)((int)this + 0x10) = 1;
  UNLOCK();
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(char **)((int)this + 0x20) = "Misc/GameState/StateController/SuccessiveStates";
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = param_1;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  return this;
}

