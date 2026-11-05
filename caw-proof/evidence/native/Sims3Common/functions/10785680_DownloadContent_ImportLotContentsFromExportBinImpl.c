/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10785771) */
/* WARNING: Removing unreachable block (ram,0x10785733) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity:
   DownloadContent_ImportLotContentsFromExportBinImpl. Export ordinal(s): 391. Entry VA: 0x10785680.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x06001188. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

undefined8 __cdecl DownloadContent_ImportLotContentsFromExportBinImpl(undefined4 param_1)

{
  void *this;
  int *piVar1;
  short *psVar2;
  undefined4 uVar3;
  undefined8 uVar4;
  int aiStack_2c [3];
  char *pcStack_20;
  uint auStack_1c [7];
  
                    /* 0x785680  391  DownloadContent_ImportLotContentsFromExportBinImpl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
    aiStack_2c[0] = 0;
    aiStack_2c[1] = 0;
    aiStack_2c[2] = 0;
    pcStack_20 = "Services/DownloadContentHost/EBPackageFile";
    FUN_1006a620(aiStack_2c,psVar2);
    this = DAT_10c8de94;
    uVar3 = FUN_107907c0((int)DAT_10c8de94);
    if (((char)uVar3 == '\0') &&
       (uVar3 = FUN_107920b0(this,aiStack_2c,(int *)&stack0xffffffd0), (char)uVar3 != '\0')) {
      FUN_105ca890(auStack_1c,0,1);
      uVar4 = FUN_1009c2b0(auStack_1c);
      FUN_10790750((int)this);
      FUN_105ca900((int)auStack_1c);
      if ((2 < (int)(aiStack_2c[2] - aiStack_2c[0] & 0xfffffffeU)) && (aiStack_2c[0] != 0)) {
        FUN_10918e90(aiStack_2c[0]);
      }
      return uVar4;
    }
    if ((2 < (int)(aiStack_2c[2] - aiStack_2c[0] & 0xfffffffeU)) && (aiStack_2c[0] != 0)) {
      FUN_10918e90(aiStack_2c[0]);
    }
  }
  return 0;
}

