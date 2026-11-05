/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX actual layout receiver, no stack words/plainRET returns
   receiver. Call549EE0 base initializer, install primary00FC1EC0, zero host IWindow pointer+98.
   Selected real vtable entries+8=54A7D0 shutdown and+10=54A8A0 root destruction join the actual
   virtual chain. No CLR layout-host dictionary or lease counter is inferred from one shared offset.
    */

void * __thiscall UiHostedLayout_Initialize(void *this)

{
  FUN_00549ee0(this);
  *(undefined ***)this = &PTR_LAB_00fc1ec0;
  *(undefined4 *)((int)this + 0x98) = 0;
  return this;
}

