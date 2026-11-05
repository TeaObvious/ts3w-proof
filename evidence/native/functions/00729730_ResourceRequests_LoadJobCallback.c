/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl THREE words job,owner,status. Moves
   status+job into two stackargs and owner intoECX, calls729460, RET; forwards AL. Actual tiny
   thunk20bytes, no scheduler policy or stack-walk data added. */

bool __cdecl ResourceRequests_LoadJobCallback(void *job,void *owner,uint statusWord)

{
  bool bVar1;
  
  bVar1 = ResourceRequests_CompleteLoadJob(owner,job,statusWord);
  return bVar1;
}

