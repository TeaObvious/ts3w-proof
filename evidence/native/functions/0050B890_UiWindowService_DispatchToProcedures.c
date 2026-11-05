/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0050b890. Physical ECX service plus complete Window/message/lowbyte
   control/RET0C. Native live list Window+218/category mask admits procedure virtual18;
   acquire/release actual Window and procedure refs. Saves/restores reentrant cursor at service+6A8
   and advances cursor before callback. If lowbyte unhandled and controlfalse, optional Window
   primary+20 receives message. No generic callback list snapshot or complete mutation-safety
   theorem inferred. */

char __thiscall
UiWindowService_DispatchToProcedures(void *this,int *param_1,int param_2,char param_3)

{
  uint *puVar1;
  int *piVar2;
  int *piVar3;
  char cVar4;
  uint uVar5;
  int iVar6;
  int local_10;
  int *local_c;
  int *local_8;
  char local_4;
  
  piVar3 = param_1;
  uVar5 = UiEventType_GetCategoryMask(*(uint *)(param_2 + 8));
  local_8 = (int *)param_1[0x86];
  local_10 = *(int *)((int)this + 0x6a8);
  local_c = param_1;
  local_4 = param_3;
  if (((local_10 != 0) && (*(int **)(local_10 + 4) == param_1)) &&
     (*(char *)(local_10 + 0xc) == param_3)) {
    local_8 = *(int **)(local_10 + 8);
  }
  *(int **)((int)this + 0x6a8) = &local_10;
  (**(code **)*param_1)();
  do {
    cVar4 = '\0';
    if (local_8 == param_1 + 0x86) {
LAB_0050b970:
      param_1._0_1_ = cVar4;
      if (((param_3 == '\0') && ((char)param_1 == '\0')) &&
         (iVar6 = (**(code **)(piVar3[1] + 0x14))(), iVar6 != 0)) {
        param_1._0_1_ = (**(code **)(*piVar3 + 0x20))(param_2);
      }
      (**(code **)(*piVar3 + 4))();
      *(int *)((int)this + 0x6a8) = local_10;
      return (char)param_1;
    }
    piVar2 = (int *)local_8[2];
    if (piVar2 != (int *)0x0) {
      (**(code **)*piVar2)();
    }
    puVar1 = (uint *)(local_8 + 3);
    local_8 = (int *)*local_8;
    if (((uVar5 & *puVar1) != 0) &&
       (cVar4 = (**(code **)(*piVar2 + 0x18))(param_1 + 1,param_2), cVar4 != '\0')) {
      param_1._0_1_ = '\x01';
      cVar4 = (char)param_1;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      goto LAB_0050b970;
    }
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  } while( true );
}

