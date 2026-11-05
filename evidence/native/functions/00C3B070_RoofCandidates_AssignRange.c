/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX destination; actual RET0x0C cleans three stack words despite two
   inferred explicit C parameters. Copy/replace supplied source range, grow storage if necessary and
   publish destination end/capacity. Called by C3C980 with source begin/end; no recovered container
   type or prototype claim. Descriptive analyst role, not a recovered original symbol. */

void __thiscall RoofCandidates_AssignRange(void *this,int *param_1,int *param_2)

{
  int iVar1;
  void *allocation;
  int *piVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  uint uVar6;
  
  piVar2 = param_2;
  piVar4 = *(int **)this;
  uVar6 = (int)param_2 - (int)param_1 >> 2;
  if ((uint)(*(int *)((int)this + 8) - (int)piVar4 >> 2) < uVar6) {
    iVar3 = FUN_00c3a700(this,uVar6,param_1,param_2);
    FUN_00be7d50(*(int **)this,*(int **)((int)this + 4));
    allocation = *(void **)this;
    if ((allocation != (void *)0x0) && (allocation != *(void **)((int)this + 0x10))) {
      Memory_FreeIfNonNull(allocation);
    }
    iVar1 = iVar3 + uVar6 * 4;
    *(int *)this = iVar3;
    *(int *)((int)this + 4) = iVar1;
    *(int *)((int)this + 8) = iVar1;
    return;
  }
  uVar5 = *(int *)((int)this + 4) - (int)piVar4 >> 2;
  if (uVar6 <= uVar5) {
    piVar4 = FUN_00c39870(param_1,param_2,piVar4);
    FUN_00be7d50(piVar4,*(int **)((int)this + 4));
    *(int **)((int)this + 4) = piVar4;
    return;
  }
  FUN_00c39870(param_1,param_1 + uVar5,piVar4);
  FUN_00be71a0((int *)&param_2,param_1 + uVar5,piVar2,*(int *)((int)this + 4));
  *(int **)((int)this + 4) = param_2;
  return;
}

