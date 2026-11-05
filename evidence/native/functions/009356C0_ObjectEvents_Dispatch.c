/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Event head table011dd2a8; listener callback(object,payload),
   stop onAL false; successor+8. Returns AL true only if all callbacks accept. Object remove and
   transform callers oftenignore result. */

bool __cdecl ObjectEvents_Dispatch(int eventIndex,void *object,void *payload)

{
  int iVar1;
  char cVar2;
  
  iVar1 = (&DAT_011dd2a8)[eventIndex];
  while( true ) {
    if (iVar1 == 0) {
      return true;
    }
    cVar2 = (**(code **)(iVar1 + 4))(object,payload);
    if (cVar2 == '\0') break;
    iVar1 = *(int *)(iVar1 + 8);
  }
  return false;
}

