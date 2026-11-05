/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


bool __thiscall FUN_00726270(void *this,int param_1,int *param_2)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  int *piStack_50;
  undefined4 uStack_4c;
  undefined4 *puStack_48;
  undefined4 uStack_44;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  int local_24;
  int local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = *(undefined4 *)(param_1 + 0x14);
  local_18 = *(undefined4 *)(param_1 + 0xc);
  local_30 = 1;
  local_2c = 1;
  local_20 = 1;
  local_1c = *(undefined4 *)(param_1 + 8);
  local_14 = *(undefined4 *)(param_1 + 0x10);
  local_28 = 0;
  local_24 = 0;
  local_c = 0x30;
  local_8 = 0;
  local_4 = 0;
  uStack_44 = 0x7262cf;
  piVar2 = (int *)(**(code **)(*param_2 + 0x18))();
  uStack_44 = 0x30;
  puStack_48 = &local_30;
  uStack_4c = 0x7262e1;
  cVar1 = (**(code **)(*piVar2 + 0x38))();
  if (cVar1 != '\0') {
    uStack_4c = 1;
    piStack_50 = piVar2;
    cVar1 = (**(code **)(*(int *)this + 0x3c))(param_1);
    if (cVar1 != '\0') {
      iVar3 = (**(code **)(*piVar2 + 0x24))(0);
      local_20 = iVar3 - local_24;
      cVar1 = (**(code **)(*piVar2 + 0x28))(0,0);
      if (cVar1 != '\0') {
        cVar1 = (**(code **)(*piVar2 + 0x38))(&piStack_50,0x30);
        if (cVar1 != '\0') {
          cVar1 = (**(code **)(*piVar2 + 0x28))(iVar3,0);
          return cVar1 != '\0';
        }
      }
    }
  }
  return false;
}

