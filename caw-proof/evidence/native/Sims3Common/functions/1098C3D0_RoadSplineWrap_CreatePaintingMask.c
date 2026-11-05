/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadSplineWrap_CreatePaintingMask. Export
   ordinal(s): 2069. Entry VA: 0x1098c3d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600022B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl RoadSplineWrap_CreatePaintingMask(int *param_1,int param_2)

{
  float fVar1;
  uint uVar2;
  void *this;
  int iVar3;
  int iVar4;
  undefined4 uVar5;
  uint in_EAX;
  int *piVar6;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  uint uVar7;
  uint uVar8;
  float10 fVar9;
  float fVar10;
  ulonglong uVar11;
  double dVar12;
  double dVar13;
  int *piStack_e0;
  int *piStack_dc;
  undefined4 uStack_d8;
  char *pcStack_d4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  uint uStack_6c;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  undefined4 auStack_50 [19];
  
  iVar3 = DAT_10c700c4;
                    /* 0x98c3d0  2069  RoadSplineWrap_CreatePaintingMask */
  if ((((param_1 != (int *)0x0) && (DAT_10c700c4 != 0)) &&
      (uVar2 = FUN_10234f10(DAT_10c700c4), in_EAX = uVar2, uVar2 != 0)) &&
     (iVar4 = *(int *)(iVar3 + 0x54), iVar4 != 0)) {
    this = (void *)FUN_106b6a50(iVar4);
    in_EAX = 0;
    if (this != (void *)0x0) {
      iVar3 = FUN_10409fe0(iVar3);
      in_EAX = 0;
      if (iVar3 != 0) {
        fVar10 = (float)*(int *)(param_2 + 0x10);
        piStack_e0 = (int *)0x0;
        piStack_dc = (int *)0x0;
        uStack_d8 = 0;
        pcStack_d4 = "CreateRoadSplinePaintingMask/subQuadsMatrix";
        if (*(int *)(param_2 + 0x10) < 0) {
          fVar10 = fVar10 + _DAT_10aae190;
        }
        FUN_101558a0(uVar2,param_1,fVar10,&piStack_e0,'\0');
        piVar6 = piStack_e0;
        if (piStack_e0 != piStack_dc) {
          do {
            iVar4 = *piVar6;
            iVar3 = iVar4 + 0x30;
            if (iVar3 != piVar6[1]) {
              do {
                FUN_10153880(iVar4,iVar3,auStack_50);
                FUN_1013cfc0(&fStack_d0,(undefined1 (*) [16])auStack_50);
                fStack_80 = fStack_c4;
                fStack_7c = fStack_c4;
                fStack_78 = fStack_c4;
                fStack_74 = fStack_c4;
                dVar12 = ceil((double)fStack_c4);
                fStack_60 = fStack_c8;
                fStack_5c = fStack_c8;
                fStack_58 = fStack_c8;
                fStack_54 = fStack_c8;
                dVar13 = ceil((double)fStack_c8);
                fStack_a0 = fStack_cc;
                fStack_9c = fStack_cc;
                fStack_98 = fStack_cc;
                fStack_94 = fStack_cc;
                fStack_b0 = fStack_d0;
                fStack_ac = fStack_d0;
                fStack_a8 = fStack_d0;
                fStack_a4 = fStack_d0;
                floor((double)fStack_d0);
                uVar11 = FUN_10a90930(extraout_ECX,extraout_EDX);
                uVar8 = (uint)uVar11;
                floor((double)fStack_a0);
                uVar11 = FUN_10a90930(extraout_ECX_00,extraout_EDX_00);
                uVar2 = (uint)uVar11;
                uStack_6c = uVar2;
                if ((int)uVar8 <= (int)dVar13) {
                  do {
                    if ((int)uVar2 <= (int)dVar12) {
                      fVar10 = (float)(int)uVar8;
                      uVar7 = uVar2;
                      do {
                        fVar1 = (float)(int)uVar7;
                        uVar2 = FUN_101548a0(fVar10,fVar1,auStack_50);
                        if ((char)uVar2 != '\0') {
                          fStack_c0 = fVar10;
                          fStack_bc = fVar1;
                          fStack_b8 = fVar10;
                          fStack_b4 = fVar10;
                          fStack_90 = fVar10;
                          fStack_8c = fVar1;
                          fStack_88 = fVar10;
                          fStack_84 = fVar10;
                          fVar9 = FUN_10153540(param_1,param_2,&fStack_90);
                          FUN_101f1d00(this,uVar8,uVar7,1,(float)fVar9);
                        }
                        uVar7 = uVar7 + 1;
                        uVar2 = uStack_6c;
                      } while ((int)uVar7 <= (int)dVar12);
                    }
                    uVar8 = uVar8 + 1;
                  } while ((int)uVar8 <= (int)dVar13);
                }
                iVar4 = iVar4 + 0x30;
                iVar3 = iVar3 + 0x30;
              } while (iVar3 != piVar6[1]);
            }
            piVar6 = piVar6 + 4;
          } while (piVar6 != piStack_dc);
          FUN_101f0490((int)this);
          uVar5 = FUN_100a46e0((int *)&piStack_e0);
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
        in_EAX = FUN_100a46e0((int *)&piStack_e0);
      }
    }
  }
  return in_EAX & 0xffffff00;
}

