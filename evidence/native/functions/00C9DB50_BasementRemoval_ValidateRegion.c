/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl five words, AL bool. Invalid shape yields EB; otherwise
   compact corners level-1 and tile-obstruction validation. It does not perform excavation height
   restoration. */

bool __cdecl
BasementRemoval_ValidateRegion
          (void *param_1,undefined4 param_2,char *param_3,char *param_4,void *param_5)

{
  bool bVar1;
  char local_58;
  char local_57;
  char local_56;
  char local_54;
  char local_53;
  char local_52;
  float local_50 [19];
  
  bVar1 = BasementRegion_TestInvalidShape(param_1,(char)param_2,param_3,param_4,param_5);
  if (bVar1) {
    if (param_5 != (void *)0x0) {
      FUN_00ad6ac0(local_50,0xeb,param_1,(undefined3 *)param_3);
      FUN_00ad8570(param_5,local_50);
      FUN_00ad70d0((int)local_50);
    }
  }
  else {
    local_54 = *param_3;
    local_53 = param_3[1];
    local_58 = *param_4;
    local_52 = param_3[2] + -1;
    local_57 = param_4[1];
    local_56 = param_4[2] + -1;
    bVar1 = BasementRegion_ValidateTileObstructions(param_1,param_2,0,&local_54,&local_58,param_5);
    if (bVar1) {
      return true;
    }
  }
  return false;
}

