/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 authored-lot representations comparison): Analyst actual root-flag
   publication, not merely collision-level nodes. ECX renderer, no stack arguments; two owned ranges
   with eight nonowned alignment bytes; plain RET. Actual current level+29C/minimum+68 and level
   count+70 select segmented renderer nodes rooted+278/+27C/+284, distinct from lot
   collision+378/+37C/+384. Active lot UInt64 matches and original global/view/owner flags drive
   environment/basement-like state but their full semantic names are not inferred from offsets.
   Ordinary +3D8-zero branch uses signed index<displayIndex for flag4 and inclusive
   index<=displayIndex with active+1E/enabled+20 for flag1; flag2 combines strict-below with its
   original per-node mask. Special +3D8 branches separately handle levels<1,==1,>1 and+3D7. With
   nonnegative display, original signed level>=-1 or>=0 condition according to+31 further gates
   flag1; C SBORROW expression must be checked against AE0E8B..AE0EFD CMP/TEST/SETGE instructions.
   Separate root+26C gets flag1 only when display>=0 and active+1E, flag2false. Root+268 has
   additional owner+430/special-view conditions. Current Terrain/display predicate follows only one
   bounded projection; this function has real additional scene flags, not universal IsShownAt
   parity. Preserve all concrete calls and original conditional path ordering. */

void __fastcall LotRenderer_PublishLevelRootFlags(int param_1)

