/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* Verified PC 1.67 registration table at 0x01161fd0 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_CreateScriptErrorFileImpl [assembly=ScriptCore token=0x0600054C;
   fileHandle: System.UInt32&; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char * ScriptCore_Simulator__Simulator_CreateScriptErrorFileImpl(int *param_1)

{
  short sVar1;
  char *pcVar2;
  char cVar3;
  int *piVar4;
  ushort *puVar5;
  LPCWSTR pWVar6;
  short *psVar7;
  short *psVar8;
  undefined4 uVar9;
  void *this;
  int *piVar10;
  undefined1 **ppuVar11;
  int *******pppppppiVar12;
  int iVar13;
  int *piVar14;
  byte bVar15;
  uint uVar16;
  short *psStack_58c;
  undefined2 *puStack_588;
  undefined2 *puStack_584;
  char *pcStack_580;
  uint auStack_57c [2];
  int *******pppppppiStack_574;
  int *******pppppppiStack_570;
  undefined4 uStack_56c;
  int iStack_568;
  char *pcStack_564;
  undefined1 *puStack_560;
  undefined1 *puStack_55c;
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
  
  piVar4 = (int *)FUN_0072f140();
  puVar5 = (ushort *)(**(code **)(*piVar4 + 0x24))();
  FUN_004ee170(auStack_410,puVar5);
  pWVar6 = (LPCWSTR)FUN_007e51a0(auStack_410);
  FUN_004dd2f0(pWVar6);
  piVar4 = (int *)0x0;
  iStack_540 = 0;
  uStack_53c = 0;
  ppuStack_538 = (undefined **)0x0;
  uStack_534 = 0;
  piStack_550 = (int *)0x0;
  piStack_54c = (int *)0x0;
  piStack_548 = (int *)0x0;
  pcStack_544 = "Scripting/ScriptError/fileList";
  uStack_56c = FUN_004d9c90();
  uVar16 = 0x100000;
  pppppppiVar12 = (int *******)&pppppppiStack_574;
  bVar15 = 2;
  puVar5 = (ushort *)0x0;
  iStack_568 = 0;
  pcStack_564 = "Scripting/ScriptError/Dirs";
  pppppppiStack_574 = pppppppiVar12;
  pppppppiStack_570 = pppppppiVar12;
  psVar7 = (short *)FUN_007e51a0(auStack_410);
  FUN_004da580(psVar7,(int *)pppppppiVar12,puVar5,bVar15,uVar16);
  pppppppiVar12 = pppppppiStack_574;
  piVar10 = piVar4;
  piVar14 = (int *)0x0;
  if ((int ********)pppppppiStack_574 != &pppppppiStack_574) {
    do {
      uVar16 = FUN_00500320((short *)pppppppiVar12[3],L"ScriptError_*.xml",'\0');
      piVar4 = piVar10;
      if ((char)uVar16 != '\0') {
        pcStack_580 = "Scripting/ScriptError/Filename";
        psStack_58c = (short *)&DAT_011c8e54;
        puStack_588 = (undefined2 *)&DAT_011c8e54;
        puStack_584 = &DAT_011c8e56;
        psVar8 = (short *)FUN_007e51a0(auStack_410);
        sVar1 = *psVar8;
        psVar7 = psVar8;
        while (sVar1 != 0) {
          psVar7 = psVar7 + 1;
          sVar1 = *psVar7;
        }
        FUN_00408d60(&psStack_58c,psVar8,psVar8 + ((int)psVar7 - (int)psVar8 >> 1));
        FUN_00408b90(&psStack_58c,(undefined2 *)pppppppiVar12[3],(undefined2 *)pppppppiVar12[4]);
        if (piVar10 < piStack_548) {
          piVar4 = piVar10 + 4;
          piStack_54c = piVar4;
          if (piVar10 != (int *)0x0) {
            FUN_00408df0(piVar10,&psStack_58c);
          }
        }
        else {
          FUN_0051dbd0(&piStack_550,piVar10,&psStack_58c);
          piVar4 = piStack_54c;
        }
        if ((2 < (int)((int)puStack_584 - (int)psStack_58c & 0xfffffffeU)) &&
           (psStack_58c != (short *)0x0)) {
          FUN_004e44e0((int)psStack_58c);
        }
      }
      pppppppiVar12 = (int *******)*pppppppiVar12;
      piVar10 = piVar4;
      piVar14 = piStack_550;
    } while ((int ********)pppppppiVar12 != &pppppppiStack_574);
  }
  if (10 < (uint)((int)piVar4 - (int)piVar14 >> 4)) {
    FUN_0073f880(piVar14,piVar14 + 0x28,piVar4,&LAB_0076d210);
    iVar13 = 10;
    for (piVar10 = piVar14; piVar10 != piVar4; piVar10 = piVar10 + 4) {
      if (iVar13 < 1) {
        FUN_004dbda0((LPCWSTR)*piVar10);
      }
      else {
        iVar13 = iVar13 + -1;
      }
    }
  }
  FUN_00456ec0(&pppppppiStack_574);
  for (piVar10 = piVar14; piVar10 < piVar4; piVar10 = piVar10 + 4) {
    iVar13 = *piVar10;
    if ((2 < (int)(piVar10[2] - iVar13 & 0xfffffffeU)) && (iVar13 != 0)) {
      FUN_004e44e0(iVar13);
    }
  }
  if (piVar14 != (int *)0x0) {
    FUN_004e44e0((int)piVar14);
  }
  *param_1 = 0;
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  FUN_004fa9f0(auStack_57c,-1);
  FUN_004fa9f0(auStack_57c,0);
  FUN_005021e0(auStack_510,0x100);
  pcStack_580 = "Scripting/ScriptError/Filename";
  psStack_58c = (short *)&DAT_011c8e54;
  puStack_588 = (undefined2 *)&DAT_011c8e54;
  puStack_584 = &DAT_011c8e56;
  FUN_004faa10(auStack_57c);
  FUN_004fa300(10);
  FUN_004fa300(9);
  FUN_004fa300(8);
  FUN_004fa300(1);
  FUN_004fa300(6);
  FUN_004fa300(2);
  FUN_0040e840(&psStack_58c,(ushort *)L"ScriptError_%hs__%02d-%02d-%04d__%02d-%02d-%02d__%08X.xml");
  FUN_004ee400(auStack_410,psStack_58c,0);
  pWVar6 = (LPCWSTR)FUN_007e51a0(auStack_410);
  pcStack_554 = "Scripting/ScriptError/RetString";
  puStack_560 = &DAT_011c8e54;
  puStack_55c = &DAT_011c8e54;
  puStack_558 = &DAT_011c8e56;
  uVar9 = FUN_004dbcf0(pWVar6,'\0');
  psVar7 = psStack_58c;
  if ((char)uVar9 == '\0') {
    ppuVar11 = FUN_004f3b50(&iStack_540,(LPCWSTR)"ERROR: unable to write to a file",0xffffffff,
                            "Scripting/ScriptError/ErrorString");
    if (ppuVar11 != &puStack_560) {
      FUN_00408d60(&puStack_560,*ppuVar11,(undefined2 *)ppuVar11[1]);
    }
    psVar7 = psStack_58c;
    if ((2 < (int)((int)ppuStack_538 - iStack_540 & 0xfffffffeU)) && (iStack_540 != 0)) {
      FUN_004e44e0(iStack_540);
      psVar7 = psStack_58c;
    }
  }
  else {
    FUN_00408d60(&puStack_560,psStack_58c,puStack_588);
    this = (void *)FUN_004e4500(0x228,"Scripting/ScriptError/FileStream",0);
    if (this == (void *)0x0) {
      piVar10 = (int *)0x0;
    }
    else {
      piVar10 = FUN_004dbb40(this,pWVar6);
    }
    cVar3 = (**(code **)(*piVar10 + 0x4c))(2,3,1,0);
    if (cVar3 != '\0') {
      iVar13 = (**(code **)(*piVar4 + 200))(piVar10,0x47);
      *param_1 = iVar13;
    }
    if (*param_1 == 0) {
      (**(code **)*piVar10)(1);
    }
  }
  appuStack_530[0] = &PTR_FUN_0100886c;
  uStack_526 = 0x13;
  uStack_528 = 0xb;
  FUN_004f59c0(appuStack_530,0x13,9,&puStack_560,0x10,1);
  auStack_57c[1] = 0;
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar4 + 0x50))(appuStack_530,auStack_57c + 1);
  pcVar2 = pcStack_580;
  ppuStack_538 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_530[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_538,'\0');
  }
  if ((2 < (int)((int)puStack_560 - iStack_568 & 0xfffffffeU)) && (iStack_568 != 0)) {
    FUN_004e44e0(iStack_568);
  }
  if ((2 < (int)((int)psStack_58c - (int)psVar7 & 0xfffffffeU)) && (psVar7 != (short *)0x0)) {
    FUN_004e44e0((int)psVar7);
  }
  return pcVar2;
}

