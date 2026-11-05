/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetFirstFilename. Export
   ordinal(s): 375. Entry VA: 0x107861b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011CD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 * DownloadContent_GetFirstFilename(void)

{
  short sVar1;
  int iVar2;
  short *psVar3;
  int *piVar4;
  short *psVar5;
  int unaff_ESI;
  undefined1 *puVar6;
  undefined1 local_34 [4];
  undefined *local_30;
  undefined *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
                    /* 0x7861b0  375  DownloadContent_GetFirstFilename */
  puVar6 = local_34;
  iVar2 = FUN_1079f8e0();
  if ((iVar2 != 0) && (psVar3 = (short *)FUN_1079f800(iVar2), psVar3 != (short *)0x0)) {
    sVar1 = *psVar3;
    local_30 = &_Dst_10ca8244;
    local_2c = &_Dst_10ca8244;
    local_24 = "Scratch/DownloadContent/DownloadContentHost/str";
    local_28 = (undefined **)&DAT_10ca8246;
    psVar5 = psVar3;
    while (sVar1 != 0) {
      psVar5 = psVar5 + 1;
      sVar1 = *psVar5;
    }
    FUN_1001f8c0(&local_30,psVar3,(int *)(psVar3 + ((int)psVar5 - (int)psVar3 >> 1)));
    if (local_30 != local_2c) {
      local_20[0] = &PTR_FUN_10aca5b4;
      local_16 = 0x13;
      local_18 = 0xb;
      FUN_10928b90(local_20,0x13,9,&local_30,0x10,1);
      piVar4 = (int *)FUN_1055b120();
      (**(code **)(*piVar4 + 0x50))(local_20);
      local_28 = &PTR_FUN_10aca5b4;
      if (((uint)local_20[0] & 4) != 0) {
        FUN_10928a90(&local_28,'\0');
      }
      if ((2 < (int)((int)local_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
        FUN_10918e90(unaff_ESI);
      }
      return puVar6;
    }
    if ((2 < (int)((int)local_28 - (int)local_30 & 0xfffffffeU)) && (local_30 != (undefined *)0x0))
    {
      FUN_10918e90((int)local_30);
    }
  }
  return (undefined1 *)0x0;
}

