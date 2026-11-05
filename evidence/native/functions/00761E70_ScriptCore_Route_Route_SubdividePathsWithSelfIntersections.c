/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x01161960 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_SubdividePathsWithSelfIntersections [assembly=ScriptCore
   token=0x0600110F; handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Route::Route_SubdividePathsWithSelfIntersections(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int ****ppppiVar3;
  int ***pppiVar4;
  bool bVar5;
  int iVar6;
  char cVar7;
  int *piVar8;
  uint *puVar9;
  undefined4 uVar10;
  int *****pppppiVar11;
  int iVar12;
  float *pfVar13;
  int *piVar14;
  int *piVar15;
  int ****ppppiVar16;
  int iVar17;
  int *piVar18;
  float *pfStack_120;
  int iStack_10c;
  float *pfStack_108;
  int *****pppppiStack_104;
  int *****pppppiStack_100;
  char *pcStack_fc;
  float *pfStack_f8;
  int ****ppppiStack_f4;
  int ****ppppiStack_f0;
  int iStack_ec;
  float *pfStack_e8;
  int iStack_e4;
  int *piStack_e0;
  int *piStack_dc;
  int *piStack_d8;
  int *piStack_d4;
  char *pcStack_d0;
  int iStack_cc;
  int iStack_c8;
  int iStack_c4;
  int iStack_c0;
  int iStack_bc;
  int iStack_b8;
  undefined4 uStack_b4;
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
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar8 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar8 != (int *)0x0))
  {
    (**(code **)(*piVar8 + 0x10))();
    iVar6 = piVar8[0x3d];
    iStack_e4 = piVar8[0x3c];
    pppppiStack_104 = (int *****)&pppppiStack_104;
    pcStack_fc = "Scratch/Locomotion/newRoutingPaths";
    piStack_e0 = (int *)piVar8[0x38];
    piStack_dc = (int *)0x0;
    piStack_d8 = (int *)0x0;
    piStack_d4 = (int *)0x0;
    pcStack_d0 = "Scratch/Locomotion/intersections";
    bVar5 = false;
    iStack_ec = 0;
    pppppiStack_100 = pppppiStack_104;
    iStack_cc = iStack_e4;
    if (piStack_e0 != piVar8 + 0x38) {
      do {
        piVar18 = piStack_dc;
        ppppiVar16 = (int ****)piStack_e0[2];
        if (ppppiVar16 != (int ****)0x0) {
          LOCK();
          ppppiVar16[1] = (int ***)((int)ppppiVar16[1] + 1);
          UNLOCK();
        }
        piStack_d8 = piStack_dc;
        ppppiStack_f0 = ppppiVar16;
        puVar9 = (uint *)(*(code *)(*ppppiVar16)[0x37])();
        pfStack_f8 = (float *)*puVar9;
        pfVar13 = (float *)(puVar9[1] - 0x30);
        iStack_10c = 0;
        pfStack_e8 = pfVar13;
        if (pfStack_f8 < pfVar13) {
          pfStack_120 = pfStack_f8 + 0x18;
          do {
            iVar17 = iStack_10c + 2;
            if (pfStack_120 < pfVar13) {
              piVar14 = piVar18;
              pfStack_108 = pfStack_120;
              fStack_80 = pfStack_120[-0xc];
              fStack_7c = pfStack_120[-0xb];
              fStack_78 = pfStack_120[-10];
              fStack_74 = pfStack_120[-9];
              fStack_60 = *pfStack_f8;
              fStack_5c = pfStack_f8[1];
              fStack_58 = pfStack_f8[2];
              fStack_54 = pfStack_f8[3];
              fStack_50 = pfStack_120[-0xc];
              fStack_4c = pfStack_120[-0xb];
              fStack_48 = pfStack_120[-10];
              fStack_44 = pfStack_120[-9];
              fStack_40 = *pfStack_f8;
              fStack_3c = pfStack_f8[1];
              fStack_38 = pfStack_f8[2];
              fStack_34 = pfStack_f8[3];
              do {
                fStack_98 = *pfStack_108;
                fStack_8c = pfStack_108[1];
                fStack_94 = pfStack_108[2];
                fStack_84 = pfStack_108[3];
                fStack_b0 = pfStack_108[0xc];
                fStack_2c = pfStack_108[0xd];
                fStack_ac = pfStack_108[0xe];
                fStack_24 = pfStack_108[0xf];
                fStack_a8 = fStack_50;
                fStack_a4 = fStack_78;
                fStack_a0 = fStack_60;
                fStack_9c = fStack_38;
                fStack_90 = fStack_98;
                fStack_88 = fStack_94;
                fStack_70 = fStack_98;
                fStack_6c = fStack_8c;
                fStack_68 = fStack_94;
                fStack_64 = fStack_84;
                fStack_30 = fStack_b0;
                fStack_28 = fStack_ac;
                fStack_20 = fStack_b0;
                fStack_1c = fStack_2c;
                fStack_18 = fStack_ac;
                fStack_14 = fStack_24;
                uVar10 = TryIntersectSegments2D
                                   (&fStack_a0,&fStack_a8,&fStack_98,&fStack_b0,(float *)0x0,0.01);
                piVar18 = piVar14;
                if ((char)uVar10 != '\0') {
                  iStack_c8 = iStack_10c + 1;
                  iStack_b8 = (iStack_c8 + iVar17) / 2;
                  uStack_b4 = 1;
                  iStack_c4 = iVar17;
                  iStack_c0 = iStack_c8;
                  iStack_bc = iVar17;
                  if (piVar14 < piStack_d4) {
                    piStack_d8 = piVar14 + 6;
                    piVar18 = piStack_d8;
                    if (piVar14 != (int *)0x0) {
                      *piVar14 = iStack_c8;
                      piVar14[1] = iVar17;
                      piVar14[2] = iStack_c8;
                      piVar14[3] = iVar17;
                      piVar14[4] = iStack_b8;
                      piVar14[5] = 1;
                    }
                  }
                  else {
                    FUN_00507490(&piStack_dc,piVar14,&iStack_c8);
                    piVar18 = piStack_d8;
                  }
                }
                pfStack_108 = pfStack_108 + 0xc;
                iVar17 = iVar17 + 1;
                piVar14 = piVar18;
              } while (pfStack_108 < pfStack_e8);
              pfVar13 = pfStack_e8;
              ppppiVar16 = ppppiStack_f0;
            }
            iStack_10c = iStack_10c + 1;
            pfStack_f8 = pfStack_f8 + 0xc;
            pfStack_120 = pfStack_120 + 0xc;
          } while (pfStack_f8 < pfVar13);
          if (piStack_dc != piVar18) {
            pfStack_120 = (float *)(((int)piVar18 - (int)piStack_dc) / 0x18);
            if (0 < (int)pfStack_120) {
              pfStack_108 = (float *)0x1;
              piVar18 = piStack_dc + 5;
              iStack_10c = (int)pfStack_120;
              do {
                if ((*piVar18 != 0) && ((int)pfStack_108 < (int)pfStack_120)) {
                  pfStack_f8 = (float *)((int)pfStack_120 - (int)pfStack_108);
                  piVar14 = piVar18 + 4;
                  do {
                    if (piVar14[2] != 0) {
                      piVar1 = piVar18 + -2;
                      if (piVar14[-1] <= piVar18[-2]) {
                        piVar2 = piVar18 + -3;
                        if (piVar18[-3] <= *piVar14) {
                          piVar15 = piVar14 + -1;
                          if (piVar14[-1] <= piVar18[-3]) {
                            piVar15 = piVar2;
                          }
                          *piVar2 = *piVar15;
                          piVar15 = piVar14;
                          if (*piVar1 <= *piVar14) {
                            piVar15 = piVar1;
                          }
                          iVar17 = *piVar15;
                          *piVar1 = iVar17;
                          piVar18[-1] = (*piVar2 + iVar17) / 2;
                          *piVar18 = *piVar18 + piVar14[2];
                          piVar14[2] = 0;
                        }
                      }
                    }
                    piVar14 = piVar14 + 6;
                    pfStack_f8 = (float *)((int)pfStack_f8 + -1);
                  } while (pfStack_f8 != (float *)0x0);
                  pfStack_f8 = (float *)0x0;
                  ppppiVar16 = ppppiStack_f0;
                }
                pfStack_108 = (float *)((int)pfStack_108 + 1);
                piVar18 = piVar18 + 6;
                iStack_10c = iStack_10c + -1;
              } while (iStack_10c != 0);
            }
            iVar17 = 0;
            if (0 < (int)pfStack_120) {
              piVar18 = piStack_dc + 4;
              do {
                if (piVar18[1] != 0) {
                  ppppiStack_f4 = (int ****)0x0;
                  cVar7 = (*(code *)(*ppppiVar16)[0x45])(&ppppiStack_f4,*piVar18 - iVar17);
                  if (cVar7 != '\0') {
                    pppppiVar11 = (int *****)FUN_004e4500(0xc,pcStack_fc,0);
                    if ((pppppiVar11 + 2 != (int *****)0x0) &&
                       (pppppiVar11[2] = ppppiStack_f4, ppppiStack_f4 != (int ****)0x0)) {
                      LOCK();
                      ppppiStack_f4[1] = (int ***)((int)ppppiStack_f4[1] + 1);
                      UNLOCK();
                    }
                    *pppppiVar11 = (int ****)&pppppiStack_104;
                    pppppiVar11[1] = (int ****)pppppiStack_100;
                    *pppppiStack_100 = (int ****)pppppiVar11;
                    pppppiStack_100 = pppppiVar11;
                    iVar12 = (*(code *)(*ppppiStack_f4)[0x12])();
                    iVar17 = iVar17 + iVar12;
                    bVar5 = true;
                    if (((char)iVar6 != '\0') && (iStack_ec <= iStack_cc)) {
                      iStack_e4 = iStack_e4 + 1;
                    }
                  }
                  if (ppppiStack_f4 != (int ****)0x0) {
                    ppppiVar16 = ppppiStack_f4 + 1;
                    LOCK();
                    pppiVar4 = *ppppiVar16;
                    *ppppiVar16 = (int ***)((int)*ppppiVar16 + -1);
                    UNLOCK();
                    if (pppiVar4 == (int ***)0x1) {
                      LOCK();
                      *ppppiVar16 = (int ***)0x1;
                      UNLOCK();
                      if (ppppiStack_f4 != (int ****)0x0) {
                        (*(code *)**ppppiStack_f4)(1);
                      }
                    }
                  }
                }
                piVar18 = piVar18 + 6;
                pfStack_120 = (float *)((int)pfStack_120 + -1);
                ppppiVar16 = ppppiStack_f0;
              } while (pfStack_120 != (float *)0x0);
            }
          }
        }
        pppppiVar11 = (int *****)FUN_004e4500(0xc,pcStack_fc,0);
        if (pppppiVar11 + 2 != (int *****)0x0) {
          pppppiVar11[2] = ppppiVar16;
          LOCK();
          ppppiVar16[1] = (int ***)((int)ppppiVar16[1] + 1);
          UNLOCK();
        }
        *pppppiVar11 = (int ****)&pppppiStack_104;
        pppppiVar11[1] = (int ****)pppppiStack_100;
        *pppppiStack_100 = (int ****)pppppiVar11;
        ppppiVar3 = ppppiVar16 + 1;
        LOCK();
        pppiVar4 = *ppppiVar3;
        *ppppiVar3 = (int ***)((int)*ppppiVar3 + -1);
        UNLOCK();
        pppppiStack_100 = pppppiVar11;
        if (pppiVar4 == (int ***)0x1) {
          LOCK();
          *ppppiVar3 = (int ***)0x1;
          UNLOCK();
          (*(code *)**ppppiVar16)(1);
        }
        piStack_e0 = (int *)*piStack_e0;
        iStack_ec = iStack_ec + 1;
        piVar18 = piVar8 + 0x38;
      } while (piStack_e0 != piVar18);
      if (bVar5) {
        FUN_0084b160(piVar18);
        *piVar18 = (int)piVar18;
        piVar8[0x39] = (int)piVar18;
        FUN_0075fe10(piVar18,&pppppiStack_104);
        FUN_00756970((int)piVar8);
        if (((char)iVar6 != '\0') && (iStack_e4 != piVar8[0x3c])) {
          piVar8[0x3c] = iStack_e4;
          FUN_00757380(piVar8);
        }
      }
    }
    if (piStack_dc != (int *)0x0) {
      Memory_FreeIfNonNull(piStack_dc);
    }
    FUN_0084b160(&pppppiStack_104);
    (**(code **)(*piVar8 + 0x14))();
  }
  return;
}

