/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_CreateExportFileImpl. Export
   ordinal(s): 745. Entry VA: 0x1055f740. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010E8; ScriptCore:0x06001136. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

undefined4 __cdecl Simulator_CreateExportFileImpl(undefined4 param_1,undefined4 param_2)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  ushort *puVar4;
  LPCWSTR pWVar5;
  undefined4 uVar6;
  void *this;
  int *piVar7;
  undefined **ppuVar8;
  undefined4 unaff_EBX;
  short *psVar9;
  int *unaff_retaddr;
  uint uStack_468;
  short *psStack_464;
  int *piStack_460;
  undefined2 *puStack_45c;
  char *pcStack_458;
  undefined *puStack_454;
  undefined *puStack_450;
  undefined **ppuStack_44c;
  char *pcStack_448;
  undefined **appuStack_444 [2];
  undefined2 uStack_43c;
  undefined2 uStack_43a;
  int aiStack_424 [2];
  int iStack_41c;
  undefined1 auStack_414 [1044];
  
                    /* 0x55f740  745  Simulator_CreateExportFileImpl */
  piVar2 = (int *)FUN_1055b120();
  iVar3 = (**(code **)(*piVar2 + 0x58))(param_2);
  if (iVar3 != 0) {
    piVar2 = (int *)FUN_105219c0();
    puVar4 = (ushort *)(**(code **)(*piVar2 + 0x24))();
    FUN_10922390(auStack_414,puVar4);
    pWVar5 = (LPCWSTR)FUN_10a2ece0(auStack_414);
    FUN_10911f10(pWVar5);
    *unaff_retaddr = 0;
    piVar2 = (int *)FUN_1055b120();
    FUN_1092d2e0(&uStack_468,-1);
    FUN_1092d2e0(&uStack_468,0);
    pcStack_458 = "Scripting/CreateExportFile/Filename";
    psStack_464 = (short *)&_Dst_10ca8244;
    piStack_460 = (int *)&_Dst_10ca8244;
    puStack_45c = &DAT_10ca8246;
    FUN_1092d300(&uStack_468);
    FUN_1006aff0(&psStack_464,(ushort *)L"%sExport_%08X.xml");
    FUN_10922620(auStack_414,psStack_464,0);
    pWVar5 = (LPCWSTR)FUN_10a2ece0(auStack_414);
    pcStack_448 = "Scripting/CreateExportFile/RetString";
    puStack_454 = &_Dst_10ca8244;
    puStack_450 = &_Dst_10ca8244;
    ppuStack_44c = (undefined **)&DAT_10ca8246;
    uVar6 = FUN_109109e0(pWVar5,'\0');
    psVar9 = psStack_464;
    if ((char)uVar6 == '\0') {
      ppuVar8 = FUN_10926db0(aiStack_424,(LPCWSTR)"ERROR: unable to write to a file",0xffffffff,
                             "Scripting/CreateExportFile/ErrorString");
      if (ppuVar8 != &puStack_454) {
        FUN_1001f8c0(&puStack_454,*ppuVar8,(int *)ppuVar8[1]);
      }
      psVar9 = psStack_464;
      if ((2 < (int)(iStack_41c - aiStack_424[0] & 0xfffffffeU)) && (aiStack_424[0] != 0)) {
        FUN_10918e90(aiStack_424[0]);
        psVar9 = psStack_464;
      }
    }
    else {
      FUN_1001f8c0(&puStack_454,psStack_464,piStack_460);
      this = (void *)FUN_10918eb0(0x228,"Scripting/CreateExportFile/FileStream",0);
      if (this == (void *)0x0) {
        piVar7 = (int *)0x0;
      }
      else {
        piVar7 = FUN_10910830(this,pWVar5);
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
    appuStack_444[0] = &PTR_FUN_10aca5b4;
    uStack_43a = 0x13;
    uStack_43c = 0xb;
    FUN_10928b90(appuStack_444,0x13,9,&puStack_454,0x10,1);
    piVar2 = (int *)FUN_1055b120();
    (**(code **)(*piVar2 + 0x50))(appuStack_444,&stack0xfffffb94);
    ppuStack_44c = &PTR_FUN_10aca5b4;
    if (((uint)appuStack_444[0] & 4) != 0) {
      FUN_10928a90(&ppuStack_44c,'\0');
    }
    if ((2 < (int)((int)puStack_454 - (int)puStack_45c & 0xfffffffeU)) &&
       (puStack_45c != (undefined2 *)0x0)) {
      FUN_10918e90((int)puStack_45c);
    }
    if ((2 < (int)((int)psStack_464 - (int)psVar9 & 0xfffffffeU)) && (psVar9 != (short *)0x0)) {
      FUN_10918e90((int)psVar9);
    }
    return unaff_EBX;
  }
  return 0;
}

