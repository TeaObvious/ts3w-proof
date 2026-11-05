/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67 original instruction comparison; 2305 complete owned bytes/804 actual Listing
   instructions. No runtime execution.
   ECX manager and six stack words, RET0x18. Rejects negative supplied level and selected
   unsupported roof types, dispatches constructors using the original type table and allocation
   label Lot/RoofManager/CreatingNewRoof. A constructed nonnull roof receives selected virtual
   updates, enters per-level manager record and ID->level index, then call00B9922A invokes
   collision-shape producer00B96E00. Constructor internals/concrete virtual effects remain separate.
   This selected producer proves call order, not complete renderer visibility or every roof-type
   behavior.
   
   Analyst note (PC1.67 construction persistence contract): Counter semantics verified at
   B98988..A8: suppliedIDFFFFFFFF increments manager+3C first; otherwise observe suppliedID. CMP/JL
   selects signed maximum of counter and suppliedID before roof-type validation. Thus +3C is
   last-issuedID, not next-freeID; deleting a roof does not rewind it. Counter may advance even when
   a later constructor/type path fails. Existing complete construction/shape annotations retained.
    */

int __thiscall
RoofManager_ConstructAndPublishRoof
          (void *this,undefined4 *param_1,undefined4 *param_2,int *param_3,undefined4 param_4,
          undefined4 param_5,uint param_6)

