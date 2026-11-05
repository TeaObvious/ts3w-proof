/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67 instructions. Three caller-popped physical words
   start,end,address-of-target; caller007F6121..2F adds ESP,0C and compares returned EAX iterator to
   end. Scan4-byte entries for exact pointer identity, return first matching entry address or end;
   empty range returns end. Stored void return in decompiler is wrong for this caller, not a claim
   of no result. No state mutation, allocation, target dereference or hash/name comparison. */

void __cdecl StatePointerRange_FindIdentity(int *param_1,int *param_2,int *param_3)

{
  if (param_1 != param_2) {
    do {
      if (*param_1 == *param_3) {
        return;
      }
      param_1 = param_1 + 1;
    } while (param_1 != param_2);
  }
  return;
}

