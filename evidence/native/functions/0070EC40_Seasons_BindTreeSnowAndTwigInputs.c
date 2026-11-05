/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_BindTreeSnowAndTwigInputs:


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name. Per-tree renderer input binding. With snow enabled, reads template+171
   HasSnowParams; authored endpoints at+160/+164 and scale+168 override the global fallback. Builds
   TreeSnowParams=(template pivot+174, lerp(endpoint0,endpoint1,tree-manager snow
   amount+1E0),scale). Without species params uses fallback initialized atF83730, still
   interpolating its endpoints. Shader handle atmanager+9C is registered as TreeSnowParams in714420.
   Twig texture binding and other seasonal handles share this body; inferred structure types remain
   unnamed. */

void __thiscall Seasons_BindTreeSnowAndTwigInputs(void *this,char param_1)

{
  void *this_00;
  int iVar1;
  int *piVar2;
  undefined2 uVar3;
  uint uVar4;

  this_00 = DAT_011d8530;
  if (PTR_DAT_0115c488 == (undefined *)0x0) {
LAB_0070ef40:
    if ((PTR_DAT_0115c488[0x1d8] != '\0') &&
       (*(uint *)(PTR_DAT_0115c488 + 0x9c) < *(uint *)((int)this_00 + 8))) {
      piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x9c) * 0x10 + *(int *)((int)this_00 + 4));
      *piVar2 = *piVar2 + 1;
      uVar3 = *(undefined2 *)((int)this_00 + 0x12);
      piVar2[3] = 0;
LAB_0070ef63:
      *(undefined2 *)(piVar2 + 1) = uVar3;
    }
  }
  else {
    if ((PTR_DAT_0115c488[0x1da] != '\0') &&
       ((PTR_DAT_0115c488[0x1d8] != '\0' || (PTR_DAT_0115c488[0x1d9] != '\0')))) {
      iVar1 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 200);
      if (iVar1 == 0) {
        if (*(uint *)(PTR_DAT_0115c488 + 0x84) < *(uint *)((int)this_00 + 8)) {
          piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x84) * 0x10 + *(int *)((int)this_00 + 4));
          *piVar2 = *piVar2 + 1;
          *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
          piVar2[3] = 0;
        }
        if (*(uint *)(PTR_DAT_0115c488 + 0x88) < *(uint *)((int)this_00 + 8)) {
          piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x88) * 0x10 + *(int *)((int)this_00 + 4));
          *piVar2 = *piVar2 + 1;
          *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
          piVar2[3] = 0;
        }
        if (*(uint *)(PTR_DAT_0115c488 + 0x8c) < *(uint *)((int)this_00 + 8)) {
          piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x8c) * 0x10 + *(int *)((int)this_00 + 4));
          *piVar2 = *piVar2 + 1;
          *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
          piVar2[3] = (int)&DAT_011d30f4;
        }
      }
      else {
        if (param_1 == '\0') {
          iVar1 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 200);
          FUN_005f78c0(this_00,*(uint *)(PTR_DAT_0115c488 + 0x84),iVar1);
          iVar1 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0xe0);
          uVar4 = *(uint *)(PTR_DAT_0115c488 + 0x88);
        }
        else {
          iVar1 = FUN_00722ed0(*(int *)((int)this + 0x4b0) + 0x110);
          FUN_005f78c0(this_00,*(uint *)(PTR_DAT_0115c488 + 0x84),iVar1);
          uVar4 = *(uint *)(PTR_DAT_0115c488 + 0x88);
          iVar1 = 0;
        }
        FUN_005f78c0(this_00,uVar4,iVar1);
        if (*(uint *)(PTR_DAT_0115c488 + 0x8c) < *(uint *)((int)this_00 + 8)) {
          piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x8c) * 0x10 + *(int *)((int)this_00 + 4));
          *piVar2 = *piVar2 + 1;
          *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
          piVar2[3] = (int)&DAT_0115c474;
        }
      }
    }
    if ((PTR_DAT_0115c488 == (undefined *)0x0) || (PTR_DAT_0115c488[0x1dc] == '\0'))
    goto LAB_0070ef40;
    if (PTR_DAT_0115c488[0x1d8] != '\0') {
      iVar1 = *(int *)((int)this + 0x4b0);
                    /* Species snow-data gate: when template HasSnowParams is set, interpolate
                       authored endpoints and keep authored scale. Otherwise use the native
                       (-0.2,0.1,4) endpoint/scale fallback. Both paths bind a per-tree dynamic
                       value. */
      if (*(char *)(iVar1 + 0x171) == '\0') {
        if ((_DAT_011d30f0 & 2) == 0) {
          _DAT_011d30f0 = _DAT_011d30f0 | 2;
        }
        _DAT_011d30d0 = *(undefined4 *)(iVar1 + 0x174);
        fRam011d30d4 = (fRam011d3124 - _DAT_011d3120) * *(float *)(PTR_DAT_0115c488 + 0x1e0) +
                       _DAT_011d3120;
        uRam011d30d8 = uRam011d3128;
        uRam011d30dc = _DAT_011d30d0;
        if (*(uint *)(PTR_DAT_0115c488 + 0x9c) < *(uint *)((int)this_00 + 8)) {
          piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x9c) * 0x10 + *(int *)((int)this_00 + 4));
          *piVar2 = *piVar2 + 1;
          *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
          piVar2[3] = (int)&DAT_011d30d0;
        }
        goto LAB_0070ef6c;
      }
      if ((_DAT_011d30f0 & 1) == 0) {
        _DAT_011d30f0 = _DAT_011d30f0 | 1;
      }
      fRam011d30e4 = (*(float *)(iVar1 + 0x164) - *(float *)(iVar1 + 0x160)) *
                     *(float *)(PTR_DAT_0115c488 + 0x1e0) + *(float *)(iVar1 + 0x160);
      uRam011d30e8 = *(undefined4 *)(iVar1 + 0x168);
      _DAT_011d30e0 = *(undefined4 *)(iVar1 + 0x174);
      uRam011d30ec = _DAT_011d30e0;
      if (*(uint *)((int)this_00 + 8) <= *(uint *)(PTR_DAT_0115c488 + 0x9c)) goto LAB_0070ef6c;
      piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x9c) * 0x10 + *(int *)((int)this_00 + 4));
      *piVar2 = *piVar2 + 1;
      uVar3 = *(undefined2 *)((int)this_00 + 0x12);
      piVar2[3] = (int)&DAT_011d30e0;
      goto LAB_0070ef63;
    }
  }
