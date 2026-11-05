/* Original TS3W PC 1.67; identity: evidence/reference.json.
 * Actual saved Ghidra C; current function: StoreSimSavedCallbackWord.
 * The exported suffix is unchanged, including its DB head and current variable names.
 * Generated return/type/calling-convention projections remain qualified; original ASM governs physical effects.
 * Project save acknowledged; no reopen test or original runtime observation.
 */



/* Stores the incoming 32-bit callback word in global 011EA958.
   The existing DownloadContent bridge at 009956F0 forwards the managed SimSaved delegate word here
   through direct call 00995708. This complete body loads entry stack word+4, stores it at 009C8AD4,
   and uses RET4. It performs no validation, synchronization, add-reference, release, or callback
   invocation in this body; ownership elsewhere remains open. The stored word is opaque: no
   code-pointer, CLR-object-pointer, handle representation, or native callback ABI is inferred.
   The existing 009CB0D0 consumer reads the global and forwards it through host slot+134h. The
   current undefined/void return projection and all parameter types/calling convention are
   preserved; no independently proved API return-value contract is introduced. */

void StoreSimSavedCallbackWord(undefined4 callbackWord)

{
  DAT_011ea958 = callbackWord;
  return;
}

