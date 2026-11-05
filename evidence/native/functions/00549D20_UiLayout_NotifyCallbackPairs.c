/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX actual layout, no incoming stack words and plain RET.
   Iterate callback/data pairs from layout+0x74 to the LIVE end at+0x78, advancing8 bytes. Each pair
   contains a callable address and opaque data; PUSH data, PUSH layout, PUSH1 then indirect CALL
   followed by caller ADD ESP,0x0C proves a three-word cdecl callback with arguments
   (1,layout,data). No registration-manager+0x1C access occurs in this function; that separate
   cleanup is in00549D80. The selected DestroyRoots0054A8A0 calls this notification before examining
   the retained host or root vector. Observer semantics beyond the actual callback1 are not guessed.
    */

void __thiscall UiLayout_NotifyCallbackPairs(void *this)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)((int)this + 0x74);
  if (puVar1 != *(undefined4 **)((int)this + 0x78)) {
    do {
      (*(code *)*puVar1)(1,this,puVar1[1]);
      puVar1 = puVar1 + 2;
    } while (puVar1 != *(undefined4 **)((int)this + 0x78));
  }
  return;
}

