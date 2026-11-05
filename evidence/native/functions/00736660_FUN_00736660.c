/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


char __thiscall
FUN_00736660(void *this,uint *param_1,undefined4 param_2,int *param_3,int *param_4,
            undefined4 *param_5,LPCRITICAL_SECTION *param_6)

{
  int iVar1;
  char cVar2;
  LPCRITICAL_SECTION *pp_Var3;
  int *piVar4;
  int *piVar5;
  LPCRITICAL_SECTION unaff_EBX;
  LPCRITICAL_SECTION this_00;
  LPCRITICAL_SECTION *pp_Var6;
  char unaff_retaddr;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  LPCRITICAL_SECTION local_14;
  LPCRITICAL_SECTION local_10;
  undefined4 uStack_c;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x170);
  local_14 = this_00;
  FUN_004e1c00(this_00,(uint *)&DAT_00fff03c);
  ResourceKey_CopyWithMountedCandidate((uint *)&local_10,param_1);
  pp_Var6 = param_6;
  param_1 = (uint *)((uint)param_1 & 0xffffff00);
  pp_Var3 = param_6;
  if (param_6 == (LPCRITICAL_SECTION *)0x0) {
    pp_Var3 = &local_10;
  }
  piVar4 = (int *)(**(code **)(*(int *)this + 0x58))(pp_Var3);
  if (piVar4 != (int *)0x0) {
    if (pp_Var6 == (LPCRITICAL_SECTION *)0x0) {
      pp_Var6 = &local_14;
    }
    cVar2 = (**(code **)(*piVar4 + 0x18))(pp_Var6,param_1);
    unaff_retaddr = '\0';
    if (cVar2 != '\0') {
      FUN_004e1cc0(this_00);
      return '\x01';
    }
  }
  piVar4 = param_3;
  if (((param_3 != (int *)0x0) ||
      (piVar4 = (int *)(**(code **)(*(int *)this + 0x44))(&local_14), piVar4 != (int *)0x0)) &&
     ((piVar5 = param_4, param_4 != (int *)0x0 ||
      (piVar5 = (int *)(**(code **)(*(int *)this + 0x2c))(uStack_c,0xffffffff), piVar5 != (int *)0x0
      )))) {
    if (param_1 == (uint *)0x0) {
      FUN_004e1cc0(this_00);
      return '\x01';
    }
    iVar1 = *piVar4;
    uVar10 = 0;
    uVar9 = 1;
    uVar8 = 3;
    uVar7 = 1;
    param_3 = (int *)0x0;
    piVar4 = FUN_004b02d0((int *)&param_3);
    cVar2 = (**(code **)(iVar1 + 0x34))(&local_14,piVar4,uVar7,uVar8,uVar9,uVar10);
    if (cVar2 != '\0') {
      unaff_retaddr = (**(code **)(*piVar5 + 0x1c))(param_3,param_1,param_2,uStack_c);
    }
    if (unaff_retaddr != '\0') {
      if (param_5 != (undefined4 *)0x0) {
        FUN_004af240((void *)*param_1,param_5);
      }
      (**(code **)(*(int *)this + 0x5c))(*param_1,1);
    }
    this_00 = unaff_EBX;
    if (param_3 != (int *)0x0) {
      (**(code **)(*param_3 + 8))();
    }
  }
  FUN_004e1cc0(this_00);
  return unaff_retaddr;
}

