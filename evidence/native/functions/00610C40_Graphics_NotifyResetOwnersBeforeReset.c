/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX graphics manager; iterate manager+E4 intrusive owner list
   and invoke each owner virtual slot0. Render-system tableFF8DC8 resolves this selected callback
   to6E1DE0. This callback list is separate from resource list+D8. */

void __fastcall Graphics_NotifyResetOwnersBeforeReset(int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  
  iVar1 = *(int *)(param_1 + 0xe4);
  if (iVar1 == 0) {
    puVar2 = (undefined4 *)0x0;
  }
  else {
    puVar2 = (undefined4 *)(iVar1 + -4);
  }
  if ((int *)(param_1 + 0xe4) == (int *)0x0) {
    puVar3 = (undefined4 *)0x0;
  }
  else {
    puVar3 = (undefined4 *)(param_1 + 0xe0);
  }
  while (puVar2 != puVar3) {
    (**(code **)*puVar2)();
    if (puVar2[1] == 0) {
      puVar2 = (undefined4 *)0x0;
    }
    else {
      puVar2 = (undefined4 *)(puVar2[1] + -4);
    }
  }
  return;
}

