/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


int * __thiscall FUN_004b01c0(void *this,undefined4 param_1)

{
  undefined4 *puVar1;
  char cVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  puVar1 = *(undefined4 **)((int)this + 0xa4);
  puVar4 = *(undefined4 **)((int)this + 0xa0);
  piVar3 = (int *)0x0;
  if (puVar4 != puVar1) {
    while( true ) {
      piVar3 = (int *)*puVar4;
      cVar2 = (**(code **)(*piVar3 + 0x18))(param_1,0);
      if (cVar2 != '\0') break;
      puVar4 = puVar4 + 2;
      if (puVar4 == puVar1) {
        return (int *)0x0;
      }
    }
  }
  return piVar3;
}

