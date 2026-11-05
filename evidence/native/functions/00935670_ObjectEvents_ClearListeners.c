/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Walks42 event heads up toglobalregistry slot, frees nodes
   using serviceallocator and clears heads. Only runs whenregistry+allocatoravailable. */

void __cdecl ObjectEvents_ClearListeners(void)

{
  int iVar1;
  int iVar2;
  void *pvVar3;
  int *piVar4;
  int *piVar5;
  
  pvVar3 = ObjectRegistry_GetGlobal();
  if ((pvVar3 != (void *)0x0) && (piVar4 = (int *)FUN_00937420((int)pvVar3), piVar4 != (int *)0x0))
  {
    piVar5 = &DAT_011dd2a8;
    do {
      iVar2 = *piVar5;
      while (iVar2 != 0) {
        iVar1 = *(int *)(iVar2 + 8);
        (**(code **)(*piVar4 + 0xc))(iVar2,0);
        iVar2 = iVar1;
      }
      *piVar5 = 0;
      piVar5 = piVar5 + 1;
    } while ((int)piVar5 < 0x11dd350);
  }
  return;
}

