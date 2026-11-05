/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXlot + uint64 objectID two stackwords RET8, EAXborrowed object pointer/0. Calls
   global937570 then937F80 exactGUID, verifies68F130 object lot pointer equals original ECX.
   Previous seeded fastcall/oneparameter signature concealed stack GUID and caused caller decompile
   to drop preceding object ID; true physical ABI fixed. */

undefined * __thiscall ObjectRegistry_FindBorrowedInLot(void *this,ulonglong objectId)

{
  void *pvVar1;
  undefined *puVar2;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    puVar2 = ObjectRegistry_FindBorrowed(pvVar1,objectId);
    if (puVar2 != (undefined *)0x0) {
      pvVar1 = (void *)FUN_0068f130((int)puVar2);
      if (pvVar1 == this) {
        return puVar2;
      }
    }
  }
  return (undefined *)0x0;
}

