/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. Factory vtable01043DA8+3C, code-flow-recovered exact
   original entry. Physical ECX factory unused plus TWO stackDWORDs context/resource, RET8,
   lowALBoolean. Query resource IID02DC3450; missingresource/query returnsfalse. Reads context
   virtual+18 stream then calls936E20. Physical thiscall outer signature and selected query-call
   override9372B6 establish two outer arguments. QueryInterface9360C0 RET4 pops IID; after saved
   EBX/ESI, ESP+C reads context. Any remaining inferred expression must be checked against these
   instructions. No original bytes modified. */

bool __thiscall ObjectResourceFactory_ReadObjectParams(void *this,void *context,void *resource)

{
  bool bVar1;
  void *this_00;
  int *piVar2;
  
  if (resource == (void *)0x0) {
    return false;
  }
  this_00 = (**(code **)(*(int *)resource + 0xc))(resource,0x2dc3450);
  if (this_00 != (void *)0x0) {
    piVar2 = (int *)(**(code **)(*(int *)context + 0x18))();
    bVar1 = ObjectParams_ReadComponentResource(this_00,piVar2);
    return bVar1;
  }
  return false;
}

