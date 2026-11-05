/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX graphics manager, owner pointer argument, RET4. Deduplicate
   and link intrusive owner+4/+8 into manager+E4 list. Render-system initializer6E01C0 registers its
   primary object, so callback dispatch uses primary tableFF8DC8. */

void __thiscall Graphics_RegisterResetOwner(void *this,int param_1)

{
  undefined4 *puVar1;
  void *this_00;
  int iVar2;
  int iVar3;
  
  iVar2 = param_1;
  this_00 = (void *)((int)this + 0xe4);
  FUN_00610b00(this_00,&param_1,param_1);
  if (this_00 == (void *)0x0) {
    iVar3 = 0;
  }
  else {
    iVar3 = (int)this + 0xe0;
  }
  if (param_1 == iVar3) {
    puVar1 = (undefined4 *)(iVar2 + 4);
    *(undefined4 *)(iVar2 + 8) = *(undefined4 *)((int)this + 0xe8);
    *puVar1 = this_00;
    *(undefined4 **)((int)this + 0xe8) = puVar1;
    **(int **)(iVar2 + 8) = (int)puVar1;
  }
  return;
}

