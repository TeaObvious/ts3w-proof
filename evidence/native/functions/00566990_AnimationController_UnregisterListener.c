/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 original instruction review. Analyst-assigned name. Searches first node with matching
   listener pointer. If dispatch depth=0, unlink and free immediately; while dispatching clear
   listener/token and defer free. Returns AL boolean, unrelated high EAX bytes are unspecified. */

bool __thiscall AnimationController_UnregisterListener(void *this,int *listener)

{
  int *allocation;
  int *piVar1;
  int iVar2;
  
  allocation = *(int **)((int)this + 4);
  while( true ) {
    if (allocation == (int *)((int)this + 4)) {
      return false;
    }
    if ((allocation != (int *)0x0) && ((int *)allocation[2] == listener)) break;
    allocation = (int *)*allocation;
  }
  if (*(int *)((int)this + 0xc) == 0) {
    piVar1 = (int *)allocation[1];
    iVar2 = *allocation;
    *piVar1 = iVar2;
    *(int **)(iVar2 + 4) = piVar1;
    Memory_FreeIfNonNull(allocation);
    return true;
  }
  allocation[2] = 0;
  allocation[3] = 0;
  return true;
}

