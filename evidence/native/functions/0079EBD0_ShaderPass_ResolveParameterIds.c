/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: render-pass post-load reference resolution. Resolves vertex/pixel stage references,
   parameter IDs, dynamic state names, 16 texture slots and two parameter arrays after package read.
   The bytecode and authored pass state are separate inputs. */

void __thiscall ShaderPass_ResolveParameterIds(void *this,void *param_1,void *param_2)

{
  int iVar1;
  void *pvVar2;
  void *this_00;
  int *piVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  int iVar7;
  uint *puVar8;
  undefined4 *puVar9;
  
  if (param_1 != (void *)0x0) {
    piVar3 = FUN_0079ab70(param_1,*(int *)((int)this + 0x28));
    *(int **)((int)this + 0x2c) = piVar3;
    piVar3 = FUN_0079ab70(param_1,*(int *)((int)this + 0x24));
    *(int **)((int)this + 0x30) = piVar3;
  }
  pvVar2 = DAT_011d8530;
  puVar8 = (uint *)((int)this + 8);
  iVar7 = 4;
  do {
    if (*puVar8 == 0) {
      *puVar8 = 0xffffffff;
    }
    else {
      uVar4 = FUN_0079a500(pvVar2,*puVar8,1,6);
      *puVar8 = uVar4;
    }
    puVar8 = puVar8 + 1;
    iVar7 = iVar7 + -1;
  } while (iVar7 != 0);
  if (*(uint *)((int)this + 0x18) == 0) {
    *(undefined4 *)((int)this + 0x18) = 0xffffffff;
  }
  else {
    uVar5 = FUN_0079a500(pvVar2,*(uint *)((int)this + 0x18),1,6);
    *(undefined4 *)((int)this + 0x18) = uVar5;
  }
  uVar4 = 0;
  if (*(int *)((int)this + 0x3c) != 0) {
    iVar7 = 0;
    do {
      iVar1 = *(int *)((int)this + 0x40);
      uVar5 = FUN_0079a500(pvVar2,*(uint *)(iVar1 + 4 + iVar7),1,1);
      uVar4 = uVar4 + 1;
      *(undefined4 *)(iVar1 + iVar7 + 4) = uVar5;
      iVar7 = iVar7 + 0xc;
    } while (uVar4 < *(uint *)((int)this + 0x3c));
  }
  uVar4 = 0;
  if (*(int *)((int)this + 200) != 0) {
    iVar7 = 0;
    do {
      iVar1 = *(int *)((int)this + 0xcc);
      uVar5 = FUN_0079a500(pvVar2,*(uint *)(iVar1 + 4 + iVar7),1,1);
      uVar4 = uVar4 + 1;
      *(undefined4 *)(iVar1 + iVar7 + 4) = uVar5;
      iVar7 = iVar7 + 0xc;
    } while (uVar4 < *(uint *)((int)this + 200));
  }
  uVar4 = 0;
  puVar9 = (undefined4 *)((int)this + 0x48);
  do {
    *puVar9 = 0;
    if ((*(uint *)((int)this + 0x44) & 1 << ((byte)uVar4 & 0x1f)) == 0) {
      puVar9[0x32] = 0xffffffff;
    }
    else {
      if (puVar9[0x10] != 0) {
        uVar5 = FUN_0079abd0(param_2,puVar9[0x10]);
        *puVar9 = uVar5;
      }
      uVar5 = FUN_0079a500(pvVar2,puVar9[0x22],1,5);
      puVar9[0x32] = uVar5;
    }
    this_00 = DAT_011d8530;
    uVar4 = uVar4 + 1;
    puVar9 = puVar9 + 1;
  } while (uVar4 < 0x10);
  iVar1 = *(int *)((int)this + 0x16c);
  pvVar2 = DAT_011d8530;
  for (iVar7 = *(int *)((int)this + 0x168); DAT_011d8530 = pvVar2, iVar7 != iVar1;
      iVar7 = iVar7 + 0x1c) {
    iVar6 = FUN_0079a3c0(this_00,*(uint *)(iVar7 + 0xc));
    *(int *)(iVar7 + 0x10) = iVar6;
    pvVar2 = DAT_011d8530;
  }
  iVar1 = *(int *)((int)this + 0x17c);
  for (iVar7 = *(int *)((int)this + 0x178); iVar7 != iVar1; iVar7 = iVar7 + 0x1c) {
    iVar6 = FUN_0079a3c0(pvVar2,*(uint *)(iVar7 + 0xc));
    *(int *)(iVar7 + 0x10) = iVar6;
  }
  return;
}

