/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): One render delta float
   arrives on stack; ECX=this; RET4. ADDSS stores each timer; COMISS/JC takes the fraction path for
   less-than OR unordered, so decompiler >= text does not establish NaN expiry. Finite timer>=4 uses
   t=1, otherwise timer*0.25. Target byte and its logical complement form SUBPS/MULPS/ADDPS lerp;
   MULSS255 then CVTTSS2SI and DL store truncate. Mask FFFF or virtual9C false writes 64x64 tile
   alpha; otherwise selected ushort bits write the 4x4 block of 256x256 partial alpha. Ended
   off-fade asks virtual98 actual feature state before clearing the UInt64 column bit and marking
   geometry dirty. Also owns original texture upload/filter mode and virtual94 rebuild; do not
   reduce this full native routine to a CPU-only method. */

void __thiscall FloorFeatureGeometry_AdvanceAndUpload(void *this,float param_1)

{
  uint *puVar1;
  byte bVar2;
  bool bVar3;
  int **ppiVar4;
  int **ppiVar5;
  int *piVar6;
  char cVar7;
  uint uVar8;
  int *piVar9;
  int iVar10;
  bool *pbVar11;
  int **ppiVar12;
  uint uVar13;
  void *_Src;
  int *_Dst;
  float fVar14;
  longlong lVar15;
  bool local_a2;
  bool local_a1;
  int *local_a0;
  undefined4 uStack_9c;
  int *local_98;
  int *apiStack_94 [2];
  int iStack_8c;
  int local_88;
  int *piStack_84;
  int **ppiStack_80;
  int **ppiStack_7c;
  int **ppiStack_78;
  float fStack_74;
  int *piStack_70;
  int *piStack_6c;
  int *apiStack_68 [2];
  int local_60;
  undefined1 auStack_5c [4];
  PC167_SurfaceMapping local_58;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  int aiStack_18 [5];
  
  apiStack_94[1] = *(int **)((int)this + 0x230);
  iVar10 = *apiStack_94[1];
  if (iVar10 == 0) {
    apiStack_94[1] = apiStack_94[1] + 1;
    iVar10 = *apiStack_94[1];
    while (iVar10 == 0) {
      apiStack_94[1] = apiStack_94[1] + 1;
      iVar10 = *apiStack_94[1];
    }
    iVar10 = *apiStack_94[1];
  }
  local_88 = *(int *)(*(int *)((int)this + 0x230) + *(int *)((int)this + 0x234) * 4);
  local_98 = this;
  if (iVar10 != local_88) {
    do {
      fVar14 = param_1 + *(float *)(iVar10 + 0xc);
      *(float *)(iVar10 + 0xc) = fVar14;
      if (fVar14 < 4.0) {
        local_a0 = (int *)(fVar14 * 0.25);
      }
      else {
        local_a0 = (int *)1.0;
      }
      local_a2 = fVar14 >= 4.0;
      bVar2 = *(byte *)(iVar10 + 5);
      local_60 = (uint)*(byte *)(iVar10 + 4) * 4;
      local_a1 = *(char *)(iVar10 + 6) == '\0';
      if ((*(short *)(iVar10 + 8) == -1) ||
         (cVar7 = (**(code **)(*(int *)this + 0x9c))(), cVar7 == '\0')) {
        fStack_74 = (float)local_a1;
        fVar14 = (float)*(byte *)(iVar10 + 6);
        ppiStack_80 = (int **)((fVar14 - fStack_74) * (float)local_a0 + fStack_74);
        ppiStack_7c = (int **)((fVar14 - fStack_74) * (float)local_a0 + fStack_74);
        ppiStack_78 = (int **)((fVar14 - fStack_74) * (float)local_a0 + fStack_74);
        fStack_74 = (fVar14 - fStack_74) * (float)local_a0 + fStack_74;
        *(char *)((uint)*(byte *)(iVar10 + 5) * 0x40 + *(int *)((int)this + 0x224) +
                 (uint)*(byte *)(iVar10 + 4)) = (char)(int)((float)ppiStack_80 * 255.0);
      }
      else {
        uVar13 = 0;
        iStack_8c = (uint)bVar2 << 10;
        do {
          uVar8 = 0;
          do {
            if (((uint)*(ushort *)(iVar10 + 8) & 1 << ((byte)uVar13 & 0x1f)) != 0) {
              fStack_24 = (float)local_a1;
              fVar14 = (float)*(byte *)(iVar10 + 6);
              fStack_30 = (fVar14 - fStack_24) * (float)local_a0 + fStack_24;
              fStack_2c = (fVar14 - fStack_24) * (float)local_a0 + fStack_24;
              fStack_28 = (fVar14 - fStack_24) * (float)local_a0 + fStack_24;
              fStack_24 = (fVar14 - fStack_24) * (float)local_a0 + fStack_24;
              *(char *)(*(int *)((int)this + 0x228) + iStack_8c + uVar8 + local_60) =
                   (char)(int)(fStack_30 * 255.0);
              this = local_98;
            }
            uVar8 = uVar8 + 1;
            uVar13 = uVar13 + 1;
          } while (uVar8 < 4);
          iStack_8c = iStack_8c + 0x100;
        } while (uVar13 < 0x10);
      }
      if (local_a2 == false) {
        iVar10 = *(int *)(iVar10 + 0x10);
        while (iVar10 == 0) {
          piVar9 = apiStack_94[1] + 1;
          apiStack_94[1] = apiStack_94[1] + 1;
          iVar10 = *piVar9;
        }
      }
      else {
        if (*(char *)(iVar10 + 6) == '\0') {
          uStack_9c = CONCAT31(CONCAT12(uStack_9c._3_1_,
                                        CONCAT11((char)*(int *)((int)this + 0x2a0),
                                                 *(undefined1 *)(iVar10 + 5))),
                               *(undefined1 *)(iVar10 + 4));
          cVar7 = (**(code **)(*(int *)this + 0x98))(&uStack_9c,auStack_5c);
          if (cVar7 == '\0') {
            puVar1 = (uint *)(*(int *)((int)this + 0x214) + (uint)*(byte *)(iVar10 + 4) * 8);
            lVar15 = __allshl(*(byte *)(iVar10 + 5),0);
            *puVar1 = *puVar1 & ~(uint)lVar15;
            puVar1[1] = puVar1[1] & ~(uint)((ulonglong)lVar15 >> 0x20);
            *(undefined1 *)((int)this + 0x210) = 1;
          }
        }
        piVar9 = FUN_00a83a60((int *)((int)this + 0x22c),aiStack_18,iVar10,apiStack_94[1]);
        apiStack_94[1] = (int *)piVar9[1];
        iVar10 = *piVar9;
        piStack_84 = (int *)(*(int *)((int)this + 0x230) + *(int *)((int)this + 0x234) * 4);
        local_88 = *piStack_84;
      }
      *(undefined1 *)((int)this + 0x2a4) = 1;
    } while (iVar10 != local_88);
  }
  if ((char)*(int *)((int)this + 0x2a4) != '\0') {
    if (*(char *)((int)this + 0x2a5) == '\0') {
      ppiStack_78 = apiStack_68;
      piStack_70 = *(int **)((int)this + 0x290);
      ppiStack_80 = &piStack_70;
      ppiStack_7c = &piStack_6c;
      if (piStack_70 != (int *)0x0) {
        (**(code **)(*piStack_70 + 4))();
      }
      cVar7 = (**(code **)(*(int *)this + 0x9c))();
      ppiVar12 = ppiStack_7c;
      if (cVar7 != '\0') {
        if (ppiStack_7c < ppiStack_78) {
          ppiVar12 = ppiStack_7c + 1;
          if (ppiStack_7c != (int **)0x0) {
            piVar9 = *(int **)((int)this + 0x294);
            *ppiStack_7c = piVar9;
            if (piVar9 != (int *)0x0) {
              ppiStack_7c = ppiVar12;
              (**(code **)(*piVar9 + 4))();
              ppiVar12 = ppiStack_7c;
            }
          }
        }
        else {
          FUN_00a7cfa0(&ppiStack_80,(int *)ppiStack_7c,(int *)((int)this + 0x294));
          ppiVar12 = ppiStack_7c;
        }
      }
      ppiStack_7c = ppiVar12;
      local_88 = *(int *)((int)this + 0x224);
      piStack_84 = *(int **)((int)this + 0x228);
      apiStack_94[0] = (int *)0x40;
      apiStack_94[1] = (int *)0x100;
      uStack_9c = 0;
      ppiVar12 = ppiStack_80;
      ppiVar4 = ppiStack_7c;
      if (0 < (int)((int)ppiStack_7c - (int)ppiStack_80 & 0xfffffffcU)) {
        do {
          iVar10 = uStack_9c;
          Surface_MapTextureLevel(ppiStack_80[uStack_9c],&local_58,0,0);
          _Src = (void *)(&local_88)[iVar10];
          local_98 = apiStack_94[uStack_9c];
          piVar6 = local_98;
          piVar9 = local_a0;
          _Dst = local_58.bits;
          while (local_a0 = piVar6, local_a0 != (int *)0x0) {
            memcpy(_Dst,_Src,local_58.rowPitchBytes);
            _Src = (void *)((int)_Src + (int)local_98);
            _Dst = (int *)((int)_Dst + local_58.rowPitchBytes);
            piVar9 = (int *)((int)local_a0 + -1);
            piVar6 = piVar9;
          }
          local_a0 = piVar9;
          Surface_UnmapIfMapped(ppiStack_80[uStack_9c],&local_58);
          uStack_9c = uStack_9c + 1;
          ppiVar12 = ppiStack_80;
          ppiVar4 = ppiStack_7c;
        } while (uStack_9c < (int)ppiStack_7c - (int)ppiStack_80 >> 2);
      }
      for (; ppiVar5 = ppiStack_7c, bVar3 = ppiVar12 < ppiStack_7c, ppiStack_7c = ppiVar4, bVar3;
          ppiVar12 = ppiVar12 + 1) {
        if (*ppiVar12 != (int *)0x0) {
          (**(code **)(**ppiVar12 + 8))();
        }
        ppiVar4 = ppiStack_7c;
        ppiStack_7c = ppiVar5;
      }
    }
    else {
      Surface_MapTextureLevel(*(void **)((int)this + 0x290),&local_58,0,0);
      local_a0 = *(int **)((int)this + 0x224);
      local_98 = local_58.bits;
      uVar13 = 0;
      do {
        uVar8 = 0;
        do {
          iVar10 = FUN_00a7c300((int)local_a0,uVar8,uVar13,&local_a2,0x40);
          local_a1 = (bool)*(byte *)(iVar10 + (int)local_a0);
          pbVar11 = &local_a2;
          if (local_a2 <= *(byte *)(iVar10 + (int)local_a0)) {
            pbVar11 = &local_a1;
          }
          iVar10 = local_58.rowPitchBytes * uVar13 + uVar8;
          uVar8 = uVar8 + 1;
          *(bool *)(iVar10 + (int)local_98) = *pbVar11;
        } while (uVar8 < 0x40);
        uVar13 = uVar13 + 1;
      } while (uVar13 < 0x40);
      Surface_UnmapIfMapped(*(void **)((int)this + 0x290),&local_58);
    }
    *(undefined1 *)((int)this + 0x2a4) = 0;
  }
  if ((char)*(int *)((int)this + 0x210) != '\0') {
    (**(code **)(*(int *)this + 0x94))(*(int *)((int)this + 0x29c),*(int *)((int)this + 0x2a0));
  }
  return;
}

