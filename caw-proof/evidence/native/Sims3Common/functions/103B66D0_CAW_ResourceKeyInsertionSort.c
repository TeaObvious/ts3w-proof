/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Original key word layout is instance-low, instance-high,
   type, group. Comparator orders low word first, then high word, then group and type. Numeric
   unsigned64 instance order is different when low and high ranks disagree. Analyst-assigned helper
   names are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __cdecl CAW_ResourceKeyInsertionSort(ResourceKeyWords *begin,ResourceKeyWords *end)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  ResourceKeyWords *pRVar5;
  ResourceKeyWords *pRVar6;
  ResourceKeyWords *pRVar7;
  ResourceKeyWords *pRVar8;
  bool bVar9;
  
  pRVar6 = begin;
  if (begin != end) {
    while (pRVar6 = pRVar6 + 1, pRVar6 != end) {
      uVar1 = pRVar6->type;
      uVar2 = pRVar6->instanceLow;
      uVar3 = pRVar6->instanceHigh;
      uVar4 = pRVar6->group;
      pRVar5 = pRVar6;
      for (pRVar7 = pRVar6; pRVar7 != begin; pRVar7 = pRVar7 + -1) {
        pRVar8 = pRVar5 + -1;
        bVar9 = uVar2 < pRVar8->instanceLow;
        if (((uVar2 == pRVar8->instanceLow) &&
            (bVar9 = uVar3 < pRVar5[-1].instanceHigh, uVar3 == pRVar5[-1].instanceHigh)) &&
           (bVar9 = uVar4 < pRVar5[-1].group, uVar4 == pRVar5[-1].group)) {
          bVar9 = uVar1 < pRVar5[-1].type;
        }
        if (!bVar9) break;
        pRVar7->instanceLow = pRVar8->instanceLow;
        pRVar7->instanceHigh = pRVar5[-1].instanceHigh;
        pRVar7->type = pRVar5[-1].type;
        pRVar7->group = pRVar5[-1].group;
        pRVar5 = pRVar8;
      }
      pRVar7->instanceLow = uVar2;
      pRVar7->instanceHigh = uVar3;
      pRVar7->type = uVar1;
      pRVar7->group = uVar4;
    }
  }
  return;
}

