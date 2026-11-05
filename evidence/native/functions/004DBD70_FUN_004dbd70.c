/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   cdecl path stackword, plainRET/caller cleanup; result meaningfulAL. IATF961C8 is GetFileAttributesW (original PE import confirmed). Null/empty path false; invalid attributes FFFFFFFF or directory-bit10 false, elsetrue. This is file-presence admission, not DBPF validity or package read lifetime. */
uint __cdecl FUN_004dbd70(LPCWSTR param_1)

{
  DWORD DVar1;
  
  if ((param_1 == (LPCWSTR)0x0) || (*param_1 == L'\0')) {
    return (uint)param_1 & 0xffffff00;
  }
  DVar1 = GetFileAttributesW(param_1);
  if ((DVar1 == 0xffffffff) || ((DVar1 & 0x10) != 0)) {
    return 0;
  }
  return 1;
}

