/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX factory unused, RET8(context,resourceInterface), AL
   Boolean. Null resource/query15991A1F failure returns false. Context virtual+18 supplies stream
   to00934090. Original args are TWO stack pointers, not cdecl with lost return-address alias. */

bool __thiscall
NameGuidMapResource_ReadFromContext(void *this,void *context,void *resourceInterface)

{
  bool bVar1;
  void *this_00;
  void *stream;
  
  if (resourceInterface != (void *)0x0) {
    this_00 = (**(code **)(*(int *)resourceInterface + 0xc))(resourceInterface,0x15991a1f);
    if (this_00 != (void *)0x0) {
      stream = (**(code **)(*(int *)context + 0x18))(context);
      bVar1 = NameGuidMapResource_ReadVersion1(this_00,stream);
      return bVar1;
    }
  }
  return false;
}

