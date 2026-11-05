/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original instruction review: this in ECX, outdatabasepointerstack, RET 4. If+88 null
   createsmemory database via009a1870. Only whennon-null writesout pointer then calls secondary
   interface(database+4) vtable 0 toretain. Caller initializesout pointer zero and later
   releasesmatching secondary interfacevtable 4. */

void __thiscall DownloadContent_AcquireTravelBinDatabase(void *this,void **databaseOut)

{
  void *pvVar1;
  
  if (*(int *)((int)this + 0x88) == 0) {
    DownloadContent_CreateTravelBinMemoryDatabase((void **)((int)this + 0x88));
  }
  pvVar1 = *(void **)((int)this + 0x88);
  if (pvVar1 != (void *)0x0) {
    *databaseOut = pvVar1;
    (*(code *)**(undefined4 **)((int)pvVar1 + 4))();
  }
  return;
}

