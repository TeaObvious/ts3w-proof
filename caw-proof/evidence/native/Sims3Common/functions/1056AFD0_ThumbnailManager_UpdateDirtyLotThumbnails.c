/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_UpdateDirtyLotThumbnails. Export
   ordinal(s): 1063. Entry VA: 0x1056afd0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000380. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl ThumbnailManager_UpdateDirtyLotThumbnails(undefined4 param_1)

{
  int iVar1;
  undefined4 uVar2;
  bool bVar3;
  void *pvVar4;
  byte bVar5;
  int *piVar6;
  void *this;
  undefined4 uVar7;
  undefined **ppuVar8;
  uint uVar9;
  uint uVar10;
  int *unaff_EDI;
  undefined8 uVar11;
  undefined1 uStack_186;
  int *piStack_184;
  undefined **ppuStack_174;
  undefined **ppuStack_170;
  int *local_16c;
  int *piStack_168;
  void *pvStack_164;
  undefined **appuStack_160 [2];
  undefined2 uStack_158;
  undefined2 uStack_156;
  undefined1 uStack_150;
  undefined4 uStack_140;
  undefined4 uStack_138;
  int aiStack_130 [4];
  int iStack_120;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  int iStack_a0;
  int iStack_90;
  
                    /* 0x56afd0  1063  ThumbnailManager_UpdateDirtyLotThumbnails */
  piVar6 = (int *)FUN_1055b120();
  local_16c = piVar6;
  uVar11 = (**(code **)(*piVar6 + 0x118))();
  pvVar4 = DAT_10c700c4;
  uStack_186 = 0;
  pvStack_164 = DAT_10c71150;
  if ((DAT_10c700c4 != (void *)0x0) && (DAT_10c71150 != (void *)0x0)) {
    uStack_186 = 1;
    bVar3 = false;
    this = (void *)FUN_10918eb0(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piStack_184 = (int *)0x0;
    }
    else {
      piStack_184 = FUN_10569cf0(this,(int)uVar11,(int)((ulonglong)uVar11 >> 0x20),param_1);
      if (piStack_184 != (int *)0x0) {
        (**(code **)(*piStack_184 + 4))();
      }
    }
    piStack_168 = (int *)FUN_1023d040(pvVar4,'\x01');
    ppuVar8 = (undefined **)(piStack_168[1] - *piStack_168 >> 2);
    ppuStack_174 = (undefined **)0x0;
    ppuStack_170 = ppuVar8;
    if (ppuVar8 != (undefined **)0x0) {
      do {
        iVar1 = *(int *)(*piStack_168 + (int)ppuStack_174 * 4);
        if (iVar1 != 0) {
          uVar7 = *(undefined4 *)(iVar1 + 0x48);
          uVar2 = *(undefined4 *)(iVar1 + 0x4c);
          FUN_100fb440(aiStack_130);
          uStack_ac = 0;
          uStack_138 = 0;
          uStack_b0 = 0x436fee4c;
          uVar10 = 0;
          uVar9 = 1;
          uStack_140 = uVar7;
          uStack_b8 = uVar7;
          uStack_b4 = uVar2;
          do {
            if ((uVar9 & 4) != 0) {
              FUN_100fdc20(aiStack_130,uVar10,0,uStack_140,uVar2,uVar10 + 0xd84e7fc4,0);
            }
            pvVar4 = pvStack_164;
            uVar10 = uVar10 + 1;
            uVar9 = uVar9 * 2;
          } while (uVar10 < 4);
          bVar5 = FUN_10326ac0(pvStack_164,aiStack_130);
          if ((bVar5 == 0) &&
             (uVar7 = FUN_10336580(pvVar4,aiStack_130,(int *)0x0,(LPCRITICAL_SECTION)0x0,(int *)0x0,
                                   piStack_184), (char)uVar7 != '\0')) {
            bVar3 = true;
          }
          if ((iStack_a0 != 0) && (iStack_a0 != iStack_90)) {
            FUN_10918e90(iStack_a0);
          }
          ppuVar8 = ppuStack_170;
          piVar6 = local_16c;
          if ((aiStack_130[0] != 0) && (aiStack_130[0] != iStack_120)) {
            FUN_10918e90(aiStack_130[0]);
            ppuVar8 = ppuStack_170;
            piVar6 = local_16c;
          }
        }
        ppuStack_174 = (undefined **)((int)ppuStack_174 + 1);
      } while (ppuStack_174 < ppuVar8);
      if (bVar3) {
        (**(code **)(*piVar6 + 0x120))(uVar11,0xffffffff,param_1,0);
        (**(code **)(*piVar6 + 0x11c))();
        if (unaff_EDI == (int *)0x0) {
          return;
        }
        (**(code **)(*unaff_EDI + 8))();
        return;
      }
    }
    if (piStack_184 != (int *)0x0) {
      (**(code **)(*piStack_184 + 8))();
    }
  }
  uStack_150 = uStack_186;
  appuStack_160[0] = &PTR_FUN_10aca5b4;
  uStack_156 = 1;
  uStack_158 = 0;
  (**(code **)(*piVar6 + 0x130))(param_1,uVar11,appuStack_160,0);
  ppuStack_174 = &PTR_FUN_10aca5b4;
  if (((uint)local_16c & 4) != 0) {
    FUN_10928a90(&ppuStack_174,'\0');
  }
  return;
}