{
  undefined4 *puVar1;
  bool bVar2;
  char cVar3;
  int iVar4;
  void *pvVar5;
  undefined4 *puVar6;
  int *piVar7;
  int *piVar8;
  int **ppiVar9;
  int *piVar10;
  undefined4 **ppuVar11;
  
  piVar7 = param_3;
  if ((param_3 != (int *)0x0) && (bVar2 = RoofType_IsPagoda(param_3[0x22]), bVar2)) {
    FUN_00b988e0(DAT_011ed389);
  }
  puVar1 = param_1;
  if ((int)param_1[2] < 0) {
    return -1;
  }
  piVar10 = (int *)param_6;
  if (param_6 == 0xffffffff) {
    *(int *)((int)this + 0x3c) = *(int *)((int)this + 0x3c) + 1;
    piVar10 = *(int **)((int)this + 0x3c);
  }
  param_3 = piVar10;
  ppiVar9 = &param_3;
  if ((int)piVar10 <= *(int *)((int)this + 0x3c)) {
    ppiVar9 = (int **)((int)this + 0x3c);
  }
  *(int **)((int)this + 0x3c) = *ppiVar9;
  param_3 = (int *)0x0;
  if (piVar7[0x22] == 0x10) {
    return -1;
  }
  switch(piVar7[0x22]) {
  case 1:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 != (void *)0x0) {
      puVar6 = FUN_00bf68e0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
      break;
    }
    goto LAB_00b991a5;
  case 2:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf9a90(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 3:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf9850(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 4:
    pvVar5 = (void *)FUN_004e4500(0x80,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) {
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00bf8180(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    }
    FUN_00874fb0(&param_3,puVar6);
    if (param_3 == (int *)0x0) goto switchD_00b989cd_caseD_f;
    cVar3 = (**(code **)(*param_3 + 0x6c))();
    if (cVar3 == '\0') {
      iVar4 = FUN_00c8bcc0(DAT_011ee034,5);
      puVar6 = (undefined4 *)0x0;
      if (iVar4 != 0) {
        pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
        if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
        puVar6 = FUN_00bf69e0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,iVar4);
      }
      break;
    }
    goto LAB_00b991b1;
  case 5:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf69e0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 6:
    pvVar5 = (void *)FUN_004e4500(0x8c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf9950(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 7:
    pvVar5 = (void *)FUN_004e4500(0x2d0,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf9b90(pvVar5,*(undefined4 *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 8:
    pvVar5 = (void *)FUN_004e4500(0x2d0,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf9bf0(pvVar5,*(undefined4 *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 9:
    goto LAB_00b99174;
  case 10:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf6970(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0xb:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf9b20(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0xc:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf98e0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0xd:
    goto LAB_00b98c83;
  case 0xe:
    pvVar5 = (void *)FUN_004e4500(0xf4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bf9a00(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  default:
    goto switchD_00b989cd_caseD_f;
  case 0x11:
    pvVar5 = (void *)FUN_004e4500(0x10c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) {
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00bf8c10(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    }
    FUN_00874fb0(&param_3,puVar6);
    if (param_3 == (int *)0x0) goto switchD_00b989cd_caseD_f;
    cVar3 = (**(code **)(*param_3 + 0x6c))();
    if (cVar3 != '\0') goto LAB_00b991b1;
    piVar7 = (int *)FUN_00c8bcc0(DAT_011ee034,0xd);
    puVar6 = (undefined4 *)0x0;
    if (piVar7 == (int *)0x0) break;
LAB_00b98c83:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 != (void *)0x0) {
      puVar6 = FUN_00bf74e0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
      break;
    }
    goto LAB_00b991a5;
  case 0x12:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bfa1b0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0x13:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bfa1e0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0x14:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bfa250(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0x15:
    goto LAB_00b98e17;
  case 0x16:
    goto LAB_00b98e85;
  case 0x17:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bfa410(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0x18:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bfa440(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0x19:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) goto LAB_00b991a5;
    puVar6 = FUN_00bfa4b0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    break;
  case 0x1a:
    goto LAB_00b98f33;
  case 0x1b:
    pvVar5 = (void *)FUN_004e4500(0x80,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) {
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00bfa4e0(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    }
    FUN_00874fb0(&param_3,puVar6);
    if (param_3 == (int *)0x0) goto switchD_00b989cd_caseD_f;
    cVar3 = (**(code **)(*param_3 + 0x6c))();
    if (cVar3 != '\0') goto LAB_00b991b1;
    piVar7 = (int *)FUN_00c8bcc0(DAT_011ee034,0x15);
    puVar6 = (undefined4 *)0x0;
    if (piVar7 == (int *)0x0) break;
LAB_00b98e17:
    pvVar5 = (void *)FUN_004e4500(0x7c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 != (void *)0x0) {
      puVar6 = FUN_00bfa210(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
      break;
    }
    goto LAB_00b991a5;
  case 0x1c:
    pvVar5 = (void *)FUN_004e4500(0x10c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) {
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00bfa510(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    }
    FUN_00874fb0(&param_3,puVar6);
    if (param_3 == (int *)0x0) goto switchD_00b989cd_caseD_f;
    cVar3 = (**(code **)(*param_3 + 0x6c))();
    if (cVar3 != '\0') goto LAB_00b991b1;
    piVar7 = (int *)FUN_00c8bcc0(DAT_011ee034,0x1a);
    puVar6 = (undefined4 *)0x0;
    if (piVar7 == (int *)0x0) break;
LAB_00b98f33:
    pvVar5 = (void *)FUN_004e4500(0xe4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 != (void *)0x0) {
      puVar6 = FUN_00bfa470(pvVar5,*(int *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
      break;
    }
    goto LAB_00b991a5;
  case 0x1d:
    pvVar5 = (void *)FUN_004e4500(0x83c,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) {
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00bfa590(pvVar5,*(undefined4 *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    }
    FUN_00874fb0(&param_3,puVar6);
    if (param_3 == (int *)0x0) goto switchD_00b989cd_caseD_f;
    cVar3 = (**(code **)(*param_3 + 0x6c))();
    if (cVar3 != '\0') goto LAB_00b991b1;
    piVar7 = (int *)FUN_00c8bcc0(DAT_011ee034,0x16);
    puVar6 = (undefined4 *)0x0;
    if (piVar7 == (int *)0x0) break;
LAB_00b98e85:
    pvVar5 = (void *)FUN_004e4500(0x574,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 != (void *)0x0) {
      puVar6 = FUN_00bfa280(pvVar5,*(undefined4 *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
      break;
    }
    goto LAB_00b991a5;
  case 0x1e:
    pvVar5 = (void *)FUN_004e4500(0x7d4,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) {
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00bfa540(pvVar5,*(undefined4 *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    }
    FUN_00874fb0(&param_3,puVar6);
    if (param_3 == (int *)0x0) goto switchD_00b989cd_caseD_f;
    cVar3 = (**(code **)(*param_3 + 0x6c))();
    if (cVar3 != '\0') goto LAB_00b991b1;
    piVar7 = (int *)FUN_00c8bcc0(DAT_011ee034,9);
    puVar6 = (undefined4 *)0x0;
    if (piVar7 == (int *)0x0) break;
LAB_00b99174:
    pvVar5 = (void *)FUN_004e4500(0x514,"Lot/RoofManager/CreatingNewRoof",0);
    if (pvVar5 == (void *)0x0) {
LAB_00b991a5:
      puVar6 = (undefined4 *)0x0;
    }
    else {
      puVar6 = FUN_00bf9e50(pvVar5,*(undefined4 *)((int)this + 8),piVar10,puVar1,param_2,piVar7);
    }
  }
  FUN_00874fb0(&param_3,puVar6);
LAB_00b991b1:
  piVar7 = param_3;
  if (param_3 != (int *)0x0) {
    (**(code **)(*param_3 + 0x24))(param_4);
    (**(code **)(*piVar7 + 4))();
    (**(code **)(*piVar7 + 0x20))();
    iVar4 = puVar1[2];
    ppuVar11 = &param_2;
    param_1 = piVar10;
    pvVar5 = (void *)FUN_00b969b0((void *)(iVar4 * 0x20 + *(int *)((int)this + 0xc)),
                                  (uint *)&param_1);
    FUN_008753c0(pvVar5,(int *)ppuVar11);
    param_1 = piVar10;
    piVar8 = (int *)FUN_00654810((void *)((int)this + 0x1c),(uint *)&param_1);
    *piVar8 = iVar4;
    RoofManager_CreateAndRegisterCollisionShape(this,piVar7);
    FUN_007462e0((int *)&param_2);
    return (int)piVar10;
  }
switchD_00b989cd_caseD_f:
  FUN_007462e0((int *)&param_3);
  return -1;
}

