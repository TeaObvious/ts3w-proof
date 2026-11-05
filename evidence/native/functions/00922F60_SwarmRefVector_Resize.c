/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Swarm collection contract. ECX pointer-vector+requestedUInt32 RET4. Computes
   currentcount=(end-begin) arithmeticshift2. Unsigned requested>current invokes922D80 with
   end,requested-current,&zeroPointer. Otherwise formsbegin+requested*4, invokesmove/destroy-range
   helpers andupdatesend. No new local hardlimit, allocation/overflow/exception handling
   established; child reference destruction/allocation remain separate. */

void __thiscall SwarmRefVector_Resize(void *this,uint requestedCount)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  int *arg1;
  undefined4 *puVar4;
  
  piVar2 = *(int **)((int)this + 4);
  uVar3 = (int)piVar2 - *(int *)this >> 2;
  if (uVar3 < requestedCount) {
    puVar4 = (undefined4 *)(requestedCount - uVar3);
    requestedCount = 0;
    FUN_00922d80(this,piVar2,puVar4,(int *)&requestedCount);
    return;
  }
  piVar1 = (int *)(*(int *)this + requestedCount * 4);
  arg1 = FUN_00663cc0(piVar2,piVar2,piVar1);
  FUN_00ca0570(this,arg1,*(void **)((int)this + 4));
  *(int *)((int)this + 4) = *(int *)((int)this + 4) + ((int)piVar2 - (int)piVar1 >> 2) * -4;
  return;
}