LAB_0070ef6c:
  if ((PTR_DAT_0115c488 == (undefined *)0x0) ||
     (((PTR_DAT_0115c488[0x1dd] == '\0' ||
       ((PTR_DAT_0115c488[0x1d8] == '\0' && (PTR_DAT_0115c488[0x1d9] == '\0')))) &&
      ((PTR_DAT_0115c488[0x1da] == '\0' ||
       ((PTR_DAT_0115c488[0x1d8] == '\0' && (PTR_DAT_0115c488[0x1d9] == '\0')))))))) {
    if ((PTR_DAT_0115c488[0x1d8] == '\0') && (PTR_DAT_0115c488[0x1d9] == '\0')) {
      return;
    }
    if (*(uint *)(PTR_DAT_0115c488 + 0x90) < *(uint *)((int)this_00 + 8)) {
      piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x90) * 0x10 + *(int *)((int)this_00 + 4));
      *piVar2 = *piVar2 + 1;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar2[3] = 0;
    }
    if (*(uint *)((int)this_00 + 8) <= *(uint *)(PTR_DAT_0115c488 + 0x94)) goto LAB_0070f0e4;
    piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x94) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar2 = *piVar2 + 1;
    *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
  }
  else {
    iVar1 = *(int *)((int)this + 0x4b0);
    uVar4 = *(uint *)(PTR_DAT_0115c488 + 0x90);
    if (*(char *)(iVar1 + 0x170) != '\0') {
      if (uVar4 < *(uint *)((int)this_00 + 8)) {
        piVar2 = (int *)(uVar4 * 0x10 + *(int *)((int)this_00 + 4));
        *piVar2 = *piVar2 + 1;
        *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
        piVar2[3] = iVar1 + 0x130;
      }
      iVar1 = *(int *)((int)this + 0x4b0);
      if (*(uint *)(PTR_DAT_0115c488 + 0x94) < *(uint *)((int)this_00 + 8)) {
        piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x94) * 0x10 + *(int *)((int)this_00 + 4));
        *piVar2 = *piVar2 + 1;
        *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
        piVar2[3] = iVar1 + 0x140;
      }
      iVar1 = *(int *)((int)this + 0x4b0);
      if (*(uint *)((int)this_00 + 8) <= *(uint *)(PTR_DAT_0115c488 + 0x98)) {
        return;
      }
      piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x98) * 0x10 + *(int *)((int)this_00 + 4));
      *piVar2 = *piVar2 + 1;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar2[3] = iVar1 + 0x150;
      return;
    }
    if (uVar4 < *(uint *)((int)this_00 + 8)) {
      piVar2 = (int *)(uVar4 * 0x10 + *(int *)((int)this_00 + 4));
      *piVar2 = *piVar2 + 1;
      *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
      piVar2[3] = 0;
    }
    if (*(uint *)((int)this_00 + 8) <= *(uint *)(PTR_DAT_0115c488 + 0x94)) goto LAB_0070f0e4;
    piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x94) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar2 = *piVar2 + 1;
    *(undefined2 *)(piVar2 + 1) = *(undefined2 *)((int)this_00 + 0x12);
  }
  piVar2[3] = 0;
LAB_0070f0e4:
  if (*(uint *)(PTR_DAT_0115c488 + 0x98) < *(uint *)((int)this_00 + 8)) {
    piVar2 = (int *)(*(uint *)(PTR_DAT_0115c488 + 0x98) * 0x10 + *(int *)((int)this_00 + 4));
    *piVar2 = *piVar2 + 1;
    uVar3 = *(undefined2 *)((int)this_00 + 0x12);
    piVar2[3] = 0;
    *(undefined2 *)(piVar2 + 1) = uVar3;
  }
  return;
}


