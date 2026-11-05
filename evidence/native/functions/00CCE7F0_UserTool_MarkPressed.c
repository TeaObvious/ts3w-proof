/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Complete9-byte/3-instruction physical ECX base tool; two ignored caller pointer-coordinate
   DWORDs, RET8; writes byte14=1 and returns AL0. No other field writes or calls; does not reset
   derived roof acceptedY68. Stored inferred fastcall C omits ignored stack slots. */

undefined1 __fastcall UserTool_MarkPressed(int param_1)

{
  *(undefined1 *)(param_1 + 0x14) = 1;
  return 0;
}

