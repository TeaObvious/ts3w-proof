/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). cdecl. Resolves
   object resource from owner+0x18 via manager 0x011ee034/0x00c8ebb0 when available; calls
   0x00b09c70 with inverse flag zero. Output is 3x3 XZ transform using level-component heading and
   lot position. Resource-specific offset path remains bounded in downstream helpers. */

void __cdecl
Footprint_BuildOwnerToLotXZMatrix
          (void *param_1,float param_2,float param_3,float param_4,float *param_5)

{
  int iVar1;
  
  if (DAT_011ee034 == (void *)0x0) {
    iVar1 = 0;
  }
  else {
    iVar1 = FUN_00c8ebb0(DAT_011ee034,(uint *)((int)param_1 + 0x18));
  }
  Footprint_BuildXZRotationTranslationMatrix(param_1,iVar1,param_2,param_3,param_4,'\0',param_5);
  return;
}

