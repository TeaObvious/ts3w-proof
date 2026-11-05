/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst name: raw filename-conversion input field. Reads the DWORD at receiver+0xF0 and returns
   it unchanged. The registered World_GetWorldFileName wrapper separately prepares/converts this
   value. No string type, basename parsing, null normalization, ownership transfer or lifetime is
   established by this getter. The physical contract is ECX input and EAX output; the stored
   decompiler prototype remains inferred. */

undefined4 __fastcall World_ReadFilenameInputWord(int param_1)

{
  return *(undefined4 *)(param_1 + 0xf0);
}

