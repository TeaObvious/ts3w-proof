/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this in ECX; calls vtable+24 onnon-null TravelDB+70 then
   ExportDB+a4, tailcallonsecond. Save dispatcher 00aaf6c0 invokes thisbefore world save. Underlying
   virtualcommitimplementation/filesystem durability is not established by this dispatch. */

void __thiscall SimStorage_CommitOpenDatabases(void *this)

{
  if (*(int *)((int)this + 0x70) != 0) {
    (**(code **)(**(int **)((int)this + 0x70) + 0x24))();
  }
  if (*(int *)((int)this + 0xa4) != 0) {
                    /* WARNING: Could not recover jumptable at 0x009c8ba8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(**(int **)((int)this + 0xa4) + 0x24))();
    return;
  }
  return;
}

