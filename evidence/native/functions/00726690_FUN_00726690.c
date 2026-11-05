/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x00726736) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

undefined4 FUN_00726690(undefined4 param_1,void *param_2)

{
  void *this;
  char cVar1;
  undefined *puVar2;
  int *piVar3;
  int *piVar4;
  uint uVar5;
  int *piVar6;
  void *pvVar7;
  uint uVar8;
  void *pvVar9;
  uint uVar10;
  uint uVar11;
  int *piStack_18;
  int *local_14;
  int *local_10;
  int local_c;
  void *local_8;
  int *local_4;
  
  this = param_2;
  param_2 = (void *)CONCAT31(param_2._1_3_,*(undefined1 *)((int)param_2 + 0x1d));
  local_10 = (int *)FUN_004afe80();
  local_4 = *(int **)((int)this + 0x10);
  local_14 = (int *)0x0;
  if (local_4 != (int *)0x0) {
    local_c = 0;
    do {
      piVar6 = local_14;
      if (local_14 < *(int **)((int)this + 0x10)) {
        if (local_14 < *(int **)((int)this + 0x2c)) {
          puVar2 = (undefined *)(*(int *)((int)this + 0x24) + local_c);
        }
        else {
          puVar2 = (undefined *)
                   (((int)local_14 - (int)*(int **)((int)this + 0x2c)) * 0x10 +
                   *(int *)((int)this + 0x30));
        }
      }
      else {
        if ((_DAT_011d4c80 & 1) == 0) {
          _DAT_011d4c80 = _DAT_011d4c80 | 1;
          _DAT_011d4c70 = 0;
          _DAT_011d4c74 = 0;
          _DAT_011d4c78 = 0;
          _DAT_011d4c7c = 0;
        }
        if ((_DAT_011d4c68 & 1) == 0) {
          _DAT_011d4c68 = _DAT_011d4c68 | 1;
          _DAT_011d4c58 = 0;
          _DAT_011d4c5c = 0;
          DAT_011d4c60 = 0;
          _DAT_011d4c64 = 0;
        }
        puVar2 = &DAT_011d4c58;
      }
      if (*(int *)(puVar2 + 8) != 0) {
        piVar3 = (int *)(**(code **)(*local_10 + 0x2c))(*(int *)(puVar2 + 8),0xffffffff);
        uVar5 = 0;
        if (piVar3 == (int *)0x0) goto LAB_0072686c;
        if ((*(int **)((int)this + 0x10) <= piVar6) ||
           ((*(uint *)(*(int *)((int)this + 0x28) + (int)piVar6 * 4) & 0xfffffffe) == 0)) {
          piStack_18 = (int *)0x0;
          piVar4 = (int *)(**(code **)(*local_10 + 0x58))(puVar2);
          piVar6 = piStack_18;
          local_8 = (void *)((uint)local_8 & 0xffffff00);
          if (piVar4 != (int *)0x0) {
            if (piStack_18 != (int *)0x0) {
              piStack_18 = (int *)0x0;
              (**(code **)(*piVar6 + 4))();
            }
            cVar1 = (**(code **)(*piVar4 + 0x18))(puVar2,&piStack_18);
            if ((cVar1 != '\0') && ((char)param_2 == '\0')) {
              local_8 = (void *)CONCAT31(local_8._1_3_,1);
            }
          }
          if ((piStack_18 == (int *)0x0) &&
             (uVar5 = (**(code **)(*piVar3 + 0x1c))(0,&piStack_18,0,*(undefined4 *)(puVar2 + 8)),
             (char)uVar5 == '\0')) {
            if (piStack_18 != (int *)0x0) {
              uVar5 = (**(code **)(*piStack_18 + 4))();
            }
            goto LAB_0072686c;
          }
          FUN_00726090(this,(uint)local_14,piStack_18,(char)local_8);
          piVar6 = local_14;
          if (piStack_18 != (int *)0x0) {
            (**(code **)(*piStack_18 + 4))();
            piVar6 = local_14;
          }
        }
      }
      local_c = local_c + 0x10;
      local_14 = (int *)((int)piVar6 + 1);
    } while (local_14 < local_4);
  }
  uVar11 = *(int *)((int)this + 0x44) - 1;
  if (-1 < (int)uVar11) {
    local_c = uVar11 * 0x10;
    do {
      if ((_DAT_011d4c68 & 1) == 0) {
        _DAT_011d4c68 = _DAT_011d4c68 | 1;
        _DAT_011d4c58 = 0;
        _DAT_011d4c5c = 0;
        DAT_011d4c60 = 0;
        _DAT_011d4c64 = 0;
      }
      if (uVar11 < *(uint *)((int)this + 0x44)) {
        puVar2 = (undefined *)(*(int *)((int)this + 0x3c) + local_c);
      }
      else {
        puVar2 = &DAT_011d4c58;
      }
      piVar6 = (int *)(**(code **)(*local_10 + 0x58))(puVar2);
      param_1 = 0;
      uVar5 = 0;
      if ((piVar6 == (int *)0x0) ||
         (uVar5 = (**(code **)(*piVar6 + 0x18))(puVar2,&param_1), piVar6 = local_4,
         local_4 == (int *)0x0)) goto LAB_0072686c;
      piVar3 = (int *)(*(int *)((int)this + 0x40) + uVar11 * 4);
      (**(code **)*local_4)();
      piVar4 = (int *)*piVar3;
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 4))();
      }
      *piVar3 = (int)piVar6;
      (**(code **)(*local_4 + 4))();
      local_c = local_c + -0x10;
      uVar11 = uVar11 - 1;
    } while (-1 < (int)uVar11);
  }
  pvVar9 = *(void **)((int)this + 0x2c);
  pvVar7 = pvVar9;
  param_2 = pvVar9;
  do {
    param_2 = (void *)((int)param_2 - 1);
    local_8 = pvVar7;
    if ((int)param_2 < 0) {
      if ((*(char *)((int)this + 0x1d) == '\0') && (pvVar9 = (void *)0x0, pvVar7 != (void *)0x0)) {
        do {
          if (pvVar9 < *(void **)((int)this + 0x10)) {
            uVar5 = *(uint *)(*(int *)((int)this + 0x28) + (int)pvVar9 * 4) & 0xfffffffe;
          }
          else {
            uVar5 = 0;
          }
          pvVar7 = (void *)(**(code **)(*local_10 + 0x5c))(uVar5,1);
          pvVar9 = (void *)((int)pvVar9 + 1);
        } while (pvVar9 < local_8);
      }
      return CONCAT31((int3)((uint)pvVar7 >> 8),1);
    }
    uVar11 = (uint)pvVar9 >> 0x1c;
    uVar5 = uVar11;
    if ((3 < uVar11) ||
       (uVar10 = ((uint)pvVar9 & 0xfffffff) - 1,
       *(uint *)((int)this + uVar11 * 0xc + 0x2c) <= uVar10)) goto LAB_0072686c;
    uVar8 = *(uint *)(*(int *)((int)this + uVar11 * 0xc + 0x28) + uVar10 * 4);
    if ((uVar8 & 1) != 0) {
      uVar5 = uVar10;
      if (uVar11 == 1) {
        uVar5 = *(int *)((int)this + 0x2c) + uVar10;
      }
      uVar5 = FUN_00726420(this,uVar5);
      if ((char)uVar5 == '\0') {
LAB_0072686c:
        return uVar5 & 0xffffff00;
      }
      uVar8 = *(uint *)(*(int *)((int)this + uVar11 * 0xc + 0x28) + uVar10 * 4);
    }
    if (uVar8 == 0) goto LAB_0072686c;
    pvVar9 = (void *)((int)pvVar9 - 1);
    pvVar7 = local_8;
  } while( true );
}

