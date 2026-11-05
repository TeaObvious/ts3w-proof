/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX evaluation context,one stack dword
   RET4. Walks declared actor map, ignores zero hashes/unresolved wrappers/null entities, inserts
   entity's actor-definition name through005823C0. Called after authored and parameter aliases
   by007F8DC0. Hash-container order differs from current Dictionary iteration; first insertion still
   wins. Undeclared current binding keys are not proven native members. */

void __thiscall SacsNamespaces_AppendDriverActors(void *this,void *param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int *piVar5;
  int *piVar6;
  
  iVar4 = *(int *)(*(int *)this + 0xc);
  piVar6 = *(int **)(iVar4 + 0x44);
  piVar5 = (int *)*piVar6;
  if (piVar5 == (int *)0x0) {
    piVar6 = piVar6 + 1;
    iVar1 = *piVar6;
    while (iVar1 == 0) {
      piVar6 = piVar6 + 1;
      iVar1 = *piVar6;
    }
    piVar5 = (int *)*piVar6;
  }
  piVar2 = *(int **)(*(int *)(iVar4 + 0x44) + *(int *)(iVar4 + 0x48) * 4);
  while (piVar5 != piVar2) {
    if (((*piVar5 != 0) && (iVar4 = FUN_007fffe0(*(void **)this,*piVar5), iVar4 != 0)) &&
       (piVar3 = *(int **)(iVar4 + 8), piVar3 != (int *)0x0)) {
      AnimationNamespaces_InsertFirstBinding(param_1,*(int *)(piVar3[8] + 0x2c),piVar3);
    }
    for (piVar5 = (int *)piVar5[2]; piVar5 == (int *)0x0; piVar5 = (int *)*piVar5) {
      piVar5 = piVar6 + 1;
      piVar6 = piVar6 + 1;
    }
  }
  return;
}

