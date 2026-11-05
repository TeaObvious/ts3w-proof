/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Type propagation algorithm not settling */



/* Verified PC 1.67 registration table at 0x01161fd0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  void *pvVar10;
  int *piVar11;
  undefined1 **ppuVar12;
  int ****ppppiVar13;
  int iVar14;
  undefined4 *puVar15;
  undefined4 *puVar16;
  undefined4 *allocation;
  byte bVar17;
  uint uVar18;
  short *psStack_58c;
  undefined2 *puStack_588;
  undefined2 *puStack_584;
  char *pcStack_580;
  uint auStack_57c [2];
  int ****ppppiStack_574;
  int ****ppppiStack_570;
  undefined4 uStack_56c;
  void *pvStack_568;
  char *pcStack_564;
  undefined1 *puStack_560;
  undefined1 *puStack_55c;
  undefined2 *puStack_558;
  char *pcStack_554;
  undefined4 *puStack_550;
  undefined4 *puStack_54c;
  undefined4 *puStack_548;
  char *pcStack_544;
  void *pvStack_540;
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
  puVar15 = (undefined4 *)0x0;
  pvStack_540 = (void *)0x0;
  uStack_53c = 0;
  ppuStack_538 = (undefined **)0x0;
  uStack_534 = 0;
  puStack_550 = (undefined4 *)0x0;
  puStack_54c = (undefined4 *)0x0;
  puStack_548 = (undefined4 *)0x0;
  pcStack_544 = "Scripting/ScriptError/fileList";
  uStack_56c = FUN_004d9c90();
  uVar18 = 0x100000;
  ppppiVar13 = (int ****)&ppppiStack_574;
  bVar17 = 2;
  puVar5 = (ushort *)0x0;
  pvStack_568 = (void *)0x0;
  pcStack_564 = "Scripting/ScriptError/Dirs";
  ppppiStack_574 = ppppiVar13;
  ppppiStack_570 = ppppiVar13;
  psVar7 = (short *)FUN_007e51a0(auStack_410);
  FUN_004da580(psVar7,(int *)ppppiVar13,puVar5,bVar17,uVar18);
  ppppiVar13 = ppppiStack_574;
  puVar16 = puVar15;
  allocation = (undefined4 *)0x0;
  if ((int *****)ppppiStack_574 != &ppppiStack_574) {
    do {
      uVar18 = FUN_00500320((short *)ppppiVar13[3],L"ScriptError_*.xml",'\0');
      puVar15 = puVar16;
      if ((char)uVar18 != '\0') {
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
        FUN_00408b90(&psStack_58c,(undefined2 *)ppppiVar13[3],(undefined2 *)ppppiVar13[4]);
        if (puVar16 < puStack_548) {
          puVar15 = puVar16 + 4;
          puStack_54c = puVar15;
          if (puVar16 != (undefined4 *)0x0) {
            FUN_00408df0(puVar16,&psStack_58c);
          }
        }
        else {
          FUN_0051dbd0(&puStack_550,puVar16,&psStack_58c);
          puVar15 = puStack_54c;
        }
        if ((2 < (int)((int)puStack_584 - (int)psStack_58c & 0xfffffffeU)) &&
           (psStack_58c != (short *)0x0)) {
          Memory_FreeIfNonNull(psStack_58c);
        }
      }
      ppppiVar13 = (int ****)*ppppiVar13;
      puVar16 = puVar15;
    } while ((int *****)ppppiVar13 != &ppppiStack_574);
    allocation = puStack_550;
  }
  if (10 < (uint)((int)puVar15 - (int)allocation >> 4)) {
    FUN_0073f880(allocation,allocation + 0x28,puVar15,&LAB_0076d210);
    iVar14 = 10;
    for (puVar16 = allocation; puVar16 != puVar15; puVar16 = puVar16 + 4) {
      if (iVar14 < 1) {
        FUN_004dbda0((LPCWSTR)*puVar16);
      }
      else {
        iVar14 = iVar14 + -1;
      }
    }
  }
  FUN_00456ec0(&ppppiStack_574);
  for (puVar16 = allocation; puVar16 < puVar15; puVar16 = puVar16 + 4) {
    pvVar10 = (void *)*puVar16;
    if ((2 < (int)(puVar16[2] - (int)pvVar10 & 0xfffffffeU)) && (pvVar10 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvVar10);
    }
  }
  if (allocation != (undefined4 *)0x0) {
    Memory_FreeIfNonNull(allocation);
  }
  *param_1 = 0;
  piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
  TreeVariation_Reseed(auStack_57c,-1);
  TreeVariation_Reseed(auStack_57c,0);
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
    ppuVar12 = EaString_FromUtf8Bytes
                         (&pvStack_540,(byte *)"ERROR: unable to write to a file",0xffffffff,
                          (byte *)"Scripting/ScriptError/ErrorString");
    if (ppuVar12 != &puStack_560) {
      FUN_00408d60(&puStack_560,*ppuVar12,(undefined2 *)ppuVar12[1]);
    }
    if ((2 < (int)((int)ppuStack_538 - (int)pvStack_540 & 0xfffffffeU)) &&
       (pvStack_540 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvStack_540);
    }
    psVar7 = psStack_58c;
  }
  else {
    FUN_00408d60(&puStack_560,psStack_58c,puStack_588);
    pvVar10 = (void *)FUN_004e4500(0x228,"Scripting/ScriptError/FileStream",0);
    if (pvVar10 == (void *)0x0) {
      piVar11 = (int *)0x0;
    }
    else {
      piVar11 = FileReadStream_Construct(pvVar10,pWVar6);
    }
    cVar3 = (**(code **)(*piVar11 + 0x4c))(2,3,1,0);
    if (cVar3 != '\0') {
      iVar14 = (**(code **)(*piVar4 + 200))(piVar11,0x47);
      *param_1 = iVar14;
    }
    if (*param_1 == 0) {
      (**(code **)*piVar11)(1);
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
  if ((2 < (int)((int)puStack_560 - (int)pvStack_568 & 0xfffffffeU)) && (pvStack_568 != (void *)0x0)
     ) {
    Memory_FreeIfNonNull(pvStack_568);
  }
  if ((2 < (int)((int)psStack_58c - (int)psVar7 & 0xfffffffeU)) && (psVar7 != (short *)0x0)) {
    Memory_FreeIfNonNull(psVar7);
  }
  return pcVar2;
}

