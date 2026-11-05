/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004b9867: If handler-argument slot+4 still equals old userData+0, update both; otherwise replace only userData.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlParser_SetUserData.
   Physical ABI: cdecl stack+4 parser,+8 userData; void; plain RET. */

void __cdecl XmlParser_SetUserData(void *parser,void *userData)

{
  if (*(int *)((int)parser + 4) == *(int *)parser) {
    *(void **)parser = userData;
    *(void **)((int)parser + 4) = userData;
    return;
  }
  *(void **)parser = userData;
  return;
}

