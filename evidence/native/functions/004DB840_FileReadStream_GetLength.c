/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack stream instruction review. ECX file stream, no stack arguments. Calls
   GetFileSizeEx(handle,&length64), returns only low32 on success. Invalid handle/API failure
   returns FFFFFFFF; selected failure stores GetLastError at+224. Vtable00FB9338 slot+1C, used by
   origin2 position/available calculation. No large-file64 API contract inferred from the
   temporary64 storage. */

uint __thiscall FileReadStream_GetLength(void *this)

{
  BOOL BVar1;
  DWORD DVar2;
  LARGE_INTEGER local_8;
  
  if (*(HANDLE *)((int)this + 4) != (HANDLE)0xffffffff) {
    BVar1 = GetFileSizeEx(*(HANDLE *)((int)this + 4),&local_8);
    if (BVar1 != 0) {
      return local_8.s.LowPart;
    }
    DVar2 = GetLastError();
    *(DWORD *)((int)this + 0x224) = DVar2;
  }
  return 0xffffffff;
}

