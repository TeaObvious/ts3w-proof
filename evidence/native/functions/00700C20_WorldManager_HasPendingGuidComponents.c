/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX world manager plus GUID low/high and mask stack DWORDs, RET0C. Copy
   exact 64-bit GUID into two stack words; each iteration repeats actual U64PairMap_Find on
   this+1074 before reading map value+8. Missing/end/null record, null virtual+8 result, or null
   result+10 ends with AL0. Invoke that virtual method with stack(index,0,0); pass its result and
   original mask to006EDA40 using receiver=result+10 then+1C. TEST AL; true returns AL1, otherwise
   increment index and look up again. Only low byte is boolean; upper EAX contains residue. Complete
   GUID component collection/type semantics and virtual target are not inferred. ActualC69E30
   supplies lot+48/+4C and maskFFFFFFFF after requested/readiness checks; no Task or GPU resource
   ownership is implied. */

undefined4 __thiscall
WorldManager_HasPendingGuidComponents(void *this,uint param_1,undefined4 param_2,uint param_3)

{
  uint uVar1;
  uint uVar2;
  undefined4 uVar3;
  int iVar4;
  uint local_8;
  undefined4 local_4;
  
  uVar1 = param_3;
  iVar4 = 0;
  local_8 = param_1;
  local_4 = param_2;
  while( true ) {
    U64PairMap_Find((void *)((int)this + 0x1074),&param_1,(ulonglong *)&local_8);
    uVar2 = param_1;
    if ((param_1 == *(uint *)(*(int *)((int)this + 0x1078) + *(int *)((int)this + 0x107c) * 4)) ||
       (*(int **)(param_1 + 8) == (int *)0x0)) break;
    uVar2 = (**(code **)(**(int **)(param_1 + 8) + 8))(iVar4,0,0);
    if ((uVar2 == 0) || (*(int *)(uVar2 + 0x10) == 0)) break;
                    /* Actual receiver=(*(result+10)+1C), stack(result,original mask); only AL of
                       pending predicate is consumed. */
    uVar3 = SceneManager_HasPendingSubtreeFlags
                      (*(void **)(*(int *)(uVar2 + 0x10) + 0x1c),uVar2,uVar1);
    if ((char)uVar3 != '\0') {
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
    iVar4 = iVar4 + 1;
  }
  return uVar2 & 0xffffff00;
}

