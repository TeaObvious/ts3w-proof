/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Analyst note (PC1.67 SACS host reset contract): ECX driver, no stack args. Enumerate actor
   wrapper rows driver[+10,+14), call805770 on each wrapper listener+64. This is94D320 pre-release
   controller unlinking, not a queue-handle setter. Native original listener cleanup remains
   distinct from driver Reset and manager handle invalidation. */

void __fastcall SacsDriver_DetachControllerListeners(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0x10);
  if (iVar1 != *(int *)(param_1 + 0x14)) {
    do {
      SacsListener_DetachRegisteredControllers(*(int *)(*(int *)(iVar1 + 4) + 100));
      iVar1 = iVar1 + 8;
    } while (iVar1 != *(int *)(param_1 + 0x14));
  }
  return;
}

