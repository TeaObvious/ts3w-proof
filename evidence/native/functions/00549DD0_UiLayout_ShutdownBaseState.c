/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX layout, no stack inputs/plainRET. Call549D80 (actual
   virtual root destruction before root reference releases), then clear selected two native
   association containers through5E2CF0 and reset their counts. This complete intermediate body
   joins derived54A7D0 to actual root destruction; it must not be omitted when describing native
   ordering. */

void __thiscall UiLayout_ShutdownBaseState(void *this)

{
  UiLayout_ReleaseRootReferences(this);
  FUN_005e2cf0(*(int *)((int)this + 0x28),*(uint *)((int)this + 0x2c));
  *(undefined4 *)((int)this + 0x30) = 0;
  FUN_005e2cf0(*(int *)((int)this + 0x48),*(uint *)((int)this + 0x4c));
  *(undefined4 *)((int)this + 0x50) = 0;
  return;
}

