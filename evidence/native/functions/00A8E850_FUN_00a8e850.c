/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Pending floor location equal range; descriptive label, not recovered original symbol.
   ECX sorted three-byte vector plus output pointer pair/query, RET8 void. AD0DB0 lower_bound by signed level/X/Z; checks reverse comparator and returns [found,found+3) only for equality, otherwise [lower,lower). Mask is not part of the three-byte key; assumes valid sorted storage. */

void __thiscall FUN_00a8e850(void *this,undefined4 *param_1,char *param_2)

{
  char cVar1;
  char cVar2;
  char *pcVar3;
  char *pcVar4;
  bool bVar5;
  bool bVar6;
  
  pcVar3 = *(char **)((int)this + 4);
  pcVar4 = FUN_00ad0db0(*(char **)this,(int)pcVar3,param_2);
  if (pcVar4 != pcVar3) {
    cVar1 = param_2[2];
    cVar2 = pcVar4[2];
    bVar6 = SBORROW1(cVar1,cVar2);
    bVar5 = (char)(cVar1 - cVar2) < '\0';
    if (cVar1 == cVar2) {
      cVar1 = *param_2;
      cVar2 = *pcVar4;
      bVar6 = SBORROW1(cVar1,cVar2);
      bVar5 = (char)(cVar1 - cVar2) < '\0';
      if (cVar1 == cVar2) {
        bVar6 = SBORROW1(param_2[1],pcVar4[1]);
        bVar5 = (char)(param_2[1] - pcVar4[1]) < '\0';
      }
    }
    if (bVar6 == bVar5) {
      *param_1 = pcVar4;
      param_1[1] = pcVar4 + 3;
      return;
    }
  }
  *param_1 = pcVar4;
  param_1[1] = pcVar4;
  return;
}
