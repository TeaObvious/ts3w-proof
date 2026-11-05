/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 COMPLETE24-byte existing body, ECX product, no stackwords/plainRET; FULL32-bit
   EAX rawpresetID. Compare authored beginF8/endFC: ifequal returnFFFFFFFF; otherwise return DWORD
   at FIRST8-byte row+4. No scan for a later usable row, customfallback, IDmask or ordinal
   conversion. CF31B0 calls this before full-ID resolution, and calls it again when no installed
   finish and requestedID0 selects default. Host filtering out an unreadable first authored material
   before FirstOrDefault can silently choose a different default; absent tree must not cause a
   later-row substitution. This selector alone does not certify thirdparty CSTR decoding or nullable
   material validity. Analyst role/thiscall metadata represents physicalECX/no-stack shape; not
   recovered symbols. */

uint __thiscall StairProduct_FirstAuthoredPresetId(void *this)

{
  if (*(int *)((int)this + 0xf8) == *(int *)((int)this + 0xfc)) {
    return 0xffffffff;
  }
                    /* Full first authored row ID at+4; never scan for a later readable default. */
  return *(uint *)(*(int *)((int)this + 0xf8) + 4);
}

