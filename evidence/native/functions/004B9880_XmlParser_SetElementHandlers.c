/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 004b988c: Install start callback at parser+34 and end callback at+38; no callback is executed here.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlParser_SetElementHandlers.
   Physical ABI: cdecl stack+4 parser,+8 start callback,+C end callback; void; plain RET. */

void __cdecl XmlParser_SetElementHandlers(void *parser,void *startHandler,void *endHandler)

{
  *(void **)((int)parser + 0x34) = startHandler;
  *(void **)((int)parser + 0x38) = endHandler;
  return;
}

