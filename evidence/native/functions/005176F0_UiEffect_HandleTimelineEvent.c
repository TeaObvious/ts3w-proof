/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete 599-instruction/1668-byte event-driven effect timeline body. Uses runtime clock word at
   011CE088 plus current event/owner/group/loop state and selected virtual +0x9C dispatch. Runtime
   global value is not an initial-value observation. Current explicit finite nonnegative seconds,
   sorted state snapshot, Generation guards and group/loop rejection are separate mechanisms. Lower
   group/event child implementations and current source Fade +0x104 versus this receiver's +0x9C
   require a proved join; no slot equivalence is assumed. */

uint __thiscall UiEffect_HandleTimelineEvent(void *this,int *param_1,float param_2)

{
  float *pfVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  byte bVar5;
  char cVar6;
  uint uVar7;
  int *piVar8;
  int iVar9;
  float *pfVar10;
  undefined2 uVar11;
  int extraout_EDX;
  int extraout_EDX_00;
  bool bVar12;
  bool bVar13;
  float10 fVar14;
  float fVar15;
  float fVar16;
  float local_8;
  float local_4;
  
  uVar7 = *(uint *)((int)param_2 + 8);
  if (0x22 < uVar7) {
    if (uVar7 == 0x10001) {
      if (*(int *)((int)param_2 + 0xc) == 0) {
        if (*(char *)((int)this + 0x60) != '\0') {
          uVar7 = FUN_005175a0(this,param_1,'\0');
          *(undefined1 *)((int)this + 0x60) = 0;
        }
      }
      else if (*(char *)((int)this + 0x60) == '\0') {
        *(undefined1 *)((int)this + 0x60) = 1;
        uVar7 = FUN_005175a0(this,param_1,'\x01');
        return uVar7 & 0xffffff00;
      }
    }
    goto switchD_0051771b_caseD_1;
  }
  if (uVar7 == 0x22) {
    uVar7 = (**(code **)(*param_1 + 0x11c))();
    cVar6 = (char)uVar7;
    if ((cVar6 != *(char *)((int)this + 99)) &&
       (*(char *)((int)this + 99) = cVar6, *(int *)((int)this + 0x2c) == 0)) {
      FUN_005175a0(this,param_1,cVar6);
      uVar7 = (**(code **)(*param_1 + 0x108))(this);
      return uVar7 & 0xffffff00;
    }
    goto switchD_0051771b_caseD_1;
  }
  uVar7 = uVar7 - 10;
  switch(uVar7) {
  case 0:
    uVar7 = *(uint *)((int)this + 0x2c);
    if (((((uVar7 == 4) && (*(int *)((int)param_2 + 0xc) == 1)) ||
         ((uVar7 == 5 && (*(int *)((int)param_2 + 0xc) == 0)))) ||
        ((uVar7 == 7 && (*(int *)((int)param_2 + 0xc) != 1)))) ||
       ((uVar7 == 8 && (*(int *)((int)param_2 + 0xc) != 0)))) {
      uVar7 = FUN_005175a0(this,param_1,*(int **)((int)param_2 + 0x18) == param_1);
      return uVar7 & 0xffffff00;
    }
    if (uVar7 == 6) {
      piVar8 = (int *)(**(code **)(*param_1 + 0x14))();
      iVar9 = (**(code **)(*piVar8 + 0x5c))(param_1);
      uVar7 = FUN_005175a0(this,param_1,iVar9 != 0);
      return uVar7 & 0xffffff00;
    }
    if (uVar7 == 9) {
      piVar8 = (int *)(**(code **)(*param_1 + 0x14))();
      iVar9 = (**(code **)(*piVar8 + 0x5c))(param_1);
      uVar7 = FUN_005175a0(this,param_1,iVar9 == 0);
      return uVar7 & 0xffffff00;
    }
    break;
  case 2:
    fVar15 = *(float *)((int)this + 0x48);
    local_4 = *(float *)((int)this + 0x40);
    fVar16 = DAT_011ce088 - *(float *)((int)this + 0x58);
    pfVar1 = (float *)((int)this + 0x40);
    param_2 = fVar15;
    if (fVar15 != local_4) {
      if (fVar16 < *(float *)((int)this + 0x20) || fVar16 == *(float *)((int)this + 0x20)) {
        fVar16 = fVar16 / *(float *)((int)this + 0x18);
        if (local_4 <= fVar15) {
          local_8 = fVar15 - fVar16;
          bVar13 = *pfVar1 == local_8;
          bVar12 = *pfVar1 < local_8;
        }
        else {
          local_8 = fVar15 + fVar16;
          bVar13 = local_8 == *pfVar1;
          bVar12 = local_8 < *pfVar1;
        }
        pfVar10 = pfVar1;
        if (bVar12 || bVar13) {
          pfVar10 = &local_8;
        }
        *(float *)((int)this + 0x48) = *pfVar10;
      }
      else {
        *(float *)((int)this + 0x48) = local_4;
      }
      param_2 = *(float *)((int)this + 0x48);
      *(float *)((int)this + 0x44) = param_2;
    }
    bVar13 = 0.001 <= ABS(param_2 - local_4) + ABS(param_2 - *(float *)((int)this + 0x44));
    if (!bVar13) {
      *(undefined1 *)((int)this + 0x65) = 0;
      *(float *)((int)this + 0x44) = local_4;
      *(float *)((int)this + 0x48) = local_4;
    }
    fVar16 = *(float *)((int)this + 0x48);
    if (((0.0 <= fVar16) && (fVar16 <= 1.0)) ||
       ((*(int *)((int)this + 0x30) == 2 && (*(char *)((int)this + 0x65) != '\0')))) {
      fVar14 = UiEffect_InterpolateTimelinePosition(this,fVar16);
      iVar9 = extraout_EDX_00;
LAB_00517b60:
      (**(code **)(iVar9 + 0x9c))(param_1,(float)fVar14);
    }
    else {
      if ((fVar15 < 1.0) && (1.0 <= fVar16)) {
        fVar14 = (float10)1;
LAB_00517b5e:
        iVar9 = *(int *)this;
        goto LAB_00517b60;
      }
      if ((0.0 < fVar15) && (fVar16 <= 0.0)) {
        fVar14 = (float10)0;
        goto LAB_00517b5e;
      }
    }
    uVar7 = (**(code **)(*(int *)this + 0x14))();
    if ((uVar7 & 0x200) != 0) {
      uVar7 = (**(code **)(*param_1 + 0x98))();
    }
    if (bVar13) goto LAB_00517be7;
    if (*(char *)((int)this + 0x61) != '\0') {
      if (*(char *)((int)this + 0x62) == '\0') {
        fVar15 = *pfVar1;
        pfVar10 = (float *)((int)this + 0x4c);
        uVar11 = (undefined2)(uVar7 >> 0x10);
        uVar7 = (uint)CONCAT21(uVar11,(fVar15 == *pfVar10) << 6 |
                                      (NAN(fVar15) || NAN(*pfVar10)) << 2 | 2U | fVar15 < *pfVar10)
                << 8;
        if (fVar15 != *pfVar10) {
          if (*(char *)((int)this + 0x61) != '\0') {
            if (*(char *)((int)this + 0x62) != '\0') break;
            fVar15 = *pfVar1;
            pfVar1 = (float *)((int)this + 0x50);
            uVar7 = (uint)CONCAT21(uVar11,(fVar15 == *pfVar1) << 6 |
                                          (NAN(fVar15) || NAN(*pfVar1)) << 2 | 2U | fVar15 < *pfVar1
                                  ) << 8;
            if (fVar15 != *pfVar1) break;
          }
          goto LAB_00517c25;
        }
      }
      uVar7 = *(uint *)((int)this + 0x5c);
      if (uVar7 == 0) {
        fVar15 = *(float *)((int)this + 0x4c);
        fVar16 = *pfVar1;
        uVar7 = (uint)(byte)((fVar16 == fVar15) << 6 | (NAN(fVar16) || NAN(fVar15)) << 2 | 2U |
                            fVar16 < fVar15) << 8;
        if (fVar16 == fVar15) {
          fVar15 = *(float *)((int)this + 0x50);
        }
        *pfVar1 = fVar15;
      }
      else if (uVar7 == 1) {
        *(undefined4 *)((int)this + 0x48) = *(undefined4 *)((int)this + 0x50);
        *(undefined4 *)((int)this + 0x44) = *(undefined4 *)((int)this + 0x50);
      }
LAB_00517be7:
      *(undefined1 *)((int)this + 100) = 1;
      *(float *)((int)this + 0x58) = DAT_011ce088;
      return uVar7 & 0xffffff00;
    }
LAB_00517c25:
    cVar6 = *(char *)((int)this + 100);
    *(undefined1 *)((int)this + 100) = 0;
    uVar7 = (**(code **)(*param_1 + 0x108))(this);
    if (cVar6 != '\0') {
      uVar7 = UiEffect_DispatchCompletion(this);
      return uVar7 & 0xffffff00;
    }
    break;
  case 4:
    uVar7 = (**(code **)(*param_1 + 0x28))();
    iVar9 = *(int *)((int)this + 0x2c);
    if ((iVar9 == 0) || (iVar9 == 1)) {
      bVar5 = (byte)uVar7;
      uVar2 = uVar7 & 1;
      uVar3 = uVar7 & 1;
      uVar4 = uVar7 & 1;
      uVar7 = (**(code **)(*param_1 + 0x11c))();
      if ((char)uVar7 != '\0') {
        uVar7 = *(uint *)((int)this + 0x2c);
        if (uVar7 == 0) {
          uVar7 = FUN_005175a0(this,param_1,bVar5 & 1);
          return uVar7 & 0xffffff00;
        }
        if (uVar7 == 1) {
          uVar7 = FUN_005175a0(this,param_1,uVar2 == 0);
          return uVar7 & 0xffffff00;
        }
        break;
      }
      if (*(int *)((int)this + 0x2c) == 0) {
        if (uVar3 != 0) goto LAB_005179cc;
LAB_00517a47:
        fVar15 = *(float *)((int)this + 0x50);
      }
      else {
        if (uVar4 != 0) goto LAB_00517a47;
LAB_005179cc:
        fVar15 = *(float *)((int)this + 0x4c);
      }
      *(float *)((int)this + 0x40) = fVar15;
      *(float *)((int)this + 0x48) = fVar15;
      if ((0.0 <= fVar15) && (fVar15 <= 1.0)) {
        (**(code **)(*(int *)this + 0x9c))(param_1,fVar15);
        uVar7 = (**(code **)(*(int *)this + 0x14))();
        if ((uVar7 & 0x200) != 0) {
          (**(code **)(*param_1 + 0x98))();
        }
        uVar7 = UiEffect_DispatchCompletion(this);
        return uVar7 & 0xffffff00;
      }
      break;
    }
    if (iVar9 == 2) {
      bVar5 = (byte)(uVar7 >> 1);
      goto LAB_0051785a;
    }
    if (iVar9 != 3) break;
    bVar5 = (byte)(uVar7 >> 1);
    goto LAB_00517858;
  case 6:
    *(int **)((int)this + 0x14) = param_1;
    FUN_00516ca0((int)this);
    uVar7 = *(uint *)((int)this + 0x2c);
    *(undefined4 *)((int)this + 0x40) = *(undefined4 *)((int)this + 0x50);
    switch(uVar7) {
    case 0:
      uVar7 = (**(code **)(*param_1 + 0x28))();
      if ((uVar7 & 1) != 0) goto switchD_0051773c_caseD_7;
      goto switchD_0051773c_caseD_4;
    case 1:
      uVar7 = (**(code **)(*param_1 + 0x28))();
      bVar13 = (uVar7 & 1) == 0;
      break;
    case 2:
      uVar7 = (**(code **)(*param_1 + 0x28))();
      uVar2 = uVar7 & 2;
      goto joined_r0x00517786;
    case 3:
      uVar7 = (**(code **)(*param_1 + 0x28))();
      bVar13 = (uVar7 & 2) == 0;
      break;
    default:
      goto switchD_0051773c_caseD_4;
    case 7:
    case 8:
    case 9:
      goto switchD_0051773c_caseD_7;
    case 10:
      uVar7 = (**(code **)(*param_1 + 0x2c))();
      uVar2 = uVar7 & 4;
joined_r0x00517786:
      if (uVar2 == 0) goto switchD_0051773c_caseD_4;
      goto switchD_0051773c_caseD_7;
    case 0xb:
      uVar7 = (**(code **)(*param_1 + 0x2c))();
      bVar13 = (uVar7 & 4) == 0;
    }
    if (bVar13) {
switchD_0051773c_caseD_7:
      *(undefined4 *)((int)this + 0x40) = *(undefined4 *)((int)this + 0x4c);
    }
switchD_0051773c_caseD_4:
    fVar15 = *(float *)((int)this + 0x40);
    *(float *)((int)this + 0x44) = fVar15;
    *(float *)((int)this + 0x48) = fVar15;
    if ((0.0 <= fVar15) && (fVar15 <= 1.0)) {
      fVar14 = UiEffect_InterpolateTimelinePosition(this,fVar15);
      uVar7 = (**(code **)(extraout_EDX + 0x9c))(param_1,(float)fVar14);
      return uVar7 & 0xffffff00;
    }
    break;
  case 7:
    *(undefined4 *)((int)this + 0x14) = 0;
    return uVar7 & 0xffffff00;
  case 8:
    uVar7 = *(uint *)((int)this + 0x2c);
    if (uVar7 == 10) {
      uVar7 = (**(code **)(*param_1 + 0x2c))();
      uVar7 = FUN_005175a0(this,param_1,(byte)(uVar7 >> 2) & 1);
      return uVar7 & 0xffffff00;
    }
    if (uVar7 != 0xb) break;
    uVar7 = (**(code **)(*param_1 + 0x2c))();
    bVar5 = (byte)(uVar7 >> 2);
LAB_00517858:
    bVar5 = ~bVar5;
LAB_0051785a:
    uVar7 = FUN_005175a0(this,param_1,bVar5 & 1);
    return uVar7 & 0xffffff00;
  case 10:
    uVar7 = (**(code **)(*(int *)this + 0x14))();
    if ((uVar7 & 0x200) != 0) {
      if ((0.0 <= *(float *)((int)this + 0x48)) ||
         ((*(int *)((int)this + 0x30) == 2 && (*(char *)((int)this + 0x65) != '\0')))) {
        uVar7 = (**(code **)(*(int *)this + 0xa0))(param_1,*(undefined4 *)((int)param_2 + 0x18));
      }
      else if ((0.0 < *(float *)((int)this + 0x54)) && (*(float *)((int)this + 0x48) < 0.0)) {
        uVar7 = (**(code **)(*(int *)this + 0xa0))(param_1,*(undefined4 *)((int)param_2 + 0x18));
        *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)this + 0x48);
        return uVar7 & 0xffffff00;
      }
      *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)this + 0x48);
      return uVar7 & 0xffffff00;
    }
  }
switchD_0051771b_caseD_1:
  return uVar7 & 0xffffff00;
}

