/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Simulator_CreateDnPExportFileImpl. Export
   ordinal(s): 744. Entry VA: 0x1055f4e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060010E7; ScriptCore:0x06001135. This is an export/declaration annotation only; ABI,
   behavior and runtime execution require the original instructions and caller evidence. */

undefined4 __cdecl Simulator_CreateDnPExportFileImpl(int *param_1)

{
  char cVar1;
  int *piVar2;
  ushort *puVar3;
  LPCWSTR pWVar4;
  undefined4 uVar5;
  void *this;
  int *piVar6;
  int iVar7;
  undefined **ppuVar8;
  undefined4 unaff_ESI;
  short *psVar9;
  undefined4 uStack_468;
  uint uStack_464;
  short *psStack_460;
  int *piStack_45c;
  undefined2 *puStack_458;
  char *pcStack_454;
  undefined *puStack_450;
  undefined *puStack_44c;
  undefined **ppuStack_448;
  char *pcStack_444;
  undefined **appuStack_440 [2];
  undefined2 uStack_438;
  undefined2 uStack_436;
  int aiStack_420 [2];
  int iStack_418;
  undefined1 auStack_410 [1040];
  
                    /* 0x55f4e0  744  Simulator_CreateDnPExportFileImpl */
  piVar2 = (int *)FUN_105219c0();
  puVar3 = (ushort *)(**(code **)(*piVar2 + 0x24))();
  FUN_10922390(auStack_410,puVar3);
  pWVar4 = (LPCWSTR)FUN_10a2ece0(auStack_410);
  FUN_10911f10(pWVar4);
  *param_1 = 0;
  piVar2 = (int *)FUN_1055b120();
  FUN_1092d2e0(&uStack_464,-1);
  FUN_1092d2e0(&uStack_464,0);
  pcStack_454 = "Scripting/DnPExport/Filename";
  psStack_460 = (short *)&_Dst_10ca8244;
  piStack_45c = (int *)&_Dst_10ca8244;
  puStack_458 = &DAT_10ca8246;
  FUN_1092d300(&uStack_464);
  FUN_1006aff0(&psStack_460,(ushort *)L"DnPExport_%08X.xml");
  FUN_10922620(auStack_410,psStack_460,0);
  pWVar4 = (LPCWSTR)FUN_10a2ece0(auStack_410);
  pcStack_444 = "Scripting/DnPExport/RetString";
  puStack_450 = &_Dst_10ca8244;
  puStack_44c = &_Dst_10ca8244;
  ppuStack_448 = (undefined **)&DAT_10ca8246;
  uVar5 = FUN_109109e0(pWVar4,'\0');
  psVar9 = psStack_460;
  if ((char)uVar5 == '\0') {
    ppuVar8 = FUN_10926db0(aiStack_420,(LPCWSTR)"ERROR: unable to write to a file",0xffffffff,
                           "Scripting/DnPExport/ErrorString");
    if (ppuVar8 != &puStack_450) {
      FUN_1001f8c0(&puStack_450,*ppuVar8,(int *)ppuVar8[1]);
    }
    psVar9 = psStack_460;
    if ((2 < (int)(iStack_418 - aiStack_420[0] & 0xfffffffeU)) && (aiStack_420[0] != 0)) {
      FUN_10918e90(aiStack_420[0]);
      psVar9 = psStack_460;
    }
  }
  else {
    FUN_1001f8c0(&puStack_450,psStack_460,piStack_45c);
    this = (void *)FUN_10918eb0(0x228,"Scripting/DnPExport/FileStream",0);
    if (this == (void *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      piVar6 = FUN_10910830(this,pWVar4);
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
  appuStack_440[0] = &PTR_FUN_10aca5b4;
  uStack_436 = 0x13;
  uStack_438 = 0xb;
  FUN_10928b90(appuStack_440,0x13,9,&puStack_450,0x10,1);
  uStack_468 = 0;
  piVar2 = (int *)FUN_1055b120();
  (**(code **)(*piVar2 + 0x50))(appuStack_440,&uStack_468);
  ppuStack_448 = &PTR_FUN_10aca5b4;
  if (((uint)appuStack_440[0] & 4) != 0) {
    FUN_10928a90(&ppuStack_448,'\0');
  }
  if ((2 < (int)((int)puStack_450 - (int)puStack_458 & 0xfffffffeU)) &&
     (puStack_458 != (undefined2 *)0x0)) {
    FUN_10918e90((int)puStack_458);
  }
  if ((2 < (int)((int)psStack_460 - (int)psVar9 & 0xfffffffeU)) && (psVar9 != (short *)0x0)) {
    FUN_10918e90((int)psVar9);
  }
  return unaff_ESI;
}

