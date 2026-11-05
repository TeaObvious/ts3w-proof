/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): Format four native Int32 words using
   %d.%d.%d.%06d. Last field has minimum six decimal positions; this is not simple preservation of
   the installed version text. */

void GameVersion_Format(undefined4 *param_1)

{
  FUN_0040e840(param_1,(ushort *)L"%d.%d.%d.%06d");
  return;
}

