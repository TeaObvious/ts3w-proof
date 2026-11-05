/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 bounded cube-face capture/row/mip publication role, not a recovered symbol.
   Physical ABI ECX receiver plus one stack source word, RET04; success sets AL1, signed-negative
   virtual result failure clears AL only after two temporary cleanups. Conditional byte this+2C97
   swaps this+2C54/+2C64 with virtual+4/+8 ordering; child refcount semantics remain bounded. Face
   loop0..5 selects source face and staging objects before virtual slot80, tests signed EAX<0, maps
   staging, copies width*4 bytes per row, advances source by mapped pitch and destination by
   fixed0x400. Destination starts global011D1D34 +4*UInt32 table00FF4E98[face]; table
   words0,16384,64,16448,128,16512. No local memcpy-row flip/channel conversion or explicit fence
   wait appears. After six map/unmap/temporary-cleanup cycles, selected destination gets six level0
   publications with pitch400; loops build/publish levels1..5 with width40>>level and stride100
   pixels, special child6B3F30 atlevel5; final packed-channel fold feeds all six level6
   publications. Filtering children, concrete interface/format/orientation, caller scheduling/GPU
   completion and refcount semantics remain unexpanded. Current tightly packed Vulkan
   layer-to-buffer recording is not proved equivalent to this atlas/mip workflow. Actual direct
   caller site006B57E7 is known, not full caller policy. */

