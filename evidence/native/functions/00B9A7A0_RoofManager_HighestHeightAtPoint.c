/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 chimney-query boundary. ECXroofmanager, two physical coordinate words, RET8,
   x87ST0 result. Iterate level0 through owninglot signedmax+180 inclusive; B94BB0
   exactlevel/includingeave tests, B99F90 samples height; keep strictly greater than initial0.
   Heightproducer is separate from merely testing roof bounds. */

float10 __thiscall RoofManager_HighestHeightAtPoint(void *param_1,float param_2,undefined4 param_3)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  float local_14;
  float local_10;
  float local_c;
  undefined4 local_8;
  int local_4;
  
  iVar1 = *(int *)(*(int *)((int)param_1 + 8) + 0x180);
  iVar3 = 0;
  local_14 = 0.0;
  if (-1 < iVar1) {
    do {
      local_c = param_2;
      local_8 = param_3;
      local_4 = iVar3;
      uVar2 = RoofManager_TestPointCoverage(param_1,&local_c,(LPCRITICAL_SECTION)0x0,'\x01');
      if ((char)uVar2 != '\0') {
        FUN_00b99f90(param_1,&local_c,'\0',&local_10);
        if (local_14 < local_10) {
          local_14 = local_10;
        }
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 <= iVar1);
  }
  return (float10)local_14;
}

