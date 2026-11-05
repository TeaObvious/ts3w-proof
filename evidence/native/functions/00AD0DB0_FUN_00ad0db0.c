/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Signed packed location lower bound; descriptive label, not recovered original symbol.
   cdecl begin/end/query pointers, plain RET EAX borrowed pointer. Three-byte records ordered lexicographically by SIGNED level(byte2), X(byte0), Z(byte1). Binary search uses (end-begin)/3 and returns first not-less element. Valid sorted aligned range required, no mask comparison or insertion. */

char * __cdecl FUN_00ad0db0(char *param_1,int param_2,char *param_3)

{
  char cVar1;
  char cVar2;
  char cVar3;
  char *pcVar4;
  int iVar5;
  int iVar6;
  bool bVar7;
  bool bVar8;
  
  iVar6 = (param_2 - (int)param_1) / 3;
  if (0 < iVar6) {
    cVar1 = param_3[2];
    do {
      iVar5 = iVar6 >> 1;
      cVar2 = param_1[iVar5 * 3 + 2];
      pcVar4 = param_1 + iVar5 * 3;
      bVar8 = SBORROW1(cVar2,cVar1);
      bVar7 = (char)(cVar2 - cVar1) < '\0';
      if (cVar2 == cVar1) {
        cVar2 = *pcVar4;
        cVar3 = *param_3;
        bVar8 = SBORROW1(cVar2,cVar3);
        bVar7 = (char)(cVar2 - cVar3) < '\0';
        if (cVar2 == cVar3) {
          bVar8 = SBORROW1(pcVar4[1],param_3[1]);
          bVar7 = (char)(pcVar4[1] - param_3[1]) < '\0';
        }
      }
      if (bVar8 != bVar7) {
        param_1 = pcVar4 + 3;
        iVar5 = iVar6 + (-1 - iVar5);
      }
      iVar6 = iVar5;
    } while (0 < iVar5);
  }
  return param_1;
}
