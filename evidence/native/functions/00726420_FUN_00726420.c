/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


uint __thiscall FUN_00726420(void *this,uint param_1)

{
  uint *puVar1;
  uint uVar2;
  char cVar3;
  uint in_EAX;
  void *this_00;
  int *this_01;
  undefined4 *puVar4;
  int *piVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  undefined4 uVar9;
  uint uVar10;
  int *unaff_ESI;
  undefined4 *puVar11;
  size_t unaff_retaddr;
  undefined4 uStack_18;
  undefined4 local_14;
  int *local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  uVar7 = param_1;
  if (*(uint *)((int)this + 0x10) <= param_1) {
    return in_EAX & 0xffffff00;
  }
  puVar1 = (uint *)(*(int *)((int)this + 0x28) + param_1 * 4);
  uVar2 = *puVar1;
  if ((uVar2 & 1) == 0) {
    return CONCAT31((int3)((uint)puVar1 >> 8),1);
  }
  uVar10 = uVar2 - 1;
  *puVar1 = uVar10;
  local_14 = FUN_004afe80();
  this_00 = (void *)FUN_004e4500(0x2c,"ResourceLoad/AsyncFactory/ChildStream",0);
  uVar8 = 0;
  if (this_00 != (void *)0x0) {
    this_01 = FUN_004df460(this_00,0,0,"ResourceLoad/AsyncFactory/ChildStream");
    uVar8 = 0;
    if (this_01 != (int *)0x0) {
      puVar4 = FUN_004e4760(0x28,"ResourceLoad/AsyncFactory/ChildRecord",0);
      if (puVar4 != (undefined4 *)0x0) {
        local_10 = (int *)0x0;
        local_c = 0;
        local_8 = 0;
        local_4 = 0;
        piVar5 = (int *)FUN_004b3830(puVar4,0,this_01,&local_10,0,0);
        if (piVar5 != (int *)0x0) {
          (**(code **)(*piVar5 + 4))();
          FUN_007260e0(this,uVar7,&uStack_18,&param_1);
          puVar11 = (undefined4 *)(uVar7 * 0x10 + *(int *)((int)this + 0x24));
          puVar4 = puVar11;
          (**(code **)(*piVar5 + 0x14))();
          FUN_004df010(this_01,this,unaff_retaddr,'\x01',0,(int *)0x0);
          (**(code **)(*this_01 + 0x28))(0,0);
          local_10 = (int *)(**(code **)(*unaff_ESI + 0x2c))(puVar11[2],0xffffffff);
          *(undefined4 *)(uVar2 + 7) = *puVar11;
          *(undefined4 *)(uVar2 + 0xb) = puVar11[1];
          *(undefined4 *)(uVar2 + 0xf) = puVar11[2];
          *(undefined4 *)(uVar2 + 0x13) = puVar11[3];
          if (local_10 == (int *)0x0) {
LAB_0072658e:
            (**(code **)(*piVar5 + 8))();
            uVar7 = (**(code **)*this_01)(1);
            return uVar7 & 0xffffff00;
          }
          iVar6 = (**(code **)(*local_10 + 0x18))();
          if (iVar6 == 0x1cce04d) {
            cVar3 = (**(code **)(*local_10 + 0x38))
                              (uVar10,this_01,puVar4,*(undefined1 *)(puVar4 + 7));
            if (cVar3 != '\0') {
LAB_007265e1:
              (**(code **)(*piVar5 + 8))();
              uVar9 = (**(code **)*this_01)(1);
              return CONCAT31((int3)((uint)uVar9 >> 8),1);
            }
            goto LAB_0072658e;
          }
          cVar3 = (**(code **)(*local_10 + 0x24))(piVar5,uVar10,0,puVar11[2]);
          if (cVar3 != '\0') goto LAB_007265e1;
          (**(code **)(*piVar5 + 8))();
        }
      }
      uVar8 = (**(code **)*this_01)(1);
    }
  }
  return uVar8 & 0xffffff00;
}

