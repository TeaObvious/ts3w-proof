/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161fc8 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_CreateExportFileImpl [assembly=ScriptCore token=0x0600054B;
   fileHandle: System.UInt32&, prefix: System.String; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_Simulator__Simulator_CreateExportFileImpl(undefined4 param_1,undefined4 param_2)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  ushort *puVar4;
  LPCWSTR pWVar5;
  undefined4 uVar6;
  void *this;
  int *piVar7;
  undefined1 **ppuVar8;
  undefined4 unaff_EBX;
  short *psVar9;
  int *unaff_retaddr;
  uint uStack_468;
  short *psStack_464;
  undefined2 *puStack_460;
  undefined2 *puStack_45c;
  char *pcStack_458;
  undefined1 *puStack_454;
  undefined1 *puStack_450;
  undefined **ppuStack_44c;
  char *pcStack_448;
  undefined **appuStack_444 [2];
  undefined2 uStack_43c;
  undefined2 uStack_43a;
  int aiStack_424 [2];
  int iStack_41c;
  undefined1 auStack_414 [1044];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar3 = (**(code **)(*piVar2 + 0x58))(param_2);
  if (iVar3 != 0) {
    piVar2 = (int *)FUN_0072f140();
    puVar4 = (ushort *)(**(code **)(*piVar2 + 0x24))();
    FUN_004ee170(auStack_414,puVar4);
    pWVar5 = (LPCWSTR)FUN_007e51a0(auStack_414);
    FUN_004dd2f0(pWVar5);
    *unaff_retaddr = 0;
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    FUN_004fa9f0(&uStack_468,-1);
    FUN_004fa9f0(&uStack_468,0);
    pcStack_458 = "Scripting/CreateExportFile/Filename";
    psStack_464 = (short *)&DAT_011c8e54;
    puStack_460 = (undefined2 *)&DAT_011c8e54;
    puStack_45c = &DAT_011c8e56;
    FUN_004faa10(&uStack_468);
    FUN_0040e840(&psStack_464,(ushort *)L"%sExport_%08X.xml");
    FUN_004ee400(auStack_414,psStack_464,0);
    pWVar5 = (LPCWSTR)FUN_007e51a0(auStack_414);
    pcStack_448 = "Scripting/CreateExportFile/RetString";
    puStack_454 = &DAT_011c8e54;
    puStack_450 = &DAT_011c8e54;
    ppuStack_44c = (undefined **)&DAT_011c8e56;
    uVar6 = FUN_004dbcf0(pWVar5,'\0');
    psVar9 = psStack_464;
    if ((char)uVar6 == '\0') {
      ppuVar8 = FUN_004f3b50(aiStack_424,(LPCWSTR)"ERROR: unable to write to a file",0xffffffff,
                             "Scripting/CreateExportFile/ErrorString");
      if (ppuVar8 != &puStack_454) {
        FUN_00408d60(&puStack_454,*ppuVar8,(undefined2 *)ppuVar8[1]);
      }
      psVar9 = psStack_464;
      if ((2 < (int)(iStack_41c - aiStack_424[0] & 0xfffffffeU)) && (aiStack_424[0] != 0)) {
        FUN_004e44e0(aiStack_424[0]);
        psVar9 = psStack_464;
      }
    }
    else {
      FUN_00408d60(&puStack_454,psStack_464,puStack_460);
      this = (void *)FUN_004e4500(0x228,"Scripting/CreateExportFile/FileStream",0);
      if (this == (void *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_004dbb40(this,pWVar5);
      }
      cVar1 = (**(code **)(*piVar7 + 0x4c))(2,3,1,0);
      if (cVar1 != '\0') {
        iVar3 = (**(code **)(*piVar2 + 200))(piVar7,0x47);
        *unaff_retaddr = iVar3;
      }
      if (*unaff_retaddr == 0) {
        (**(code **)*piVar7)(1);
      }
    }
    appuStack_444[0] = &PTR_FUN_0100886c;
    uStack_43a = 0x13;
    uStack_43c = 0xb;
    FUN_004f59c0(appuStack_444,0x13,9,&puStack_454,0x10,1);
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)(*piVar2 + 0x50))(appuStack_444,&stack0xfffffb94);
    ppuStack_44c = &PTR_FUN_00fba6f4;
    if (((uint)appuStack_444[0] & 4) != 0) {
      FUN_004f5760(&ppuStack_44c,'\0');
    }
    if ((2 < (int)((int)puStack_454 - (int)puStack_45c & 0xfffffffeU)) &&
       (puStack_45c != (undefined2 *)0x0)) {
      FUN_004e44e0((int)puStack_45c);
    }
    if ((2 < (int)((int)psStack_464 - (int)psVar9 & 0xfffffffeU)) && (psVar9 != (short *)0x0)) {
      FUN_004e44e0((int)psVar9);
    }
    return unaff_EBX;
  }
  return 0;
}

