/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): cdecl one output pointer; push
   content-root1 then output, call7DA080 and caller cleans8 bytes. Metadata writer substitutes
   Unknown on failure. */

bool __cdecl Version_ReadBaseContentVersion(void *outputText)

{
  bool bVar1;
  
  bVar1 = Version_ReadContentVersion(outputText,1);
  return bVar1;
}

