/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX destination drawable plus source pointer, RET4, void.
   Retains/copies same two vertex streams and byte offsets, index/declaration, base range+38..4C.
   Allocates states with original count and copies each five-DWORD20-byte record unchanged, ignoring
   allocation BOOL. Copies rig palette references/joint-map and material bindings/flags. Geometry
   data are preserved when allocations succeed; this is not failure-atomic nor proof of host GPU
   cache lifetime. */

void __thiscall Drawable_CopyGeometryAndMaterialBindings(void *this,void *sourceDrawable)

{
  int *piVar1;
  int *piVar2;
  uint stateCount;
  int iVar3;
  longlong lVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  byte bVar8;
  undefined4 *puVar9;
  undefined4 *puVar10;
  void *_Dst;
  int iVar11;
  int *piVar12;
  uint local_18;
  
  local_18 = 2;
  piVar2 = this;
  do {
    piVar12 = piVar2 + 1;
    iVar11 = *(int *)(((int)sourceDrawable - (int)this) + 8 + (int)piVar12);
    piVar1 = *(int **)(((int)sourceDrawable - (int)this) + (int)piVar12);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
    if ((int *)*piVar12 != (int *)0x0) {
      (**(code **)(*(int *)*piVar12 + 8))();
    }
    *piVar12 = (int)piVar1;
    piVar2[3] = iVar11;
    local_18 = local_18 + -1;
    piVar2 = piVar12;
  } while (local_18 != 0);
  piVar2 = *(int **)((int)sourceDrawable + 0x14);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 4))();
  }
  if (*(int **)((int)this + 0x14) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x14) + 8))();
  }
  *(int **)((int)this + 0x14) = piVar2;
  piVar2 = *(int **)((int)sourceDrawable + 0x18);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 4))();
  }
  if (*(int **)((int)this + 0x18) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x18) + 8))();
  }
  *(int **)((int)this + 0x18) = piVar2;
  *(undefined4 *)((int)this + 0x1c) = *(undefined4 *)((int)sourceDrawable + 0x1c);
  piVar2 = *(int **)((int)this + 0x20);
  piVar1 = *(int **)((int)sourceDrawable + 0x20);
  if (piVar1 != piVar2) {
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
    *(int **)((int)this + 0x20) = piVar1;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
    }
  }
  puVar10 = *(undefined4 **)((int)sourceDrawable + 0x24);
  puVar9 = *(undefined4 **)((int)this + 0x24);
  if (puVar10 != puVar9) {
    if (puVar10 != (undefined4 *)0x0) {
      LOCK();
      puVar10[1] = puVar10[1] + 1;
      UNLOCK();
    }
    *(undefined4 **)((int)this + 0x24) = puVar10;
    if (puVar9 != (undefined4 *)0x0) {
      piVar2 = puVar9 + 1;
      LOCK();
      iVar11 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar11 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*puVar9)(1);
      }
    }
  }
  puVar10 = *(undefined4 **)((int)sourceDrawable + 0x2c);
  if (*(undefined4 **)((int)this + 0x2c) != puVar10) {
    if (puVar10 != (undefined4 *)0x0) {
      (**(code **)*puVar10)();
      if (*(int *)this != 0) {
        if (*(int *)((int)sourceDrawable + 0x2c) == 0) {
          iVar11 = 0;
        }
        else {
          iVar11 = *(int *)((int)sourceDrawable + 0x2c) + 0x28;
        }
        FUN_006dea80((void *)(*(int *)this + 0x28),iVar11);
      }
    }
    if (*(int *)((int)this + 0x2c) != 0) {
      if (*(int *)this != 0) {
        FUN_006deb00((void *)(*(int *)this + 0x28),*(int *)((int)this + 0x2c) + 0x28);
      }
      (**(code **)(**(int **)((int)this + 0x2c) + 4))();
    }
    *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)((int)sourceDrawable + 0x2c);
  }
  piVar2 = *(int **)((int)this + 0x28);
  piVar1 = *(int **)((int)sourceDrawable + 0x28);
  if (piVar1 != piVar2) {
    if (piVar1 != (int *)0x0) {
      (**(code **)*piVar1)();
    }
    *(int **)((int)this + 0x28) = piVar1;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 4))();
    }
  }
  puVar10 = *(undefined4 **)((int)sourceDrawable + 0x30);
  if (puVar10 != *(undefined4 **)((int)this + 0x30)) {
    if (puVar10 != (undefined4 *)0x0) {
      (**(code **)*puVar10)();
      if (*(int *)this != 0) {
        FUN_006dea80((void *)(*(int *)this + 0x28),(int)(puVar10 + 10));
      }
    }
    if (*(int *)((int)this + 0x30) != 0) {
      if (*(int *)this != 0) {
        if (puVar10 == (undefined4 *)0x0) {
          puVar9 = (undefined4 *)0x0;
        }
        else {
          puVar9 = puVar10 + 10;
        }
        FUN_006deb00((void *)(*(int *)this + 0x28),(int)puVar9);
      }
      (**(code **)(**(int **)((int)this + 0x30) + 4))();
    }
    *(undefined4 **)((int)this + 0x30) = puVar10;
  }
  puVar10 = *(undefined4 **)((int)sourceDrawable + 0x34);
  if (puVar10 != (undefined4 *)0x0) {
    (**(code **)*puVar10)();
  }
  if (*(int **)((int)this + 0x34) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x34) + 4))();
  }
  *(undefined4 **)((int)this + 0x34) = puVar10;
  *(undefined4 *)((int)this + 0x38) = *(undefined4 *)((int)sourceDrawable + 0x38);
  *(undefined4 *)((int)this + 0x3c) = *(undefined4 *)((int)sourceDrawable + 0x3c);
  *(undefined4 *)((int)this + 0x40) = *(undefined4 *)((int)sourceDrawable + 0x40);
  *(undefined4 *)((int)this + 0x44) = *(undefined4 *)((int)sourceDrawable + 0x44);
  *(undefined4 *)((int)this + 0x48) = *(undefined4 *)((int)sourceDrawable + 0x48);
  *(undefined4 *)((int)this + 0x4c) = *(undefined4 *)((int)sourceDrawable + 0x4c);
  stateCount = *(uint *)((int)sourceDrawable + 0x54);
  RenderObject_AllocateGeometryStates(this,stateCount);
  local_18 = 0;
  if (stateCount != 0) {
    iVar11 = 0;
    do {
      if ((((*(int *)((int)sourceDrawable + 0x50) != 0) &&
           ((int)local_18 < *(int *)((int)sourceDrawable + 0x54))) &&
          (puVar10 = (undefined4 *)(*(int *)((int)sourceDrawable + 0x50) + iVar11),
          puVar10 != (undefined4 *)0x0)) &&
         ((iVar3 = *(int *)((int)this + 0x50), iVar3 != 0 &&
          ((int)local_18 < *(int *)((int)this + 0x54))))) {
        *(undefined4 *)(iVar3 + iVar11) = *puVar10;
        *(undefined4 *)(iVar3 + 4 + iVar11) = puVar10[1];
        *(undefined4 *)(iVar3 + 8 + iVar11) = puVar10[2];
        *(undefined4 *)(iVar3 + 0xc + iVar11) = puVar10[3];
        *(undefined4 *)(iVar3 + 0x10 + iVar11) = puVar10[4];
      }
      local_18 = local_18 + 1;
      iVar11 = iVar11 + 0x14;
    } while (local_18 < stateCount);
  }
  FUN_0068f230(this,*(void **)((int)sourceDrawable + 0x58),*(uint *)((int)sourceDrawable + 0x60));
  if (*(int *)((int)sourceDrawable + 0x5c) != 0) {
    lVar4 = (ulonglong)*(uint *)((int)this + 0x60) * 4;
    _Dst = (void *)FUN_004e4500(-(uint)((int)((ulonglong)lVar4 >> 0x20) != 0) | (uint)lVar4,
                                "Renderer/Drawable/JointMapRig",0);
    *(void **)((int)this + 0x5c) = _Dst;
    if (_Dst != (void *)0x0) {
      memcpy(_Dst,*(void **)((int)sourceDrawable + 0x5c),*(int *)((int)this + 0x60) * 4);
    }
  }
  puVar10 = *(undefined4 **)((int)sourceDrawable + 100);
  if (puVar10 != (undefined4 *)0x0) {
    (**(code **)*puVar10)();
  }
  if (*(int **)((int)this + 100) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 100) + 4))();
  }
  *(undefined4 **)((int)this + 100) = puVar10;
  *(undefined4 *)((int)this + 0x68) = *(undefined4 *)((int)sourceDrawable + 0x68);
  *(undefined4 *)((int)this + 0x6c) = *(undefined4 *)((int)sourceDrawable + 0x6c);
  *(byte *)((int)this + 0xc0) =
       *(byte *)((int)this + 0xc0) ^
       (*(byte *)((int)this + 0xc0) ^ *(byte *)((int)sourceDrawable + 0xc0)) & 1;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc0) ^ *(byte *)((int)this + 0xc0)) & 2 ^
          *(byte *)((int)this + 0xc0);
  *(byte *)((int)this + 0xc0) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc0) ^ bVar8) & 4 ^ bVar8;
  *(byte *)((int)this + 0xc0) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc0) ^ bVar8) & 8 ^ bVar8;
  *(byte *)((int)this + 0xc0) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc0) ^ bVar8) & 0x10 ^ bVar8;
  *(byte *)((int)this + 0xc0) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc0) ^ bVar8) & 0x20 ^ bVar8;
  *(byte *)((int)this + 0xc0) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc0) ^ bVar8) & 0x40 ^ bVar8;
  *(byte *)((int)this + 0xc0) = bVar8;
  *(byte *)((int)this + 0xc0) =
       (*(byte *)((int)sourceDrawable + 0xc0) ^ bVar8) & 0x7f ^
       *(byte *)((int)sourceDrawable + 0xc0);
  *(byte *)((int)this + 0xc1) =
       *(byte *)((int)this + 0xc1) ^
       (*(byte *)((int)this + 0xc1) ^ *(byte *)((int)sourceDrawable + 0xc1)) & 1;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc1) ^ *(byte *)((int)this + 0xc1)) & 2 ^
          *(byte *)((int)this + 0xc1);
  *(byte *)((int)this + 0xc1) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc1) ^ bVar8) & 4 ^ bVar8;
  *(byte *)((int)this + 0xc1) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc1) ^ bVar8) & 8 ^ bVar8;
  *(byte *)((int)this + 0xc1) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc1) ^ bVar8) & 0x10 ^ bVar8;
  *(byte *)((int)this + 0xc1) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc1) ^ bVar8) & 0x20 ^ bVar8;
  *(byte *)((int)this + 0xc1) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc1) ^ bVar8) & 0x40 ^ bVar8;
  *(byte *)((int)this + 0xc1) = bVar8;
  *(byte *)((int)this + 0xc1) =
       (*(byte *)((int)sourceDrawable + 0xc1) ^ bVar8) & 0x7f ^
       *(byte *)((int)sourceDrawable + 0xc1);
  *(byte *)((int)this + 0xc2) =
       *(byte *)((int)this + 0xc2) ^
       (*(byte *)((int)this + 0xc2) ^ *(byte *)((int)sourceDrawable + 0xc2)) & 1;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc2) ^ *(byte *)((int)this + 0xc2)) & 2 ^
          *(byte *)((int)this + 0xc2);
  *(byte *)((int)this + 0xc2) = bVar8;
  bVar8 = (*(byte *)((int)sourceDrawable + 0xc2) ^ bVar8) & 4 ^ bVar8;
  *(byte *)((int)this + 0xc2) = bVar8;
  *(byte *)((int)this + 0xc2) = (*(byte *)((int)sourceDrawable + 0xc2) ^ bVar8) & 8 ^ bVar8;
  *(undefined4 *)((int)this + 0x74) = *(undefined4 *)((int)sourceDrawable + 0x74);
  *(undefined4 *)((int)this + 0x78) = *(undefined4 *)((int)sourceDrawable + 0x78);
  *(undefined2 *)((int)this + 0x7c) = *(undefined2 *)((int)sourceDrawable + 0x7c);
  uVar5 = *(undefined4 *)((int)sourceDrawable + 0x84);
  uVar6 = *(undefined4 *)((int)sourceDrawable + 0x88);
  uVar7 = *(undefined4 *)((int)sourceDrawable + 0x8c);
  *(undefined4 *)((int)this + 0x80) = *(undefined4 *)((int)sourceDrawable + 0x80);
  *(undefined4 *)((int)this + 0x84) = uVar5;
  *(undefined4 *)((int)this + 0x88) = uVar6;
  *(undefined4 *)((int)this + 0x8c) = uVar7;
  uVar5 = *(undefined4 *)((int)sourceDrawable + 0x94);
  uVar6 = *(undefined4 *)((int)sourceDrawable + 0x98);
  uVar7 = *(undefined4 *)((int)sourceDrawable + 0x9c);
  *(undefined4 *)((int)this + 0x90) = *(undefined4 *)((int)sourceDrawable + 0x90);
  *(undefined4 *)((int)this + 0x94) = uVar5;
  *(undefined4 *)((int)this + 0x98) = uVar6;
  *(undefined4 *)((int)this + 0x9c) = uVar7;
  uVar5 = *(undefined4 *)((int)sourceDrawable + 0xa4);
  uVar6 = *(undefined4 *)((int)sourceDrawable + 0xa8);
  uVar7 = *(undefined4 *)((int)sourceDrawable + 0xac);
  *(undefined4 *)((int)this + 0xa0) = *(undefined4 *)((int)sourceDrawable + 0xa0);
  *(undefined4 *)((int)this + 0xa4) = uVar5;
  *(undefined4 *)((int)this + 0xa8) = uVar6;
  *(undefined4 *)((int)this + 0xac) = uVar7;
  uVar5 = *(undefined4 *)((int)sourceDrawable + 0xb4);
  uVar6 = *(undefined4 *)((int)sourceDrawable + 0xb8);
  uVar7 = *(undefined4 *)((int)sourceDrawable + 0xbc);
  *(undefined4 *)((int)this + 0xb0) = *(undefined4 *)((int)sourceDrawable + 0xb0);
  *(undefined4 *)((int)this + 0xb4) = uVar5;
  *(undefined4 *)((int)this + 0xb8) = uVar6;
  *(undefined4 *)((int)this + 0xbc) = uVar7;
  *(undefined4 *)((int)this + 0xc4) = *(undefined4 *)((int)sourceDrawable + 0xc4);
  *(undefined4 *)((int)this + 200) = *(undefined4 *)((int)sourceDrawable + 200);
  return;
}

