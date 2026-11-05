/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 instruction review; analystname. Reads global011ea4f8, rejects0 and30hex, returns
   pointer atlink-4. Travelcallers then use owner+664 for SimStorage. This function does not acquire
   a reference. */

void * __cdecl DownloadContent_GetOwnerFromGlobalLink(void)

{
  if ((DAT_011ea4f8 != 0) && (DAT_011ea4f8 != 0x30)) {
    return *(void **)(DAT_011ea4f8 + -4);
  }
  return (void *)0x0;
}

