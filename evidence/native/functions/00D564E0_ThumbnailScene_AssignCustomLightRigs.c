/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX manager plus request pointer RET4. Iterate
   retained scene-model vector atrequest+A8..AC; choose customrig by original thumbnail category.
   Human Sim hash8A5B4BEC, pet96591FBA after species predicate; household37BF840D normally6F2CA945,
   special manager230=528365C4 choosesB1F01C50 with distinct flag. Assign on each separate model via
   vtable6C; other object/photo categories retain separate branches. */

void __thiscall ThumbnailScene_AssignCustomLightRigs(void *this,int *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 uVar3;
  void *this_00;
  int *piVar4;
  uint uVar5;
  undefined4 uVar6;
  uint uVar7;
  uint uVar8;
  bool bVar9;
  uint local_1c [4];
  int local_c;
  int local_8;
  int local_4;
  
  piVar1 = param_1;
  iVar2 = FUN_00d4b1e0(*param_1);
  if (iVar2 < 0x37bf840e) {
    if (iVar2 == 0x37bf840d) {
      uVar5 = param_1[0x2b] - param_1[0x2a] >> 2;
      bVar9 = *(int *)((int)this + 0x230) == 0x528365c4;
      iVar2 = (-(uint)bVar9 & 0x42c3730b) + 0x6f2ca945;
      uVar7 = 0;
      if (uVar5 == 0) {
        return;
      }
      do {
        if (bVar9) {
          (**(code **)(**(int **)(param_1[0x2a] + uVar7 * 4) + 0x6c))(iVar2,1);
        }
        else {
          (**(code **)(**(int **)(param_1[0x2a] + uVar7 * 4) + 0x6c))(iVar2,0);
        }
        uVar7 = uVar7 + 1;
      } while (uVar7 < uVar5);
      return;
    }
    if (iVar2 == -0x75a4b414) {
      uVar5 = param_1[0x2b] - param_1[0x2a] >> 2;
      uVar6 = 0x8a5b4bec;
      if (((param_1[0x89] & 0xcf00U) != 0) &&
         (uVar3 = FUN_0055dd90(param_1[0x89] & 0xcf00U), (char)uVar3 == '\0')) {
        uVar6 = 0x96591fba;
      }
      uVar7 = 0;
      if (uVar5 == 0) {
        return;
      }
      do {
        (**(code **)(**(int **)(param_1[0x2a] + uVar7 * 4) + 0x6c))(uVar6,1);
        uVar7 = uVar7 + 1;
      } while (uVar7 < uVar5);
      return;
    }
    if (iVar2 == -0x51f44112) {
      uVar7 = 0;
      uVar5 = param_1[0x2b] - param_1[0x2a] >> 2;
      if (uVar5 == 0) {
        return;
      }
      do {
        (**(code **)(**(int **)(param_1[0x2a] + uVar7 * 4) + 0x6c))(0xae0bbeee,0);
        uVar7 = uVar7 + 1;
      } while (uVar7 < uVar5);
      return;
    }
    if (iVar2 == -0x2aefe104) {
      uVar7 = 0;
      uVar5 = param_1[0x2b] - param_1[0x2a] >> 2;
      if (uVar5 == 0) {
        return;
      }
      do {
        (**(code **)(**(int **)(param_1[0x2a] + uVar7 * 4) + 0x6c))(0xd5101efc,0);
        uVar7 = uVar7 + 1;
      } while (uVar7 < uVar5);
      return;
    }
  }
  else {
    if (iVar2 == 0x6283ae8a) {
      uVar5 = param_1[0x88];
      if (uVar5 == 0x35) {
        if (((uint)param_1[0x89] >> 0xd & 1) != 0) {
          return;
        }
      }
      else {
        if (uVar5 == 0x21) {
          return;
        }
        if (uVar5 == 0x22) {
          return;
        }
      }
      if ((param_1[0x46] == 0x358b08a) || (param_1[0x46] == 0x51df2dd)) {
        param_1._0_1_ = '\x01';
        piVar4 = &DAT_011eed58;
      }
      else {
        param_1._0_1_ = '\0';
        piVar4 = piVar1 + 0x44;
      }
      local_1c[3] = *piVar4;
      local_c = piVar4[1];
      local_8 = piVar4[2];
      local_4 = piVar4[3];
      local_1c[0] = FUN_00d52ac0(uVar5,piVar1[0x89],(char)param_1,local_1c + 3);
      local_1c[1] = FUN_00d52ac0(piVar1[0x88],piVar1[0x89] & 0x7f,(char)param_1,local_1c + 3);
      local_1c[2] = FUN_00d52ac0(piVar1[0x88],0,(char)param_1,local_1c + 3);
      uVar5 = 0x6283ae8a;
      uVar7 = 0;
      do {
        uVar8 = local_1c[uVar7];
        this_00 = (void *)FUN_006e9640();
        piVar4 = FUN_006ad190(this_00,uVar8);
        if (piVar4 != (int *)0x0) {
          uVar5 = local_1c[uVar7];
          break;
        }
        uVar7 = uVar7 + 1;
      } while (uVar7 < 3);
      uVar8 = 0;
      uVar7 = piVar1[0x2b] - piVar1[0x2a] >> 2;
      if (uVar7 == 0) {
        return;
      }
      do {
        (**(code **)(**(int **)(piVar1[0x2a] + uVar8 * 4) + 0x6c))(uVar5,2);
        uVar8 = uVar8 + 1;
      } while (uVar8 < uVar7);
      return;
    }
    if (iVar2 == 0x6912f019) {
      uVar7 = 0;
      uVar5 = param_1[0x2b] - param_1[0x2a] >> 2;
      if (uVar5 == 0) {
        return;
      }
      do {
        (**(code **)(**(int **)(param_1[0x2a] + uVar7 * 4) + 0x6c))(0x6912f019,1);
        uVar7 = uVar7 + 1;
      } while (uVar7 < uVar5);
      return;
    }
  }
  uVar7 = 0;
  uVar5 = param_1[0x2b] - param_1[0x2a] >> 2;
  if (uVar5 == 0) {
    return;
  }
  do {
    piVar1 = *(int **)(param_1[0x2a] + uVar7 * 4);
    if (piVar1[0x7c] == 0) {
      (**(code **)(*piVar1 + 0x6c))(0xe1c27cd7,1);
    }
    uVar7 = uVar7 + 1;
  } while (uVar7 < uVar5);
  return;
}

