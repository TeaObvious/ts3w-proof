/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX is destination, source vector is stack word, RET0x04. Unless
   self-assignment, clear old destination range, reset end to begin, then pass source begin/end plus
   existing stack value to C3B070. Destination assignment narrows prior candidates in C3CF50; it is
   not restoration from the original complete roof list. Descriptive analyst role, not a recovered
   original symbol. */

void * __thiscall RoofCandidates_Assign(void *this,undefined4 *param_1)

{
  if (this != param_1) {
    FUN_00be7d50(*(int **)this,*(int **)((int)this + 4));
    *(undefined4 *)((int)this + 4) = *(undefined4 *)this;
    RoofCandidates_AssignRange(this,(int *)*param_1,(int *)param_1[1]);
  }
  return this;
}

