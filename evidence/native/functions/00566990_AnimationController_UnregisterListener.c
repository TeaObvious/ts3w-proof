/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Searches first node with matching
   listener pointer. If dispatch depth=0, unlink and free immediately; while dispatching clear
   listener/token and defer free. Returns AL boolean, unrelated high EAX bytes are unspecified. */

bool __thiscall AnimationController_UnregisterListener(void *this,int *listener)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  piVar1 = *(int **)((int)this + 4);
  while( true ) {
    if (piVar1 == (int *)((int)this + 4)) {
      return false;
    }
    if ((piVar1 != (int *)0x0) && ((int *)piVar1[2] == listener)) break;
    piVar1 = (int *)*piVar1;
  }
  if (*(int *)((int)this + 0xc) == 0) {
    piVar2 = (int *)piVar1[1];
    iVar3 = *piVar1;
    *piVar2 = iVar3;
    *(int **)(iVar3 + 4) = piVar2;
    FUN_004e44e0((int)piVar1);
    return true;
  }
  piVar1[2] = 0;
  piVar1[3] = 0;
  return true;
}