undefined4 __thiscall CubeCapture_ReadFacesAndPublishMipLevels(void *this,void *param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  size_t _Size;
  undefined4 uVar4;
  int iVar5;
  undefined3 extraout_var;
  int iVar6;
  uint *puVar7;
  void *_Src;
  uint uVar8;
  uint uVar9;
  uint *puVar10;
  void *pvVar11;
  uint uStack_f4;
  int local_f0;
  uint auStack_e8 [6];
  uint uStack_d0;
  uint uStack_cc;
  uint uStack_c8;
  uint uStack_c4;
  undefined1 auStack_c0 [4];
  undefined1 auStack_bc [4];
  uint auStack_b8 [9];
  undefined4 uStack_94;
  PC167_SurfaceMapping PStack_70;
  undefined4 auStack_48 [9];
  undefined4 uStack_24;
  
  if (*(char *)((int)this + 0x2c97) != '\0') {
    piVar1 = *(int **)((int)this + 0x2c54);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 4))();
    }
    piVar2 = *(int **)((int)this + 0x2c64);
    piVar3 = *(int **)((int)this + 0x2c54);
    if (piVar2 != piVar3) {
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
      *(int **)((int)this + 0x2c54) = piVar2;
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 8))();
      }
    }
    piVar2 = *(int **)((int)this + 0x2c64);
    if (piVar1 != piVar2) {
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
      *(int **)((int)this + 0x2c64) = piVar1;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 8))();
      }
    }
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))();
    }
  }
  local_f0 = 0;
  do {
    FUN_00618720(auStack_b8);
    FUN_00618720(auStack_48);
    FUN_00619c20(param_1,local_f0,0);
    uVar4 = uStack_94;
    FUN_00619bf0(DAT_011d1d2c,0);
    iVar5 = (**(code **)(*DAT_011cfccc + 0x80))(DAT_011cfccc,uVar4,uStack_24);
    if (iVar5 < 0) {
      FUN_006183f0(auStack_48);
      uVar8 = FUN_006183f0(auStack_b8);
      return uVar8 & 0xffffff00;
    }
    Surface_MapTextureLevel(DAT_011d1d2c,&PStack_70,0,0);
    iVar5 = PStack_70.rowPitchBytes;
    _Size = PStack_70.width * 4;
    pvVar11 = (void *)(DAT_011d1d34 + (&DAT_00ff4e98)[local_f0] * 4);
    if (PStack_70.height != 0) {
      uStack_f4 = PStack_70.height;
      _Src = PStack_70.bits;
      do {
        memcpy(pvVar11,_Src,_Size);
        _Src = (void *)((int)_Src + iVar5);
        pvVar11 = (void *)((int)pvVar11 + 0x400);
        uStack_f4 = uStack_f4 - 1;
      } while (uStack_f4 != 0);
    }
    Surface_UnmapIfMapped(DAT_011d1d2c,&PStack_70);
    FUN_006183f0(auStack_48);
    FUN_006183f0(auStack_b8);
    local_f0 = local_f0 + 1;
  } while (local_f0 < 6);
  if (*(char *)((int)this + 0x2c97) == '\0') {
    pvVar11 = *(void **)((int)this + 0x2c5c);
  }
  else {
    pvVar11 = *(void **)((int)this + 0x2c64);
  }
  uVar8 = 0;
  puVar7 = auStack_b8;
  do {
    Texture_CopyMipRowsCube
              (pvVar11,uVar8,0,(void *)(DAT_011d1d34 + (&DAT_00ff4e98)[uVar8] * 4),0x400);
    puVar7[1] = DAT_011d1d34 + (&DAT_00ff4e98)[uVar8] * 4;
    *puVar7 = 0x40;
    puVar7[2] = 0x100;
    uVar8 = uVar8 + 1;
    puVar7 = puVar7 + 3;
  } while ((int)uVar8 < 6);
  uVar8 = 1;
  do {
    iVar6 = 0x40 >> ((byte)uVar8 & 0x1f);
    iVar5 = 0;
    do {
      *(undefined4 *)((int)auStack_48 + iVar5) = *(undefined4 *)((int)auStack_b8 + iVar5);
      *(undefined4 *)((int)auStack_48 + iVar5 + 4) = *(undefined4 *)((int)auStack_b8 + iVar5 + 4);
      piVar1 = (int *)((int)auStack_b8 + iVar5 + 4);
      *piVar1 = *piVar1 + iVar6 * 4;
      *(undefined4 *)((int)auStack_48 + iVar5 + 8) = *(undefined4 *)((int)auStack_b8 + iVar5 + 8);
      *(int *)((int)auStack_b8 + iVar5) = iVar6;
      *(undefined4 *)((int)auStack_b8 + iVar5 + 8) = 0x100;
      iVar5 = iVar5 + 0xc;
    } while (iVar5 < 0x48);
    if (uVar8 == 5) {
      FUN_006b3f30((int)auStack_48);
    }
    else {
      FUN_006b3c70(auStack_48,auStack_b8);
    }
    uVar9 = 0;
    puVar7 = auStack_b8 + 1;
    do {
      Texture_CopyMipRowsCube(pvVar11,uVar9,uVar8,(void *)*puVar7,puVar7[1] * 4);
      uVar9 = uVar9 + 1;
      puVar7 = puVar7 + 3;
    } while ((int)uVar9 < 6);
    uVar8 = uVar8 + 1;
  } while ((int)uVar8 < 6);
  puVar7 = auStack_e8;
  iVar5 = 5;
  do {
    FUN_00566350(puVar7);
    puVar7 = puVar7 + 1;
    iVar5 = iVar5 + -1;
  } while (-1 < iVar5);
  FUN_00799140(auStack_bc,0x40404040);
  FUN_00799140(auStack_c0,0x80808080);
  iVar5 = 0;
  puVar7 = auStack_b8 + 1;
  do {
    puVar10 = &uStack_d0;
    iVar6 = 3;
    do {
      FUN_00566350(puVar10);
      puVar10 = puVar10 + 1;
      iVar6 = iVar6 + -1;
    } while (-1 < iVar6);
    puVar10 = (uint *)*puVar7;
    uStack_d0 = *puVar10;
    uStack_cc = puVar10[1];
    uStack_c8 = puVar10[puVar7[1]];
    uStack_c4 = (puVar10 + puVar7[1])[1];
    uVar9 = (uStack_c8 | uStack_c4) - ((uStack_c8 ^ uStack_c4) >> 1 & 0x7f7f7f7f);
    uVar8 = (uStack_d0 | uStack_cc) - ((uStack_d0 ^ uStack_cc) >> 1 & 0x7f7f7f7f);
    auStack_e8[iVar5] = (uVar9 | uVar8) - ((uVar9 ^ uVar8) >> 1 & 0x7f7f7f7f);
    iVar5 = iVar5 + 1;
    puVar7 = puVar7 + 3;
  } while (iVar5 < 6);
  uVar8 = (auStack_e8[0] | auStack_e8[1]) - ((auStack_e8[0] ^ auStack_e8[1]) >> 1 & 0x7f7f7f7f);
  uVar8 = (auStack_e8[2] | uVar8) - ((auStack_e8[2] ^ uVar8) >> 1 & 0x7f7f7f7f);
  uVar8 = (auStack_e8[3] | uVar8) - ((auStack_e8[3] ^ uVar8) >> 1 & 0x7f7f7f7f);
  uVar8 = (auStack_e8[4] | uVar8) - ((auStack_e8[4] ^ uVar8) >> 1 & 0x7f7f7f7f);
  auStack_e8[0] = (auStack_e8[5] | uVar8) - ((auStack_e8[5] ^ uVar8) >> 1 & 0x7f7f7f7f);
  uVar8 = 0;
  do {
    Texture_CopyMipRowsCube(pvVar11,uVar8,6,auStack_e8,4);
    uVar8 = uVar8 + 1;
  } while ((int)uVar8 < 6);
  return CONCAT31(extraout_var,1);
}

