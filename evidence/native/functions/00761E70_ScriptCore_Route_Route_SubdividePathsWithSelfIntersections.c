/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01161960 (original PC 1.67 TS3W.exe).
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
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  char cVar23;
  int *piVar24;
  uint *puVar25;
  undefined4 uVar26;
  int *****pppppiVar27;
  int iVar28;
  float *pfVar29;
  int *piVar30;
  float *pfVar31;
  int *piVar32;
  int ****ppppiVar33;
  int iVar34;
  int *piVar35;
  int iStack_120;
  int iStack_10c;
  float *pfStack_108;
  int ****ppppiStack_104;
  int ****ppppiStack_100;
  char *pcStack_fc;
  float *pfStack_f8;
  int ***pppiStack_f4;
  int ***pppiStack_f0;
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
     (piVar24 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar24 != (int *)0x0)) {
    (**(code **)(*piVar24 + 0x10))();
    iVar6 = piVar24[0x3d];
    iStack_e4 = piVar24[0x3c];
    ppppiStack_104 = (int ****)&ppppiStack_104;
    pcStack_fc = "Scratch/Locomotion/newRoutingPaths";
    piStack_e0 = (int *)piVar24[0x38];
    piStack_dc = (int *)0x0;
    piStack_d8 = (int *)0x0;
    piStack_d4 = (int *)0x0;
    pcStack_d0 = "Scratch/Locomotion/intersections";
    bVar5 = false;
    iStack_ec = 0;
    ppppiStack_100 = ppppiStack_104;
    iStack_cc = iStack_e4;
    if (piStack_e0 != piVar24 + 0x38) {
      do {
        piVar35 = piStack_dc;
        ppppiVar33 = (int ****)piStack_e0[2];
        if (ppppiVar33 != (int ****)0x0) {
          LOCK();
          ppppiVar33[1] = (int ***)((int)ppppiVar33[1] + 1);
          UNLOCK();
        }
        piStack_d8 = piStack_dc;
        pppiStack_f0 = (int ***)ppppiVar33;
        puVar25 = (uint *)(*(code *)(*ppppiVar33)[0x37])();
        pfStack_f8 = (float *)*puVar25;
        pfVar29 = (float *)(puVar25[1] - 0x30);
        iStack_10c = 0;
        pfStack_e8 = pfVar29;
        if (pfStack_f8 < pfVar29) {
          pfVar31 = pfStack_f8 + 0x18;
          do {
            iVar34 = iStack_10c + 2;
            piVar30 = piVar35;
            pfStack_108 = pfVar31;
            fVar7 = pfVar31[-0xc];
            fVar8 = pfVar31[-0xb];
            fVar9 = pfVar31[-10];
            fVar10 = pfVar31[-9];
            fVar11 = *pfStack_f8;
            fVar12 = pfStack_f8[1];
            fVar13 = pfStack_f8[2];
            fVar14 = pfStack_f8[3];
            fVar15 = pfVar31[-0xc];
            fVar16 = pfVar31[-0xb];
            fVar17 = pfVar31[-10];
            fVar18 = pfVar31[-9];
            fVar19 = *pfStack_f8;
            fVar20 = pfStack_f8[1];
            fVar21 = pfStack_f8[2];
            fVar22 = pfStack_f8[3];
            if (pfVar31 < pfVar29) {
              do {
                fStack_34 = fVar22;
                fStack_38 = fVar21;
                fStack_3c = fVar20;
                fStack_40 = fVar19;
                fStack_44 = fVar18;
                fStack_48 = fVar17;
                fStack_4c = fVar16;
                fStack_50 = fVar15;
                fStack_54 = fVar14;
                fStack_58 = fVar13;
                fStack_5c = fVar12;
                fStack_60 = fVar11;
                fStack_74 = fVar10;
                fStack_78 = fVar9;
                fStack_7c = fVar8;
                fStack_80 = fVar7;
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
                uVar26 = FUN_007cdca0(&fStack_a0,&fStack_a8,&fStack_98,&fStack_b0,(float *)0x0,
                                      _DAT_0106e6ec);
                piVar30 = piVar35;
                if ((char)uVar26 != '\0') {
                  iStack_c8 = iStack_10c + 1;
                  iStack_b8 = (iStack_c8 + iVar34) / 2;
                  uStack_b4 = 1;
                  iStack_c4 = iVar34;
                  iStack_c0 = iStack_c8;
                  iStack_bc = iVar34;
                  if (piVar35 < piStack_d4) {
                    piStack_d8 = piVar35 + 6;
                    piVar30 = piStack_d8;
                    if (piVar35 != (int *)0x0) {
                      *piVar35 = iStack_c8;
                      piVar35[1] = iVar34;
                      piVar35[2] = iStack_c8;
                      piVar35[3] = iVar34;
                      piVar35[4] = iStack_b8;
                      piVar35[5] = 1;
                    }
                  }
                  else {
                    FUN_00507490(&piStack_dc,piVar35,&iStack_c8);
                    piVar30 = piStack_d8;
                  }
                }
                pfStack_108 = pfStack_108 + 0xc;
                iVar34 = iVar34 + 1;
                pfVar29 = pfStack_e8;
                ppppiVar33 = (int ****)pppiStack_f0;
                piVar35 = piVar30;
                fVar7 = fStack_80;
                fVar8 = fStack_7c;
                fVar9 = fStack_78;
                fVar10 = fStack_74;
                fVar11 = fStack_60;
                fVar12 = fStack_5c;
                fVar13 = fStack_58;
                fVar14 = fStack_54;
                fVar15 = fStack_50;
                fVar16 = fStack_4c;
                fVar17 = fStack_48;
                fVar18 = fStack_44;
                fVar19 = fStack_40;
                fVar20 = fStack_3c;
                fVar21 = fStack_38;
                fVar22 = fStack_34;
              } while (pfStack_108 < pfStack_e8);
            }
            iStack_10c = iStack_10c + 1;
            pfStack_f8 = pfStack_f8 + 0xc;
            pfVar31 = pfVar31 + 0xc;
            piVar35 = piVar30;
          } while (pfStack_f8 < pfVar29);
          if (piStack_dc != piVar30) {
            iStack_120 = ((int)piVar30 - (int)piStack_dc) / 0x18;
            if (0 < iStack_120) {
              pfStack_108 = (float *)0x1;
              piVar35 = piStack_dc + 5;
              iStack_10c = iStack_120;
              do {
                if ((*piVar35 != 0) && ((int)pfStack_108 < iStack_120)) {
                  pfStack_f8 = (float *)(iStack_120 - (int)pfStack_108);
                  piVar30 = piVar35 + 4;
                  do {
                    if (piVar30[2] != 0) {
                      piVar1 = piVar35 + -2;
                      if (piVar30[-1] <= piVar35[-2]) {
                        piVar2 = piVar35 + -3;
                        if (piVar35[-3] <= *piVar30) {
                          piVar32 = piVar30 + -1;
                          if (piVar30[-1] <= piVar35[-3]) {
                            piVar32 = piVar2;
                          }
                          *piVar2 = *piVar32;
                          piVar32 = piVar30;
                          if (*piVar1 <= *piVar30) {
                            piVar32 = piVar1;
                          }
                          iVar34 = *piVar32;
                          *piVar1 = iVar34;
                          piVar35[-1] = (*piVar2 + iVar34) / 2;
                          *piVar35 = *piVar35 + piVar30[2];
                          piVar30[2] = 0;
                        }
                      }
                    }
                    piVar30 = piVar30 + 6;
                    pfStack_f8 = (float *)((int)pfStack_f8 + -1);
                  } while (pfStack_f8 != (float *)0x0);
                  pfStack_f8 = (float *)0x0;
                  ppppiVar33 = (int ****)pppiStack_f0;
                }
                pfStack_108 = (float *)((int)pfStack_108 + 1);
                piVar35 = piVar35 + 6;
                iStack_10c = iStack_10c + -1;
              } while (iStack_10c != 0);
            }
            iVar34 = 0;
            if (0 < iStack_120) {
              piVar35 = piStack_dc + 4;
              do {
                if (piVar35[1] != 0) {
                  pppiStack_f4 = (int ***)0x0;
                  cVar23 = (*(code *)(*ppppiVar33)[0x45])(&pppiStack_f4,*piVar35 - iVar34);
                  if (cVar23 != '\0') {
                    pppppiVar27 = (int *****)FUN_004e4500(0xc,pcStack_fc,0);
                    if ((pppppiVar27 + 2 != (int *****)0x0) &&
                       (pppppiVar27[2] = (int ****)pppiStack_f4,
                       (int ****)pppiStack_f4 != (int ****)0x0)) {
                      LOCK();
                      pppiStack_f4[1] = (int **)((int)pppiStack_f4[1] + 1);
                      UNLOCK();
                    }
                    *pppppiVar27 = (int ****)&ppppiStack_104;
                    pppppiVar27[1] = ppppiStack_100;
                    *ppppiStack_100 = (int ***)pppppiVar27;
                    ppppiStack_100 = (int ****)pppppiVar27;
                    iVar28 = (*(code *)(*pppiStack_f4)[0x12])();
                    iVar34 = iVar34 + iVar28;
                    bVar5 = true;
                    if (((char)iVar6 != '\0') && (iStack_ec <= iStack_cc)) {
                      iStack_e4 = iStack_e4 + 1;
                    }
                  }
                  if ((int ****)pppiStack_f4 != (int ****)0x0) {
                    ppppiVar33 = (int ****)(pppiStack_f4 + 1);
                    LOCK();
                    pppiVar4 = *ppppiVar33;
                    *ppppiVar33 = (int ***)((int)*ppppiVar33 + -1);
                    UNLOCK();
                    if (pppiVar4 == (int ***)0x1) {
                      LOCK();
                      *ppppiVar33 = (int ***)0x1;
                      UNLOCK();
                      if ((int ****)pppiStack_f4 != (int ****)0x0) {
                        (*(code *)**pppiStack_f4)(1);
                      }
                    }
                  }
                }
                piVar35 = piVar35 + 6;
                iStack_120 = iStack_120 + -1;
                ppppiVar33 = (int ****)pppiStack_f0;
              } while (iStack_120 != 0);
            }
          }
        }
        pppppiVar27 = (int *****)FUN_004e4500(0xc,pcStack_fc,0);
        if (pppppiVar27 + 2 != (int *****)0x0) {
          pppppiVar27[2] = ppppiVar33;
          LOCK();
          ppppiVar33[1] = (int ***)((int)ppppiVar33[1] + 1);
          UNLOCK();
        }
        *pppppiVar27 = (int ****)&ppppiStack_104;
        pppppiVar27[1] = ppppiStack_100;
        *ppppiStack_100 = (int ***)pppppiVar27;
        ppppiVar3 = ppppiVar33 + 1;
        LOCK();
        pppiVar4 = *ppppiVar3;
        *ppppiVar3 = (int ***)((int)*ppppiVar3 + -1);
        UNLOCK();
        ppppiStack_100 = (int ****)pppppiVar27;
        if (pppiVar4 == (int ***)0x1) {
          LOCK();
          *ppppiVar3 = (int ***)0x1;
          UNLOCK();
          (*(code *)**ppppiVar33)(1);
        }
        piStack_e0 = (int *)*piStack_e0;
        iStack_ec = iStack_ec + 1;
        piVar35 = piVar24 + 0x38;
      } while (piStack_e0 != piVar35);
      if (bVar5) {
        FUN_0084b160(piVar35);
        *piVar35 = (int)piVar35;
        piVar24[0x39] = (int)piVar35;
        FUN_0075fe10(piVar35,&ppppiStack_104);
        FUN_00756970((int)piVar24);
        if (((char)iVar6 != '\0') && (iStack_e4 != piVar24[0x3c])) {
          piVar24[0x3c] = iStack_e4;
          FUN_00757380(piVar24);
        }
      }
    }
    if (piStack_dc != (int *)0x0) {
      FUN_004e44e0((int)piStack_dc);
    }
    FUN_0084b160(&ppppiStack_104);
    (**(code **)(*piVar24 + 0x14))();
  }
  return;
}

