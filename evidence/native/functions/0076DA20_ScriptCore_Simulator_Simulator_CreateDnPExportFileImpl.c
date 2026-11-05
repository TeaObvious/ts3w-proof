/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161fc0 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_CreateDnPExportFileImpl [assembly=ScriptCore token=0x0600054A;
   fileHandle: System.UInt32&; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_Simulator__Simulator_CreateDnPExportFileImpl(int *param_1)

{
  char cVar1;
  int *piVar2;
  ushort *puVar3;
  LPCWSTR pWVar4;
  undefined4 uVar5;
  void *this;
  int *piVar6;
  int iVar7;
  undefined1 **ppuVar8;
  undefined4 unaff_ESI;
  short *psVar9;
  undefined4 uStack_468;
  uint uStack_464;
  short *psStack_460;
  undefined2 *puStack_45c;
  undefined2 *puStack_458;
  char *pcStack_454;
  undefined1 *puStack_450;
  undefined1 *puStack_44c;
  undefined **ppuStack_448;
  char *pcStack_444;
  undefined **appuStack_440 [2];
  undefined2 uStack_438;
  undefined2 uStack_436;
  int aiStack_420 [2];
  int iStack_418;
  undefined1 auStack_410 [1040];
  
  piVar2 = (int *)FUN_0072f140();
  puVar3 = (ushort *)(**(code **)(*piVar2 + 0x24))();
  FUN_004ee170(auStack_410,puVar3);
  pWVar4 = (LPCWSTR)FUN_007e51a0(auStack_410);
  FUN_004dd2f0(pWVar4);
  *param_1 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  FUN_004fa9f0(&uStack_464,-1);
  FUN_004fa9f0(&uStack_464,0);
  pcStack_454 = "Scripting/DnPExport/Filename";
  psStack_460 = (short *)&DAT_011c8e54;
  puStack_45c = (undefined2 *)&DAT_011c8e54;
  puStack_458 = &DAT_011c8e56;
  FUN_004faa10(&uStack_464);
  FUN_0040e840(&psStack_460,(ushort *)L"DnPExport_%08X.xml");
  FUN_004ee400(auStack_410,psStack_460,0);
  pWVar4 = (LPCWSTR)FUN_007e51a0(auStack_410);
  pcStack_444 = "Scripting/DnPExport/RetString";
  puStack_450 = &DAT_011c8e54;
  puStack_44c = &DAT_011c8e54;
  ppuStack_448 = (undefined **)&DAT_011c8e56;
  uVar5 = FUN_004dbcf0(pWVar4,'\0');
  psVar9 = psStack_460;
  if ((char)uVar5 == '\0') {
    ppuVar8 = FUN_004f3b50(aiStack_420,(LPCWSTR)"ERROR: unable to write to a file",0xffffffff,
                           "Scripting/DnPExport/ErrorString");
    if (ppuVar8 != &puStack_450) {
      FUN_00408d60(&puStack_450,*ppuVar8,(undefined2 *)ppuVar8[1]);
    }
    psVar9 = psStack_460;
    if ((2 < (int)(iStack_418 - aiStack_420[0] & 0xfffffffeU)) && (aiStack_420[0] != 0)) {
      FUN_004e44e0(aiStack_420[0]);
      psVar9 = psStack_460;
    }
  }
  else {
    FUN_00408d60(&puStack_450,psStack_460,puStack_45c);
    this = (void *)FUN_004e4500(0x228,"Scripting/DnPExport/FileStream",0);
    if (this == (void *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      piVar6 = FUN_004dbb40(this,pWVar4);
    }
    cVar1 = (**(code **)(*piVar6 + 0x4c))(2,3,1,0);
    if (cVar1 != '\0') {
      iVar7 = (**(code **)(*piVar2 + 200))(piVar6,0x47);
      *param_1 = iVar7;
    }
    if (*param_1 == 0) {
      (**(code **)*piVar6)(1);
    }
  }
  appuStack_440[0] = &PTR_FUN_0100886c;
  uStack_436 = 0x13;
  uStack_438 = 0xb;
  FUN_004f59c0(appuStack_440,0x13,9,&puStack_450,0x10,1);
  uStack_468 = 0;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar2 + 0x50))(appuStack_440,&uStack_468);
  ppuStack_448 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_440[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_448,'\0');
  }
  if ((2 < (int)((int)puStack_450 - (int)puStack_458 & 0xfffffffeU)) &&
     (puStack_458 != (undefined2 *)0x0)) {
    FUN_004e44e0((int)puStack_458);
  }
  if ((2 < (int)((int)psStack_460 - (int)psVar9 & 0xfffffffeU)) && (psVar9 != (short *)0x0)) {
    FUN_004e44e0((int)psVar9);
  }
  return unaff_ESI;
}

