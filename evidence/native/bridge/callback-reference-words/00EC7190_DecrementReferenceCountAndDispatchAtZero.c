/* Original TS3W PC 1.67; identity: evidence/reference.json.
 * Actual saved Ghidra C; current function: DecrementReferenceCountAndDispatchAtZero.
 * The exported suffix is unchanged, including its DB head and current variable names.
 * Generated return/type/calling-convention projections remain qualified; original ASM governs physical effects.
 * Project save acknowledged; no reopen test or original runtime observation.
 */



/* Decrements the receiver's 32-bit reference-count word at byte offset+4 and dispatches table
   slot+8 when the decremented word is zero.
   The body stores the modulo2^32 decrement result before testing it. If nonzero it returns that
   result in EAX. If zero, it writes1 to receiver+4 BEFORE loading/calling receiver table slot+8
   with stack word1; after that call it clears EAX and returns0. It does not dereference the
   receiver after the indirect call. Return0 is not a statement that receiver+4 remains0 or1, nor
   proof that the receiver survives the call.
   The table/callee implementation, destruction/reentrancy policy, overall lifetime and external
   synchronization remain open. Slot+8 of the EventQueue wrapper table010022D0 contains0051A720,
   currently reported as Function not found; this does not authorize a definition or name for that
   candidate. This shared body contains no LOCK/atomic instruction or null/underflow guard. All
   current types, parameter ABI and function boundaries are preserved. */

int __fastcall DecrementReferenceCountAndDispatchAtZero(int *counterOwner)

{
  int decrementResult;
  
  decrementResult = counterOwner[1] + -1;
  counterOwner[1] = decrementResult;
  if (decrementResult == 0) {
    counterOwner[1] = 1;
    (**(code **)(*counterOwner + 8))(1);
    decrementResult = 0;
  }
  return decrementResult;
}

