/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: cdecl five words, AL bool where true means invalid shape.
   Rectangle requires both low endpoints strictly below high endpoints and matching levels; diamond
   also tests parity and two diagonal degeneracies. Empty produces EB when errors available; no
   region mutation. */

bool __cdecl
BasementRegion_TestInvalidShape
          (void *param_1,char param_2,char *param_3,char *param_4,void *param_5)

{
  uint uVar1;
  bool local_55;
  float local_50 [19];
  
  if (param_3[2] != param_4[2]) {
    return true;
  }
  local_55 = false;
  if (param_2 == '\0') {
    if ((*param_3 < *param_4) && (param_3[1] < param_4[1])) {
      return false;
    }
    if (param_5 == (void *)0x0) {
      return true;
    }
    FUN_00ad6ac0(local_50,0xeb,param_1,(undefined3 *)param_3);
  }
  else {
    if ((*param_3 == *param_4) && (param_3[1] == param_4[1])) {
      if (param_5 == (void *)0x0) {
        return true;
      }
      FUN_00ad6ac0(local_50,0xeb,param_1,(undefined3 *)param_3);
      FUN_00ad8570(param_5,local_50);
      local_55 = true;
      FUN_00ad70d0((int)local_50);
    }
    uVar1 = (((int)param_4[1] - (int)*param_3) - (int)param_3[1]) + (int)*param_4 & 0x80000001;
    if ((int)uVar1 < 0) {
      uVar1 = (uVar1 - 1 | 0xfffffffe) + 1;
    }
    if (uVar1 == 1) {
      if (param_5 == (void *)0x0) {
        return true;
      }
      FUN_00ad6ac0(local_50,0xeb,param_1,(undefined3 *)param_3);
      FUN_00ad8570(param_5,local_50);
      local_55 = true;
      FUN_00ad70d0((int)local_50);
    }
    if (((int)param_3[1] + (int)*param_3 != (int)param_4[1] + (int)*param_4) &&
       ((int)*param_3 - (int)param_3[1] != (int)*param_4 - (int)param_4[1])) {
      return local_55;
    }
    if (param_5 == (void *)0x0) {
      return true;
    }
    FUN_00ad6ac0(local_50,0xeb,param_1,(undefined3 *)param_3);
  }
  FUN_00ad8570(param_5,local_50);
  FUN_00ad70d0((int)local_50);
  return true;
}