{
  byte bVar1;
  char cVar2;
  char cVar3;
  int iVar4;
  bool bVar5;
  undefined1 uVar6;
  void *pvVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  char cVar11;
  int iVar12;
  bool bVar13;
  bool bVar14;
  longlong lVar15;
  undefined4 uVar16;
  undefined4 uVar17;
  int local_14;
  char local_10;
  
  pvVar7 = LoadPump_ReadFrameServiceGlobal();
  iVar4 = *(int *)(param_1 + 0x68);
  cVar11 = *(char *)((int)pvVar7 + 0x515);
  iVar10 = *(int *)(param_1 + 0x29c) - iVar4;
  iVar8 = *(int *)((int)pvVar7 + 0x51c);
  iVar12 = *(int *)((int)pvVar7 + 0x518);
  cVar2 = *(char *)(param_1 + 0x3d9);
  cVar3 = *(char *)(*(int *)(param_1 + 0x18) + 0x430);
  lVar15 = FUN_00c5f560(DAT_011edbc4);
  iVar9 = *(int *)(param_1 + 0x18);
  if (((int)lVar15 != *(int *)(iVar9 + 0x48)) ||
     (bVar5 = true, (int)((ulonglong)lVar15 >> 0x20) != *(int *)(iVar9 + 0x4c))) {
    bVar5 = false;
  }
  *(undefined1 *)(param_1 + 0x3d7) = 0;
  if (!bVar5) {
    if (lVar15 == 0) {
      FUN_006e9300(pvVar7,0);
      SceneRenderer_SetBasementView(pvVar7,'\0',0,0);
      FUN_006e9280(pvVar7,'\0',0,0);
      FUN_006e92c0(pvVar7,'\0');
      iVar8 = *(int *)(DAT_011edbc4 + 100);
      *(undefined1 *)(iVar8 + 0x218) = 0;
      *(undefined1 *)(iVar8 + 0x219) = 0;
      *(undefined1 *)(*(int *)(DAT_011edbc4 + 100) + 0x21a) = 0;
    }
    else if (((cVar11 == '\0') || (iVar12 != *(int *)(iVar9 + 0x48))) ||
            (iVar8 != *(int *)(iVar9 + 0x4c))) {
      if (cVar3 == '\0') {
        if (cVar2 != '\0') {
          FUN_006e9280(pvVar7,'\0',0,0);
        }
      }
      else {
        FUN_006e92c0(pvVar7,'\0');
        FUN_006e9280(pvVar7,'\0',0,0);
        *(undefined1 *)(*(int *)(DAT_011edbc4 + 100) + 0x21a) = 0;
      }
    }
    else {
      SceneRenderer_SetBasementView(pvVar7,'\0',0,0);
      FUN_006e9280(pvVar7,'\0',0,0);
      FUN_006e92c0(pvVar7,'\0');
      iVar8 = *(int *)(DAT_011edbc4 + 100);
      *(undefined1 *)(iVar8 + 0x218) = 0;
      *(undefined1 *)(iVar8 + 0x219) = 0;
      *(undefined1 *)(*(int *)(DAT_011edbc4 + 100) + 0x21a) = 0;
    }
    goto LAB_00ae0dac;
  }
  FUN_006e9300(pvVar7,*(undefined4 *)(param_1 + 0x264));
  if (*(int *)(param_1 + 0x29c) < 0) {
    SceneRenderer_SetBasementView
              (pvVar7,'\x01',*(undefined4 *)(*(int *)(param_1 + 0x18) + 0x48),
               *(undefined4 *)(*(int *)(param_1 + 0x18) + 0x4c));
    uVar6 = *(undefined1 *)(param_1 + 0x3d6);
    iVar8 = *(int *)(DAT_011edbc4 + 100);
    *(undefined1 *)(iVar8 + 0x218) = 1;
    *(undefined1 *)(iVar8 + 0x219) = uVar6;
  }
  else {
    SceneRenderer_SetBasementView(pvVar7,'\0',0,0);
    iVar8 = *(int *)(DAT_011edbc4 + 100);
    *(undefined1 *)(iVar8 + 0x218) = 0;
    *(undefined1 *)(iVar8 + 0x219) = 0;
    *(undefined1 *)(*(int *)(DAT_011edbc4 + 100) + 0x21a) = 0;
  }
  if (*(char *)(param_1 + 0x3d8) == '\0') {
LAB_00ae0c60:
    uVar6 = 0;
  }
  else {
    bVar13 = *(int *)(param_1 + 0x29c) == 0;
    if (bVar13) {
      uVar17 = *(undefined4 *)(*(int *)(param_1 + 0x18) + 0x4c);
      uVar16 = *(undefined4 *)(*(int *)(param_1 + 0x18) + 0x48);
    }
    else {
      uVar17 = 0;
      uVar16 = 0;
    }
    FUN_006e9280(pvVar7,bVar13,uVar16,uVar17);
    if ((*(char *)(param_1 + 0x3d8) == '\0') ||
       (uVar17 = FUN_006eaf90((int)pvVar7), (char)uVar17 == '\0')) goto LAB_00ae0c60;
    uVar6 = 1;
  }
  *(undefined1 *)(param_1 + 0x3d7) = uVar6;
  if (*(char *)(*(int *)(param_1 + 0x18) + 0x430) == '\x01') {
    FUN_006e92c0(pvVar7,'\x01');
    *(undefined1 *)(*(int *)(DAT_011edbc4 + 100) + 0x21a) = 1;
  }
  else {
    FUN_006e92c0(pvVar7,'\0');
    *(undefined1 *)(*(int *)(DAT_011edbc4 + 100) + 0x21a) = 0;
  }
LAB_00ae0dac:
  iVar8 = *(int *)(param_1 + 0x70) + 1;
  local_14 = 0;
  if (0 < iVar8) {
    do {
      cVar11 = *(char *)(param_1 + 0x358);
      iVar12 = *(int *)(param_1 + 0x68) + local_14;
      if ((local_14 < -iVar4) && (-1 < *(int *)(param_1 + 0x29c))) {
        cVar11 = '\x01';
      }
      bVar1 = 1;
      if (*(char *)(param_1 + 0x3d8) == '\0') {
        bVar13 = local_14 < iVar10;
        if ((local_14 <= iVar10) && (*(char *)(param_1 + 0x1e) != '\0')) {
          cVar2 = *(char *)(param_1 + 0x20);
LAB_00ae0eee:
          if (cVar2 != '\0') goto LAB_00ae0ef0;
        }
LAB_00ae0e7d:
        bVar1 = 0;
      }
      else {
        cVar11 = '\x01';
        bVar13 = true;
        if (iVar12 < 1) {
          if ((iVar10 <= local_14) || (bVar13 = true, *(char *)(param_1 + 0x3d7) == '\0')) {
            bVar13 = false;
          }
          if (((local_14 <= iVar10) && (*(char *)(param_1 + 0x1e) != '\0')) &&
             (*(char *)(param_1 + 0x20) != '\0')) {
            cVar2 = *(char *)(param_1 + 0x3d7);
            goto LAB_00ae0eee;
          }
          goto LAB_00ae0e7d;
        }
        if (iVar12 == 1) {
          if ((*(int *)(param_1 + 0x29c) < 0) || (bVar13 = true, *(char *)(param_1 + 0x3d7) != '\0')
             ) {
            bVar13 = false;
          }
          if (((*(int *)(param_1 + 0x29c) < 0) || (*(char *)(param_1 + 0x1e) == '\0')) ||
             ((*(char *)(param_1 + 0x20) == '\0' || (*(char *)(param_1 + 0x3d7) != '\0'))))
          goto LAB_00ae0e7d;
LAB_00ae0ef0:
          bVar1 = 1;
        }
        else if (1 < iVar12) {
          if ((iVar10 <= local_14) || (bVar13 = true, *(char *)(param_1 + 0x3d7) != '\0')) {
            bVar13 = false;
          }
          if ((((iVar10 < local_14) || (*(char *)(param_1 + 0x1e) == '\0')) ||
              (*(char *)(param_1 + 0x20) == '\0')) || (*(char *)(param_1 + 0x3d7) != '\0'))
          goto LAB_00ae0e7d;
          bVar1 = 1;
        }
      }
      if (-1 < *(int *)(param_1 + 0x29c)) {
        bVar14 = *(char *)(param_1 + 0x31) == '\0';
        iVar9 = iVar12;
        if (bVar14) {
          iVar9 = iVar12 + 1;
        }
        bVar1 = bVar1 & (bVar14 && SBORROW4(iVar12,-1)) == iVar9 < 0;
      }
      iVar9 = (*(int *)(param_1 + 0x278) - *(int *)(param_1 + 0x27c) >> 2) + local_14;
      iVar12 = iVar9 + 0x1000000;
      iVar12 = ((int)(iVar12 + (iVar12 >> 0x1f & 0x3fU)) >> 6) + -0x40000;
      pvVar7 = *(void **)(*(int *)(*(int *)(param_1 + 0x284) + iVar12 * 4) +
                         (iVar9 + iVar12 * -0x40) * 4);
      FUN_006fa8a0(pvVar7,1,bVar1);
      FUN_006fa8a0(pvVar7,2,-(cVar11 != '\0') & bVar13);
      FUN_006fa8a0(pvVar7,4,bVar13);
      local_14 = local_14 + 1;
    } while (local_14 < iVar8);
  }
  if ((*(int *)(param_1 + 0x29c) < 0) || (local_10 = '\x01', *(char *)(param_1 + 0x1e) == '\0')) {
    local_10 = '\0';
  }
  FUN_006fa8a0(*(void **)(param_1 + 0x26c),1,local_10);
  FUN_006fa8a0(*(void **)(param_1 + 0x26c),2,'\0');
  if (*(char *)(param_1 + 0x3d8) == '\0') {
    if ((*(int *)(param_1 + 0x29c) < 0) ||
       (cVar11 = '\x01', *(char *)(*(int *)(param_1 + 0x18) + 0x430) != '\0')) {
      cVar11 = '\0';
    }
  }
  else if (((*(int *)(param_1 + 0x29c) < 0) || (*(char *)(*(int *)(param_1 + 0x18) + 0x430) != '\0')
           ) || (cVar11 = '\x01', *(char *)(param_1 + 0x3d7) != '\0')) {
    cVar11 = '\0';
  }
  FUN_006fa8a0(*(void **)(param_1 + 0x268),1,cVar11);
  FUN_006fa8a0(*(void **)(param_1 + 0x268),2,'\0');
  cVar11 = *(char *)(*(int *)(param_1 + 0x18) + 0x430);
  if (*(char *)(param_1 + 0x3d4) != cVar11) {
    *(char *)(param_1 + 0x3d4) = cVar11;
    if (*(void **)(param_1 + 0x248) != (void *)0x0) {
      thunk_FUN_00a69420(*(void **)(param_1 + 0x248),cVar11 == '\0');
    }
  }
  if (*(char *)(param_1 + 0x3d8) != '\0') {
    if ((bVar5) && (*(int *)(param_1 + 0x29c) == 0)) {
      *(undefined1 *)(param_1 + 0x3d9) = 1;
      return;
    }
    *(undefined1 *)(param_1 + 0x3d9) = 0;
  }
  return;
}

