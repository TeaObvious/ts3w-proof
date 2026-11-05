/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_CreateScriptErrorFileImpl. Export
   ordinal(s): 747. Entry VA: 0x1055f9d0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010E9. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

char * __cdecl Simulator_CreateScriptErrorFileImpl(int *param_1)

{
  short sVar1;
  char *pcVar2;
  char cVar3;
  int *piVar4;
  ushort *puVar5;
  LPCWSTR pWVar6;
  int *piVar7;
  short *psVar8;
  undefined4 uVar9;
  void *this;
  undefined **ppuVar10;
  int *******pppppppiVar11;
  int iVar12;
  short *psVar13;
  int *piVar14;
  byte bVar15;
  uint uVar16;
  short *psStack_58c;
  int *piStack_588;
  undefined2 *puStack_584;
  char *pcStack_580;
  uint auStack_57c [2];
  int *******pppppppiStack_574;
  int *******pppppppiStack_570;
  undefined4 uStack_56c;
  int iStack_568;
  char *pcStack_564;
  undefined *puStack_560;
  undefined *puStack_55c;
  undefined2 *puStack_558;
  char *pcStack_554;
  int *piStack_550;
  int *piStack_54c;
  int *piStack_548;
  char *pcStack_544;
  int iStack_540;
  undefined4 uStack_53c;
  undefined **ppuStack_538;
  undefined4 uStack_534;
  undefined **appuStack_530 [2];
  undefined2 uStack_528;
  undefined2 uStack_526;
  undefined1 auStack_510 [256];
  undefined1 auStack_410 [1040];
  
                    /* 0x55f9d0  747  Simulator_CreateScriptErrorFileImpl */
  piVar4 = (int *)FUN_105219c0();
  puVar5 = (ushort *)(**(code **)(*piVar4 + 0x24))();
  FUN_10922390(auStack_410,puVar5);
  pWVar6 = (LPCWSTR)FUN_10a2ece0(auStack_410);
  FUN_10911f10(pWVar6);
  piVar4 = (int *)0x0;
  iStack_540 = 0;
  uStack_53c = 0;
  ppuStack_538 = (undefined **)0x0;
  uStack_534 = 0;
  piStack_550 = (int *)0x0;
  piStack_54c = (int *)0x0;
  piStack_548 = (int *)0x0;
  pcStack_544 = "Scripting/ScriptError/fileList";
  uStack_56c = FUN_1090eca0();
  uVar16 = 0x100000;
  pppppppiVar11 = (int *******)&pppppppiStack_574;
  bVar15 = 2;
  puVar5 = (ushort *)0x0;
  iStack_568 = 0;
  pcStack_564 = "Scripting/ScriptError/Dirs";
  pppppppiStack_574 = pppppppiVar11;
  pppppppiStack_570 = pppppppiVar11;
  piVar7 = (int *)FUN_10a2ece0(auStack_410);
  FUN_1090f280(piVar7,(int *)pppppppiVar11,puVar5,bVar15,uVar16);
  pppppppiVar11 = pppppppiStack_574;
  piVar7 = piVar4;
  piVar14 = (int *)0x0;
  if ((int ********)pppppppiStack_574 != &pppppppiStack_574) {
    do {
      uVar16 = FUN_10932c50((short *)pppppppiVar11[3],L"ScriptError_*.xml",'\0');
      piVar4 = piVar7;
      if ((char)uVar16 != '\0') {
        pcStack_580 = "Scripting/ScriptError/Filename";
        psStack_58c = (short *)&_Dst_10ca8244;
        piStack_588 = (int *)&_Dst_10ca8244;
        puStack_584 = &DAT_10ca8246;
        psVar8 = (short *)FUN_10a2ece0(auStack_410);
        sVar1 = *psVar8;
        psVar13 = psVar8;
        while (sVar1 != 0) {
          psVar13 = psVar13 + 1;
          sVar1 = *psVar13;
        }
        FUN_1001f8c0(&psStack_58c,psVar8,(int *)(psVar8 + ((int)psVar13 - (int)psVar8 >> 1)));
        FUN_1001f3b0(&psStack_58c,(int *)pppppppiVar11[3],(int *)pppppppiVar11[4]);
        if (piVar7 < piStack_548) {
          piVar4 = piVar7 + 4;
          piStack_54c = piVar4;
          if (piVar7 != (int *)0x0) {
            FUN_1006a320(piVar7,&psStack_58c);
          }
        }
        else {
          FUN_10531670(&piStack_550,piVar7,&psStack_58c);
          piVar4 = piStack_54c;
        }
        if ((2 < (int)((int)puStack_584 - (int)psStack_58c & 0xfffffffeU)) &&
           (psStack_58c != (short *)0x0)) {
          FUN_10918e90((int)psStack_58c);
        }
      }
      pppppppiVar11 = (int *******)*pppppppiVar11;
      piVar7 = piVar4;
      piVar14 = piStack_550;
    } while ((int ********)pppppppiVar11 != &pppppppiStack_574);
  }
  if (10 < (uint)((int)piVar4 - (int)piVar14 >> 4)) {
    FUN_10531430(piVar14,piVar14 + 0x28,piVar4,&LAB_1055ecf0);
    iVar12 = 10;
    for (piVar7 = piVar14; piVar7 != piVar4; piVar7 = piVar7 + 4) {
      if (iVar12 < 1) {
        FUN_10910a90((LPCWSTR)*piVar7);
      }
      else {
        iVar12 = iVar12 + -1;
      }
    }
  }
  FUN_10072310(&pppppppiStack_574);
  for (piVar7 = piVar14; piVar7 < piVar4; piVar7 = piVar7 + 4) {
    iVar12 = *piVar7;
    if ((2 < (int)(piVar7[2] - iVar12 & 0xfffffffeU)) && (iVar12 != 0)) {
      FUN_10918e90(iVar12);
    }
  }
  if (piVar14 != (int *)0x0) {
    FUN_10918e90((int)piVar14);
  }
  *param_1 = 0;
  piVar4 = (int *)FUN_1055b120();
  FUN_1092d2e0(auStack_57c,-1);
  FUN_1092d2e0(auStack_57c,0);
  FUN_10934b70(auStack_510,0x100);
  pcStack_580 = "Scripting/ScriptError/Filename";
  psStack_58c = (short *)&_Dst_10ca8244;
  piStack_588 = (int *)&_Dst_10ca8244;
  puStack_584 = &DAT_10ca8246;
  FUN_1092d300(auStack_57c);
  FUN_1092cc20(10);
  FUN_1092cc20(9);
  FUN_1092cc20(8);
  FUN_1092cc20(1);
  FUN_1092cc20(6);
  FUN_1092cc20(2);
  FUN_1006aff0(&psStack_58c,(ushort *)L"ScriptError_%hs__%02d-%02d-%04d__%02d-%02d-%02d__%08X.xml");
  FUN_10922620(auStack_410,psStack_58c,0);
  pWVar6 = (LPCWSTR)FUN_10a2ece0(auStack_410);
  pcStack_554 = "Scripting/ScriptError/RetString";
  puStack_560 = &_Dst_10ca8244;
  puStack_55c = &_Dst_10ca8244;
  puStack_558 = &DAT_10ca8246;
  uVar9 = FUN_109109e0(pWVar6,'\0');
  psVar13 = psStack_58c;
  if ((char)uVar9 == '\0') {
    ppuVar10 = FUN_10926db0(&iStack_540,(LPCWSTR)"ERROR: unable to write to a file",0xffffffff,
                            "Scripting/ScriptError/ErrorString");
    if (ppuVar10 != &puStack_560) {
      FUN_1001f8c0(&puStack_560,*ppuVar10,(int *)ppuVar10[1]);
    }
    psVar13 = psStack_58c;
    if ((2 < (int)((int)ppuStack_538 - iStack_540 & 0xfffffffeU)) && (iStack_540 != 0)) {
      FUN_10918e90(iStack_540);
      psVar13 = psStack_58c;
    }
  }
  else {
    FUN_1001f8c0(&puStack_560,psStack_58c,piStack_588);
    this = (void *)FUN_10918eb0(0x228,"Scripting/ScriptError/FileStream",0);
    if (this == (void *)0x0) {
      piVar7 = (int *)0x0;
    }
    else {
      piVar7 = FUN_10910830(this,pWVar6);
    }
    cVar3 = (**(code **)(*piVar7 + 0x4c))(2,3,1,0);
    if (cVar3 != '\0') {
      iVar12 = (**(code **)(*piVar4 + 200))(piVar7,0x47);
      *param_1 = iVar12;
    }
    if (*param_1 == 0) {
      (**(code **)*piVar7)(1);
    }
  }
  appuStack_530[0] = &PTR_FUN_10aca5b4;
  uStack_526 = 0x13;
  uStack_528 = 0xb;
  FUN_10928b90(appuStack_530,0x13,9,&puStack_560,0x10,1);
  auStack_57c[1] = 0;
  piVar4 = (int *)FUN_1055b120();
  (**(code **)(*piVar4 + 0x50))(appuStack_530,auStack_57c + 1);
  pcVar2 = pcStack_580;
  ppuStack_538 = &PTR_FUN_10aca5b4;
  if (((uint)appuStack_530[0] & 4) != 0) {
    FUN_10928a90(&ppuStack_538,'\0');
  }
  if ((2 < (int)((int)puStack_560 - iStack_568 & 0xfffffffeU)) && (iStack_568 != 0)) {
    FUN_10918e90(iStack_568);
  }
  if ((2 < (int)((int)psStack_58c - (int)psVar13 & 0xfffffffeU)) && (psVar13 != (short *)0x0)) {
    FUN_10918e90((int)psVar13);
  }
  return pcVar2;
}

