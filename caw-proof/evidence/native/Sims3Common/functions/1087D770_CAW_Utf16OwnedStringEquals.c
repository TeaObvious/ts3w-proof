/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Compares the owned UTF-16 string length and bytes with a
   null-terminated input. Returns one only when equal and zero otherwise; does not mutate either
   string. ResourceManagerRegisterTypeName uses this for an already registered type, rejecting
   conflicting names instead of replacing them. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined4 __cdecl CAW_Utf16OwnedStringEquals(undefined4 *param_1,byte *param_2)

{
  short sVar1;
  byte *pbVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  byte *pbVar6;
  
  sVar1 = *(short *)param_2;
  pbVar2 = param_2;
  while (sVar1 != 0) {
    pbVar2 = pbVar2 + 2;
    sVar1 = *(short *)pbVar2;
  }
  pbVar6 = (byte *)*param_1;
  iVar3 = (int)pbVar2 - (int)param_2 >> 1;
  if (param_1[1] - (int)pbVar6 >> 1 != iVar3) {
    return 0;
  }
  for (uVar4 = iVar3 * 2; 3 < uVar4; uVar4 = uVar4 - 4) {
    if (*(int *)pbVar6 != *(int *)param_2) goto LAB_1087d7c8;
    param_2 = param_2 + 4;
    pbVar6 = pbVar6 + 4;
  }
  if (uVar4 == 0) {
LAB_1087d825:
    iVar5 = 0;
  }
  else {
LAB_1087d7c8:
    iVar3 = (uint)*pbVar6 - (uint)*param_2;
    if (iVar3 == 0) {
      if (uVar4 == 1) goto LAB_1087d825;
      iVar3 = (uint)pbVar6[1] - (uint)param_2[1];
      if (iVar3 == 0) {
        if (uVar4 == 2) goto LAB_1087d825;
        iVar3 = (uint)pbVar6[2] - (uint)param_2[2];
        if (iVar3 == 0) {
          if ((uVar4 == 3) || (iVar3 = (uint)pbVar6[3] - (uint)param_2[3], iVar3 == 0))
          goto LAB_1087d825;
        }
      }
    }
    iVar5 = 1;
    if (iVar3 < 1) {
      iVar5 = -1;
    }
  }
  if (iVar5 != 0) {
    return 0;
  }
  return 1;
}

