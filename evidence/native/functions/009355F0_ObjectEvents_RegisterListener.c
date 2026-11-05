/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Allocates 12-byte listener{signed priority,callback,next},
   inserts in descending priority order; equal priority insertion follows existing ties. Event index
   has no visible range check. AL bool. Decompiler artifact: indirect allocator purge mis-tracks
   later stack/register expressions; original argument reads and CMP/JL establish the priority list.
    */

bool __cdecl ObjectEvents_RegisterListener(int eventIndex,void *callback,int priority)

{
  void *pvVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  int *piVar5;
  int unaff_ESI;
  int unaff_EDI;
  int unaff_retaddr;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    piVar2 = (int *)FUN_00937420((int)pvVar1);
    if (piVar2 != (int *)0x0) {
      piVar3 = (int *)(**(code **)(*piVar2 + 8))(0xc,"Objects/EventSubscription",1);
      *piVar3 = unaff_retaddr;
      piVar3[1] = unaff_ESI;
      piVar2 = (int *)(&DAT_011dd2a8)[unaff_EDI];
      piVar5 = (int *)0x0;
      if (piVar2 != (int *)0x0) {
        do {
          piVar4 = piVar2;
          piVar2 = piVar4;
          if (*piVar4 < unaff_retaddr) break;
          piVar2 = (int *)piVar4[2];
          piVar5 = piVar4;
        } while (piVar2 != (int *)0x0);
        if (piVar5 != (int *)0x0) {
          piVar5[2] = (int)piVar3;
          piVar3[2] = (int)piVar2;
          return true;
        }
      }
      (&DAT_011dd2a8)[unaff_EDI] = piVar3;
      piVar3[2] = (int)piVar2;
      return true;
    }
  }
  return false;
}

