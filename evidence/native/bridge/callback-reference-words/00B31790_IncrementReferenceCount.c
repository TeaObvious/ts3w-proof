/* Original TS3W PC 1.67; identity: evidence/reference.json.
 * Actual saved Ghidra C; current function: IncrementReferenceCount.
 * The exported suffix is unchanged, including its DB head and current variable names.
 * Generated return/type/calling-convention projections remain qualified; original ASM governs physical effects.
 * Project save acknowledged; no reopen test or original runtime observation.
 */



/* Increments the receiver's 32-bit reference-count word at byte offset+4.
   The full body is MOV EAX,[ECX+4]; ADD EAX,1; MOV [ECX+4],EAX; RET. Arithmetic wraps modulo2^32
   and the updated word remains physically in EAX. The current undefined/void return projection is
   preserved; no caller-consumed return contract is proved here. There is no receiver/null/count
   validation in this body.
   This is a shared helper, including slot0 of the EventQueue wrapper table010022D0, not an
   EventQueue-specific operation. It uses ordinary MOV/ADD/MOV instructions with no LOCK prefix or
   synchronization performed here. Family-wide ownership, lifetime and external synchronization
   remain open. */

void __fastcall IncrementReferenceCount(int counterOwner)

{
  *(int *)(counterOwner + 4) = *(int *)(counterOwner + 4) + 1;
  return;
}

