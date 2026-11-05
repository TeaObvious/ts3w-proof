/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, PC1.67 static; Button interface state-mask producer at concrete vtableFBC278+28.
   Physical thiscall ECX Button interface complete+250, maskDWORD and low-byte Boolean in two stack
   slots, RET8, no specified return value. CMP byte[ESP+8],0 ignores upper24 argument bits,
   resolving the callers SETZ/PUSH EAX and toggle upper-bit artifacts. Current state is
   [interface-1D8]=complete+78. Nonzero low byte ORs mask; zero low byte ANDs inverse mask. Pass
   full resulting DWORD to interface virtual24 (concrete5187E0). No equality gate here; replacement
   callee owns it. Dynamic replacement/event callbacks are not assumed pure. */

void __thiscall UiButton_UpdateStateFlags(void *this,uint mask,bool enabledLowByte)

{
  if (enabledLowByte) {
    (**(code **)(*(int *)this + 0x24))(*(uint *)((int)this + -0x1d8) | mask);
    return;
  }
  (**(code **)(*(int *)this + 0x24))(*(uint *)((int)this + -0x1d8) & ~mask);
  return;
}

