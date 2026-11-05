/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Calls each present component vtable+4 with resource in
   ascending bit order. FirstAL false stops and returnsfalse; all success then event0; result is
   event chainAL. Null component pointers are not independently guarded. */

bool __thiscall Object_InitializeComponents(void *this,void *resource)

{
  char cVar1;
  bool bVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  
  uVar5 = *(uint *)((int)this + 0x2c);
  while( true ) {
    if (uVar5 == 0) {
      bVar2 = ObjectEvents_Dispatch(0,this,(void *)0x0);
      return bVar2;
    }
    if ((-uVar5 & uVar5 & *(uint *)((int)this + 0x2c)) == 0) {
      piVar4 = (int *)0x0;
    }
    else {
      uVar3 = (-uVar5 & uVar5) - 1 & *(uint *)((int)this + 0x2c);
      uVar3 = uVar3 - (uVar3 >> 1 & 0x55555555);
      uVar3 = (uVar3 >> 2 & 0x33333333) + (uVar3 & 0x33333333);
      piVar4 = *(int **)((int)this +
                        (((uVar3 >> 4) + uVar3 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4 + 0x34);
    }
    cVar1 = (**(code **)(*piVar4 + 4))(resource);
    if (cVar1 == '\0') break;
    uVar5 = uVar5 & uVar5 - 1;
  }
  return false;
}

