/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 selected boundary: mutable candidate pass,
   actor/paired/object context and driver parameter reads generate 64-bit age bits (EDX:EAX);
   caller007F83C0 repeats while pass<5. Several state-dependent branches advance pass more than
   once; this is not five unconditional independent queries. Exact whole age/species mapping is not
   asserted from call-site naming; full instructions are exported for follow-up. */

longlong SacsClip_SelectAgeCandidateBits
                   (void *param_1,int param_2,char param_3,char param_4,int *param_5)

{
  bool bVar1;
  bool bVar2;
  bool bVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  longlong lVar9;
  
  iVar5 = 0;
  bVar1 = false;
  bVar3 = false;
  bVar2 = false;
  if (param_2 == 0) {
    iVar7 = 0x7c3e1811;
    iVar8 = -0x3ebecca5;
    iVar6 = 0x22e379c2;
    iVar4 = 0x1dc85dfc;
LAB_007f5bd7:
    bVar2 = bVar3;
    _param_4 = SacsContext_ReadParameterHash(param_1,iVar4,0);
    if (iVar7 == 0) goto LAB_007f5c03;
    param_2 = SacsContext_ReadParameterHash(param_1,iVar7,0);
  }
  else {
    switch(*(undefined4 *)(*(int *)(param_2 + 0x20) + 0x2c)) {
    case 0x50c5d65:
    case 0x50c5d68:
      param_3 = '\x01';
      bVar1 = true;
      goto LAB_007f5ba4;
    case 0x50c5d66:
      iVar5 = 0x7c3e1811;
      iVar8 = 0x22e379c2;
      break;
    case 0x50c5d67:
      iVar5 = 0x1dc85dfc;
      iVar8 = -0x3ebecca5;
      break;
    default:
      iVar5 = 0;
      iVar8 = 0;
      param_4 = '\x01';
    }
    if (param_3 != '\0') {
LAB_007f5ba4:
      iVar7 = 0x7c3e1811;
      iVar8 = -0x3ebecca5;
      iVar6 = 0x22e379c2;
      iVar4 = 0x1dc85dfc;
      bVar3 = bVar1;
      goto LAB_007f5bd7;
    }
    iVar7 = 0;
    iVar6 = 0;
    if (param_4 != '\0') {
      iVar8 = -0x3ebecca5;
      iVar4 = 0x1dc85dfc;
      goto LAB_007f5bd7;
    }
    iVar4 = iVar5;
    if (iVar5 != 0) goto LAB_007f5bd7;
    _param_4 = 0;
LAB_007f5c03:
    param_2 = 0;
  }
  if (iVar8 == 0) {
    iVar8 = 0;
  }
  else {
    iVar8 = SacsContext_ReadParameterHash(param_1,iVar8,0);
  }
  if (iVar6 == 0) {
    iVar6 = 0;
  }
  else {
    iVar6 = SacsContext_ReadParameterHash(param_1,iVar6,0);
  }
  if ((param_3 == '\0') || (iVar5 == 0x1dc85dfc)) {
    bVar1 = true;
  }
  else {
    bVar1 = false;
  }
  if (param_3 == '\x01') {
    iVar5 = *param_5;
    if (bVar1) {
      if (iVar5 == 1) {
        param_2 = -0x5beca009;
      }
      else {
        iVar7 = _param_4;
        if (iVar5 == 2) {
joined_r0x007f5ccc:
          param_2 = iVar7;
          if (iVar6 == 0x6f93328) {
            param_2 = -0x5beca009;
            iVar6 = 0x3a97a3bb;
          }
        }
        else if (iVar5 == 3) {
          _param_4 = -0x5beca009;
        }
      }
    }
    else if (iVar5 == 1) {
      _param_4 = -0x5beca009;
    }
    else if (iVar5 == 2) {
      _param_4 = param_2;
      if (iVar8 == 0x6f93328) {
        _param_4 = -0x5beca009;
        iVar8 = 0x3a97a3bb;
      }
    }
    else if (iVar5 == 3) {
      param_2 = -0x5beca009;
      iVar7 = param_2;
      goto joined_r0x007f5ccc;
    }
    if (iVar5 == 4) {
      _param_4 = -0x5beca009;
      param_2 = -0x5beca009;
      if (iVar8 == 0x6f93328) {
        iVar8 = 0x3a97a3bb;
      }
      if (iVar6 == 0x6f93328) {
        iVar6 = 0x3a97a3bb;
      }
      if (bVar2) {
        iVar8 = -0x1a3bb1a0;
        iVar6 = -0x1a3bb1a0;
        *param_5 = 5;
        goto LAB_007f5d67;
      }
    }
  }
  else {
    iVar5 = *param_5;
    if (iVar5 == 1) {
LAB_007f5d27:
      _param_4 = -0x5beca009;
    }
    else if ((iVar5 == 2) && (iVar8 == 0x6f93328)) {
      iVar8 = 0x3a97a3bb;
      goto LAB_007f5d27;
    }
    if (param_3 == '\0') {
      if (iVar5 == 0) {
        *param_5 = 1;
      }
      else if (iVar5 == 1) {
        *param_5 = (-(uint)(iVar8 != 0x6f93328) & 3) + 2;
      }
      else {
        *param_5 = 5;
      }
      goto LAB_007f5d67;
    }
  }
  *param_5 = iVar5 + 1;
LAB_007f5d67:
  iVar5 = FUN_007f5a90(param_2,iVar6);
  iVar8 = FUN_007f5a90(_param_4,iVar8);
  lVar9 = FUN_00579b90(iVar8,iVar5);
  return lVar9;
}

