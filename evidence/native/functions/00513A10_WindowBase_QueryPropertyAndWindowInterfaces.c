/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual complete WindowBase Query boundary: ECX complete
   object, one UInt32 ID, RET4. EEC58382 returns same complete receiver (property interface);
   EE3F516E and EEEE8218 return receiver+4 when nonnull; otherwise0. This physical join is why
   typed-property virtual+10 receives the complete object at the selected custom overrides. */

void * __thiscall WindowBase_QueryPropertyAndWindowInterfaces(void *this,uint interfaceId)

{
  if (interfaceId != 0xee3f516e) {
    if (interfaceId == 0xeec58382) {
      return this;
    }
    if (interfaceId != 0xeeee8218) {
      return (void *)0x0;
    }
  }
  if (this == (void *)0x0) {
    return (void *)0x0;
  }
  return (void *)((int)this + 4);
}

