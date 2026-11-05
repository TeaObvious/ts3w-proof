/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. ECX shadow owner; AL success. Writes mutually exclusive option
   bytes+8/+9 from shader-library capability DWORD+44:400->0/1; otherwise200->1/0; neither leaves
   prior cleared0/0. Rebuild caller70BDD0 supplies cleared initial flags, then enabled+A true.
   Target configuration reads ShadowMapSize, ShadowMapAllowNullColor and
   ShadowMapForceDF16Available. No FSAALevel load in this function. Target allocation/capability
   failure is retained; option flags may already be written before failure. Capability104 contains
   neither200 nor400, hence zero shadow-option contribution after this rebuild. */

bool __fastcall ShadowMap_CreateTargetsAndChooseOptions(int param_1)

{
  char cVar1;
  char cVar2;
  bool bVar3;
  char cVar4;
  uint uVar5;
  void *this;
  undefined4 *puVar6;
  int iVar7;
  int iVar8;
  undefined4 uVar9;
  int *this_00;
  int *piVar10;
  int *local_10;
  int iStack_c;
  
  uVar5 = *(uint *)(param_1 + 0x14);
  piVar10 = (int *)0x0;
  if (uVar5 == 0) {
    uVar5 = FUN_0058af00((short *)PTR_u_Config_01150ab0,L"ShadowMapSize",0x800);
  }
  if ((_DAT_011d30bc & 1) == 0) {
    DAT_011d30b8 = *(uint *)(param_1 + 0x14);
    _DAT_011d30bc = _DAT_011d30bc | 1;
    if (DAT_011d30b8 == 0) {
      DAT_011d30b8 = 0x100;
    }
  }
  cVar1 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"ShadowMapAllowNullColor",1);
  cVar2 = FUN_0058ae30((short *)PTR_u_Config_01150ab0,L"ShadowMapForceDF16Available",1);
  this = (void *)FUN_00617780();
  cVar4 = '\0';
  if ((*(uint *)(DAT_011d853c + 0x44) & 0x400) != 0) {
    *(undefined1 *)(param_1 + 8) = 0;
    *(undefined1 *)(param_1 + 9) = 1;
    puVar6 = (undefined4 *)FUN_004e4500(0x28,"Renderer/RenderSystem/ShadowMapTarget",0);
    if (puVar6 == (undefined4 *)0x0) {
      local_10 = (int *)0x0;
    }
    else {
      local_10 = FUN_006187a0(puVar6);
      if (local_10 != (int *)0x0) {
        (**(code **)(*local_10 + 4))();
      }
    }
    puVar6 = (undefined4 *)FUN_004e4500(0x34,"Renderer/RenderSystem/ShadowMapDepthTexture",0);
    if (puVar6 == (undefined4 *)0x0) {
      piVar10 = (int *)0x0;
    }
    else {
      piVar10 = Texture_Construct(puVar6);
      if (piVar10 != (int *)0x0) {
        (**(code **)(*piVar10 + 4))();
      }
    }
    bVar3 = FUN_0060fc30(DAT_011cfcc8,DAT_011cff40,2,3);
    iVar7 = bVar3 + 0x97;
    if (cVar2 == '\0') {
      bVar3 = FUN_0060fc30(DAT_011cfcc8,*(undefined4 *)(&DAT_011cfce0 + iVar7 * 4),2,3);
      cVar4 = '\x01';
      if (!bVar3) goto LAB_0070c2ca;
    }
    bVar3 = FUN_0070bd60();
    iVar8 = FUN_0070bca0();
    if ((!bVar3) && (cVar4 = FUN_006182f0(local_10,1,1,iVar8,1), cVar4 == '\0')) {
LAB_0070c2ca:
      if (piVar10 != (int *)0x0) {
        (**(code **)(*piVar10 + 8))();
      }
      if (local_10 != (int *)0x0) {
        (**(code **)(*local_10 + 8))();
      }
      return false;
    }
    if (DAT_011d30b8 <= uVar5) {
      do {
        if (bVar3) {
          cVar4 = FUN_006182f0(local_10,uVar5,uVar5,iVar8,1);
          if ((cVar4 != '\0') &&
             (uVar9 = Texture_Create2D(piVar10,uVar5,uVar5,1,iVar7,0x10), (char)uVar9 != '\0'))
          goto LAB_0070c02d;
          (**(code **)(*local_10 + 0x10))();
        }
        else {
          uVar9 = Texture_Create2D(piVar10,uVar5,uVar5,1,iVar7,0x10);
          if ((char)uVar9 != '\0') goto LAB_0070c05b;
        }
        FUN_0061a1d0((int)piVar10);
        uVar5 = uVar5 >> 1;
      } while (DAT_011d30b8 <= uVar5);
LAB_0070c031:
      if (piVar10 != (int *)0x0) {
        (**(code **)(*piVar10 + 8))();
      }
      if (local_10 == (int *)0x0) {
        return false;
      }
      (**(code **)(*local_10 + 8))();
      return false;
    }
LAB_0070c02d:
    if (cVar4 == '\0') goto LAB_0070c031;
LAB_0070c05b:
    FUN_00617cd0(this,*(uint *)(param_1 + 0xc),local_10);
    FUN_00617da0(this,*(uint *)(param_1 + 0x10),piVar10);
    if (piVar10 != (int *)0x0) {
      (**(code **)(*piVar10 + 8))();
    }
    if (local_10 != (int *)0x0) {
      (**(code **)(*local_10 + 8))();
      *(uint *)(param_1 + 4) = uVar5;
      return true;
    }
    goto LAB_0070c2b9;
  }
  if ((*(uint *)(DAT_011d853c + 0x44) & 0x200) == 0) {
    return false;
  }
  *(undefined1 *)(param_1 + 8) = 1;
  *(undefined1 *)(param_1 + 9) = 0;
  puVar6 = (undefined4 *)FUN_004e4500(0x28,"Renderer/RenderSystem/ShadowMapTarget",0);
  if (puVar6 == (undefined4 *)0x0) {
    this_00 = (int *)0x0;
  }
  else {
    this_00 = FUN_006187a0(puVar6);
    if (this_00 != (int *)0x0) {
      (**(code **)(*this_00 + 4))();
    }
  }
  puVar6 = (undefined4 *)FUN_004e4500(0x34,"Renderer/RenderSystem/ShadowMapDepthTexture",0);
  if ((puVar6 != (undefined4 *)0x0) && (piVar10 = Texture_Construct(puVar6), piVar10 != (int *)0x0))
  {
    (**(code **)(*piVar10 + 4))();
  }
  iStack_c = 0x99;
  if ((cVar1 == '\0') || (bVar3 = FUN_0060fc30(DAT_011cfcc8,DAT_011cff44,1,1), !bVar3)) {
    cVar4 = '\0';
LAB_0070c167:
    iStack_c = FUN_0070bca0();
    if (iStack_c == 0) {
      if (piVar10 != (int *)0x0) {
        (**(code **)(*piVar10 + 8))();
      }
      if (this_00 == (int *)0x0) {
        return false;
      }
      (**(code **)(*this_00 + 8))();
      return false;
    }
  }
  else {
    cVar4 = FUN_006182f0(this_00,uVar5,uVar5,0x99,1);
    if (cVar4 == '\0') goto LAB_0070c167;
    (**(code **)(*this_00 + 0x10))();
  }
  if (DAT_011d30b8 <= uVar5) {
    do {
      bVar3 = FUN_0060fc30(DAT_011cfcc8,*(undefined4 *)(&DAT_011cfce0 + iStack_c * 4),1,1);
      if ((((bVar3) && (bVar3 = FUN_0060fc30(DAT_011cfcc8,DAT_011cff14,2,3), bVar3)) &&
          (cVar4 = FUN_006182f0(this_00,uVar5,uVar5,iStack_c,1), cVar4 != '\0')) &&
         (uVar9 = Texture_Create2D(piVar10,uVar5,uVar5,1,0x8d,0x10), (char)uVar9 != '\0'))
      goto LAB_0070c27a;
      cVar4 = '\0';
      (**(code **)(*this_00 + 0x10))();
      FUN_0061a1d0((int)piVar10);
      uVar5 = uVar5 >> 1;
    } while (DAT_011d30b8 <= uVar5);
  }
  if (cVar4 == '\0') {
    if (piVar10 != (int *)0x0) {
      (**(code **)(*piVar10 + 8))();
    }
    if (this_00 == (int *)0x0) {
      return false;
    }
    (**(code **)(*this_00 + 8))();
    return false;
  }
LAB_0070c27a:
  FUN_00617cd0(this,*(uint *)(param_1 + 0xc),this_00);
  FUN_00617da0(this,*(uint *)(param_1 + 0x10),piVar10);
  if (piVar10 != (int *)0x0) {
    (**(code **)(*piVar10 + 8))();
  }
  if (this_00 != (int *)0x0) {
    (**(code **)(*this_00 + 8))();
  }
LAB_0070c2b9:
  *(uint *)(param_1 + 4) = uVar5;
  return true;
}

