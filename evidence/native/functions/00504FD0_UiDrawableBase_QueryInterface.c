/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete49byte base drawable query504FD0..505000, ECX
   complete object plus one stack DWORD/RET4.6EC581FD returns unchanged ECX inEAX, including null.
   EE3F516E/EEC58382 yield nonnull complete+4; other identities yield0. Final RET4 starts504FFE and
   physically ends505000; do not truncate its final two bytes or own following padding. */

void * __thiscall UiDrawableBase_QueryInterface(void *this,uint interfaceIdentity)

{
  if (interfaceIdentity != 0x6ec581fd) {
    if (((interfaceIdentity == 0xee3f516e) || (interfaceIdentity == 0xeec58382)) &&
       (this != (void *)0x0)) {
      return (void *)((int)this + 4);
    }
    this = (void *)0x0;
  }
  return this;
}

