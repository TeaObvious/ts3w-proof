/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


uint __thiscall FUN_00726a80(void *this,uint *param_1,uint param_2,uint param_3)

{
  void *_Src;
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;
  undefined4 *puVar9;
  
  if (param_2 < 0x14) {
    return in_EAX & 0xffffff00;
  }
  if ((char)param_3 != '\0') {
    *(undefined4 *)((int)this + 4) = *(undefined4 *)this;
    FUN_006125d0(this,param_1,param_2 + (int)param_1);
    param_1 = *(uint **)this;
  }
  if ((0xffff < *param_1) && ((*param_1 & 0xffff) == 0)) {
    ResourceBytes_SwapDwordsInPlace(param_1,5);
    *(undefined1 *)((int)this + 0x1c) = 1;
  }
  iVar7 = param_1[3] + param_1[4] + param_1[2];
  *(int *)((int)this + 0x14) = iVar7;
  *(uint *)((int)this + 0x10) = param_1[4];
  uVar3 = param_1[4] + iVar7 * 2;
  uVar2 = uVar3 * 8 + 0x14;
  if (uVar2 <= param_2) {
    if (*(char *)((int)this + 0x1c) != '\0') {
      ResourceBytes_SwapDwordsInPlace(param_1 + 5,(uVar3 & 0x1fffffff) << 1);
    }
    iVar7 = param_1[3] + param_1[4] + param_1[2];
    piVar1 = FUN_004e6f20(DAT_011cc864,(iVar7 + param_1[4] * 2) * 4,0);
    uVar2 = 0;
    if (piVar1 != (int *)0x0) {
      *(int **)((int)this + 0x18) = piVar1;
      uVar3 = 0;
      puVar4 = param_1 + iVar7 * 4 + 5;
      if (param_1[4] != 0) {
        do {
          *(uint *)(*(int *)((int)this + 0x18) + uVar3 * 8) = *puVar4 + (int)param_1;
          *(uint *)(*(int *)((int)this + 0x18) + 4 + uVar3 * 8) = puVar4[1];
          uVar3 = uVar3 + 1;
          puVar4 = puVar4 + 2;
        } while (uVar3 < param_1[4]);
      }
      if ((*(char *)((int)this + 0x1c) != '\0') && (iVar7 != 0)) {
        puVar4 = param_1 + 5;
        iVar8 = iVar7;
        do {
          uVar3 = *puVar4;
          *puVar4 = puVar4[1];
          puVar4[1] = uVar3;
          puVar4 = puVar4 + 4;
          iVar8 = iVar8 + -1;
        } while (iVar8 != 0);
      }
      puVar4 = param_1 + 5;
      puVar6 = (undefined4 *)(*(int *)((int)this + 0x18) + param_1[4] * 8);
      puVar9 = puVar6;
      if (iVar7 != 0) {
        for (; iVar7 != 0; iVar7 = iVar7 + -1) {
          *puVar9 = 0;
          puVar9 = puVar9 + 1;
        }
      }
      *(uint **)((int)this + 0x24) = puVar4;
      *(undefined4 **)((int)this + 0x28) = puVar6;
      uVar3 = param_1[1];
      puVar4 = puVar4 + uVar3 * 4;
      puVar6 = puVar6 + uVar3;
      *(uint *)((int)this + 0x2c) = uVar3;
      *(uint **)((int)this + 0x30) = puVar4;
      *(undefined4 **)((int)this + 0x34) = puVar6;
      iVar7 = param_1[4] - param_1[1];
      *(int *)((int)this + 0x38) = iVar7;
      *(uint **)((int)this + 0x3c) = puVar4 + iVar7 * 4;
      *(undefined4 **)((int)this + 0x40) = puVar6 + iVar7;
      uVar3 = param_1[2];
      *(uint *)((int)this + 0x44) = uVar3;
      *(uint **)((int)this + 0x48) = puVar4 + iVar7 * 4 + uVar3 * 4;
      puVar6 = puVar6 + iVar7 + *(int *)((int)this + 0x44);
      *(undefined4 **)((int)this + 0x4c) = puVar6;
      uVar3 = param_1[3];
      *(uint *)((int)this + 0x50) = uVar3;
      if ((char)param_3 != '\0') {
        _Src = *(void **)((int)this + 4);
        iVar7 = *(int *)this;
        uVar3 = (*(int *)((int)this + 0x10) +
                (*(int *)((int)this + 0x44) + uVar3 + *(int *)((int)this + 0x2c) +
                *(int *)((int)this + 0x38)) * 2) * 8 + 0x14;
        if ((uint)((int)_Src - iVar7) < uVar3) {
          param_3 = param_3 & 0xffffff00;
          uVar5 = FUN_00b6f4c0(this,_Src,(void *)((iVar7 - (int)_Src) + uVar3),(byte *)&param_3);
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
        puVar6 = memmove((void *)(iVar7 + uVar3),_Src,0);
        *(int *)((int)this + 4) = (int)(iVar7 + uVar3) + (*(int *)((int)this + 4) - (int)_Src);
      }
      return CONCAT31((int3)((uint)puVar6 >> 8),1);
    }
  }
  return uVar2 & 0xffffff00;
}

