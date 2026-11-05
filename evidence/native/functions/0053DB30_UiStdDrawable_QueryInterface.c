/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete52byte thiscall query53DB30..53DB63, one interface
   DWORD/RET4. Identity103C1908 yields complete+0C; EEC58382 yields complete+4, with explicitnull
   tests. Other identity tail-jumps504FD0. In particular6EC581FD returns unchanged complete primary
   through that base, so77A090→77C150 retain reaches complete+8 and primaryFC0840. No retain is
   performed by this query body. */

void * __thiscall UiStdDrawable_QueryInterface(void *this,uint interfaceIdentity)

{
  void *pvVar1;
  
  if (interfaceIdentity == 0x103c1908) {
    if (this != (void *)0x0) {
      return (void *)((int)this + 0xc);
    }
  }
  else {
    if (interfaceIdentity != 0xeec58382) {
      pvVar1 = UiDrawableBase_QueryInterface(this,interfaceIdentity);
      return pvVar1;
    }
    if (this != (void *)0x0) {
      return (void *)((int)this + 4);
    }
  }
  return (void *)0x0;
}

