/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (17 bytes/6 instructions). ECX=this, low byte of stack input
   normalized to0/1, then32-bit XCHG into+0x10. EAX returns the previous whole dispatch word;
   RET4.00EC5470 tests this live word before queue/pending work. Only this exchange is atomic; no
   inferred synchronization for queue, virtual lifetime callbacks or pointer/tag pairs. Stored
   signature, parameter width and storage remain unchanged. */

uint __thiscall StateController_ExchangeDispatchEnabled(void *this,char param_1)

{
  uint uVar1;
  
  LOCK();
  uVar1 = *(uint *)((int)this + 0x10);
  *(uint *)((int)this + 0x10) = (uint)(param_1 != '\0');
  UNLOCK();
  return uVar1;
}

