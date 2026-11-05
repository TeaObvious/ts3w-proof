/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reference-counted
   resource pointers at +0x28,+0x2c,+0x30. Inputs are primary, secondary, supplemental and low-byte
   replaceNull flag. Installed resources produce parallel runtime flag arrays +0x58,+0x68,+0x48 by
   copying each record+8. Rebuilds extended resource. Returns full EAX 0/1 according to any base
   resource present. */

undefined4 __thiscall
FootprintComponent_SetResourceLayers
          (void *this,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3,void *param_4)

{
  undefined4 *_Src;
  int *piVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  if (param_1 != *(undefined4 **)((int)this + 0x28)) {
    if (param_1 == (undefined4 *)0x0) {
      if ((char)param_4 != '\x01') goto LAB_00947698;
    }
    else {
      (**(code **)*param_1)();
    }
    if (*(int **)((int)this + 0x28) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0x28) + 4))();
    }
    *(undefined4 **)((int)this + 0x28) = param_1;
  }
LAB_00947698:
  if (*(int *)((int)this + 0x28) != 0) {
    piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x28));
    uVar4 = piVar1[1] - *piVar1 >> 6;
    FUN_00c221f0((void *)((int)this + 0x58),uVar4);
    uVar2 = 0;
    if (uVar4 != 0) {
      iVar3 = 0;
      do {
        *(undefined4 *)(*(int *)((int)this + 0x58) + uVar2 * 4) =
             *(undefined4 *)(*piVar1 + 8 + iVar3);
        uVar2 = uVar2 + 1;
        iVar3 = iVar3 + 0x40;
      } while (uVar2 < uVar4);
    }
  }
  if (param_3 != *(undefined4 **)((int)this + 0x2c)) {
    if (param_3 == (undefined4 *)0x0) {
      if ((char)param_4 != '\x01') goto LAB_00947707;
    }
    else {
      (**(code **)*param_3)();
    }
    if (*(int **)((int)this + 0x2c) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0x2c) + 4))();
    }
    *(undefined4 **)((int)this + 0x2c) = param_3;
  }
LAB_00947707:
  if (*(int *)((int)this + 0x2c) != 0) {
    piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x2c));
    uVar4 = piVar1[1] - *piVar1 >> 6;
    FUN_00c221f0((void *)((int)this + 0x48),uVar4);
    uVar2 = 0;
    if (uVar4 != 0) {
      iVar3 = 0;
      do {
        *(undefined4 *)(*(int *)((int)this + 0x48) + uVar2 * 4) =
             *(undefined4 *)(iVar3 + 8 + *piVar1);
        uVar2 = uVar2 + 1;
        iVar3 = iVar3 + 0x40;
      } while (uVar2 < uVar4);
    }
  }
  if (param_2 != *(undefined4 **)((int)this + 0x30)) {
    if (param_2 == (undefined4 *)0x0) {
      if ((char)param_4 != '\x01') goto LAB_00947776;
    }
    else {
      (**(code **)*param_2)();
    }
    if (*(int **)((int)this + 0x30) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0x30) + 4))();
    }
    *(undefined4 **)((int)this + 0x30) = param_2;
  }
LAB_00947776:
  if (*(int *)((int)this + 0x30) != 0) {
    piVar1 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x30));
    _Src = *(undefined4 **)((int)this + 0x6c);
    uVar4 = piVar1[1] - *piVar1 >> 6;
    uVar2 = (int)_Src - *(int *)((int)this + 0x68) >> 2;
    if (uVar2 < uVar4) {
      param_4 = (void *)0x0;
      FUN_006e4940((int *)((int)this + 0x68),_Src,uVar4 - uVar2,&param_4);
    }
    else {
      param_4 = (void *)(*(int *)((int)this + 0x68) + uVar4 * 4);
      memmove(param_4,_Src,0);
      *(int *)((int)this + 0x6c) = *(int *)((int)this + 0x6c) + ((int)_Src - (int)param_4 >> 2) * -4
      ;
    }
    uVar2 = 0;
    if (uVar4 != 0) {
      iVar3 = 0;
      do {
        *(undefined4 *)(*(int *)((int)this + 0x68) + uVar2 * 4) =
             *(undefined4 *)(iVar3 + 8 + *piVar1);
        uVar2 = uVar2 + 1;
        iVar3 = iVar3 + 0x40;
      } while (uVar2 < uVar4);
    }
  }
  FootprintComponent_RebuildExtendedResource((int)this);
  if (((*(int *)((int)this + 0x28) == 0) && (*(int *)((int)this + 0x30) == 0)) &&
     (*(int *)((int)this + 0x2c) == 0)) {
    return 0;
  }
  return 1;
}

