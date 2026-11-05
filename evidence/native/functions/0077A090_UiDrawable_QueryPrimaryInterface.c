/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete24byte caller-clean one-pointer query adapter. Null
   returnsEAX0; otherwise ECX=input object and virtual+C receives literal6EC581FD. PlainRET after
   selected virtualcall; it does not itself retain. Getter77C150 uses the returned complete drawable
   primary before retaining/publishing. Concrete StdDrawable53DB30 delegates this identity to504FD0,
   returning the primary object unchanged. */

void * __cdecl UiDrawable_QueryPrimaryInterface(void *object)

{
  void *pvVar1;
  
  if (object != (void *)0x0) {
    pvVar1 = (void *)(**(code **)(*(int *)object + 0xc))(0x6ec581fd);
    return pvVar1;
  }
  return (void *)0x0;
}

