/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 complete component writer dispatcher. ECX object, stack4 writer, stack8 group
   context; RET8, low-AL success/failure. Iterates ascending lowest set mask bit; popcount selects
   object component and context slot; invokes component virtual+0C(writer,selectedContext). First
   low-AL failure returns0; empty/successful iteration returns1. Full owned77instructions211bytes.
   Dynamic child targets and their complete producer/state contracts remain separate; no parallel
   scheduling or guessed defaults. */

byte __thiscall ObjectComponents_WriteSelectedState(void *this,void *writer,void *groupContext)

{
  char cVar1;
  uint uVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  
  uVar5 = *(uint *)((int)this + 0x2c);
  while( true ) {
    if (uVar5 == 0) {
      return 1;
    }
    uVar4 = -uVar5 & uVar5;
    if ((uVar4 & *(uint *)((int)this + 0x2c)) == 0) {
      piVar3 = (int *)0x0;
    }
    else {
      uVar2 = uVar4 - 1 & *(uint *)((int)this + 0x2c);
      uVar2 = uVar2 - (uVar2 >> 1 & 0x55555555);
      uVar2 = (uVar2 >> 2 & 0x33333333) + (uVar2 & 0x33333333);
      piVar3 = *(int **)((int)this +
                        (((uVar2 >> 4) + uVar2 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4 + 0x34);
    }
    uVar4 = (uVar4 - 1) - (uVar4 - 1 >> 1 & 0x55555555);
    uVar4 = (uVar4 >> 2 & 0x33333333) + (uVar4 & 0x33333333);
    cVar1 = (**(code **)(*piVar3 + 0xc))
                      (writer,*(undefined4 *)
                               (*(int *)((int)groupContext + 8) +
                               (((uVar4 >> 4) + uVar4 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4));
    if (cVar1 == '\0') break;
    uVar5 = uVar5 & uVar5 - 1;
  }
  return 0;
}

