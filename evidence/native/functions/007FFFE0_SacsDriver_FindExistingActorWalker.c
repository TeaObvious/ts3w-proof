/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role/contract. ECX driver,32-bit actor hash stackword, RET4. Linear scan8-byte bindings
   begin/end driver+10/+14; first equal hash returns row walker+4, including null, else0. No lazy
   creation, case folding or resource lookup. Existing definition wrapper803C00 owns creation. */

int __thiscall SacsDriver_FindExistingActorWalker(void *this,int param_1)

{
  int *piVar1;
  
  piVar1 = *(int **)((int)this + 0x10);
  while( true ) {
    if (piVar1 == *(int **)((int)this + 0x14)) {
      return 0;
    }
    if (*piVar1 == param_1) break;
    piVar1 = piVar1 + 2;
  }
  return piVar1[1];
}

