/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXchild, parentNode/descriptor two stackwordsRET8 void. Unlinks old node20, calls child virtual+28 withidentity, stores parent190. Parentnull clears mode100 and selflinks20; nonnull copies descriptor mode0->100,offset10..4C->110..14C,union50..8C->150..18C, links child20 into parent194 ring, calls6FB340 immediately then6FB2E0(parent) and childvirtual+5C. No model bind inverse is calculated in this body. Null child is not safely admitted despite initial branch. No locking/refcount/queue/GPU safety inferred. */

void __thiscall FUN_006fc5f0(void *this,int *param_1,undefined4 *param_2)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  int *piVar5;
  int iVar6;
  undefined4 *puVar7;
  undefined4 *puVar8;
  float local_50 [19];
  
  if (this == (void *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = (int *)((int)this + 0x20);
  }
  piVar1 = (int *)piVar5[1];
  iVar6 = *piVar5;
  *piVar1 = iVar6;
  local_50[0] = 1.0;
  local_50[1] = 0.0;
  local_50[2] = 0.0;
  local_50[3] = 0.0;
  *(int **)(iVar6 + 4) = piVar1;
  local_50[4] = 0.0;
  local_50[5] = 1.0;
  local_50[6] = 0.0;
  local_50[7] = 0.0;
  local_50[8] = 0.0;
  local_50[9] = 0.0;
  local_50[10] = 1.0;
  local_50[0xb] = 0.0;
  local_50[0xc] = 0.0;
  local_50[0xd] = 0.0;
  local_50[0xe] = 0.0;
  local_50[0xf] = 1.0;
  (**(code **)(*(int *)this + 0x28))(local_50);
  *(int **)((int)this + 400) = param_1;
  if (param_1 == (int *)0x0) {
    iVar6 = (int)this + 0x20;
    *(undefined4 *)((int)this + 0x100) = 0;
    *(int *)iVar6 = iVar6;
    *(int *)((int)this + 0x24) = iVar6;
    (**(code **)(*(int *)this + 0x5c))();
    return;
  }
  *(undefined4 *)((int)this + 0x100) = *param_2;
  uVar2 = param_2[5];
  uVar3 = param_2[6];
  uVar4 = param_2[7];
  *(undefined4 *)((int)this + 0x110) = param_2[4];
  *(undefined4 *)((int)this + 0x114) = uVar2;
  *(undefined4 *)((int)this + 0x118) = uVar3;
  *(undefined4 *)((int)this + 0x11c) = uVar4;
  uVar2 = param_2[9];
  uVar3 = param_2[10];
  uVar4 = param_2[0xb];
  *(undefined4 *)((int)this + 0x120) = param_2[8];
  *(undefined4 *)((int)this + 0x124) = uVar2;
  *(undefined4 *)((int)this + 0x128) = uVar3;
  *(undefined4 *)((int)this + 300) = uVar4;
  uVar2 = param_2[0xd];
  uVar3 = param_2[0xe];
  uVar4 = param_2[0xf];
  *(undefined4 *)((int)this + 0x130) = param_2[0xc];
  *(undefined4 *)((int)this + 0x134) = uVar2;
  *(undefined4 *)((int)this + 0x138) = uVar3;
  *(undefined4 *)((int)this + 0x13c) = uVar4;
  uVar2 = param_2[0x11];
  uVar3 = param_2[0x12];
  uVar4 = param_2[0x13];
  *(undefined4 *)((int)this + 0x140) = param_2[0x10];
  *(undefined4 *)((int)this + 0x144) = uVar2;
  *(undefined4 *)((int)this + 0x148) = uVar3;
  *(undefined4 *)((int)this + 0x14c) = uVar4;
  puVar7 = param_2 + 0x14;
  puVar8 = (undefined4 *)((int)this + 0x150);
  for (iVar6 = 0x10; iVar6 != 0; iVar6 = iVar6 + -1) {
    *puVar8 = *puVar7;
    puVar7 = puVar7 + 1;
    puVar8 = puVar8 + 1;
  }
  iVar6 = param_1[0x66];
  piVar5 = (int *)((int)this + 0x20);
  *piVar5 = (int)(param_1 + 0x65);
  *(int *)((int)this + 0x24) = iVar6;
  param_1[0x66] = (int)piVar5;
  **(int **)((int)this + 0x24) = (int)piVar5;
  FUN_006fb340(this,param_1);
  FUN_006fb2e0((int)param_1);
  (**(code **)(*(int *)this + 0x5c))();
  return;
}
