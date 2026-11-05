/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_InitImpl. Export ordinal(s): 394.
   Entry VA: 0x107854c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060011C4. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void DownloadContent_InitImpl(void)

{
  short sVar1;
  int *piVar2;
  short *psVar3;
  int *piVar4;
  short *psVar5;
  
                    /* 0x7854c0  394  DownloadContent_InitImpl */
  piVar2 = (int *)FUN_105219c0();
  if (piVar2 != (int *)0x0) {
    psVar3 = (short *)(**(code **)(*piVar2 + 0x24))();
    sVar1 = *psVar3;
    psVar5 = psVar3;
    while (sVar1 != 0) {
      psVar5 = psVar5 + 1;
      sVar1 = *psVar5;
    }
    FUN_1001f8c0(&PTR__Dst_10ca8244_10c4e8b0,psVar3,
                 (int *)(psVar3 + ((int)psVar5 - (int)psVar3 >> 1)));
    FUN_10922640((int *)&PTR__Dst_10ca8244_10c4e8b0);
    piVar4 = (int *)FUN_10388740(L"CustomContent",L"ImportsFolderName",L"Downloads");
    sVar1 = (short)*piVar4;
    piVar2 = piVar4;
    while (sVar1 != 0) {
      piVar2 = (int *)((int)piVar2 + 2);
      sVar1 = *(short *)piVar2;
    }
    FUN_1001f3b0(&PTR__Dst_10ca8244_10c4e8b0,piVar4,
                 (int *)((int)piVar4 + ((int)piVar2 - (int)piVar4 >> 1) * 2));
    FUN_10922640((int *)&PTR__Dst_10ca8244_10c4e8b0);
    FUN_10911f10((LPCWSTR)PTR__Dst_10ca8244_10c4e8b0);
  }
  return;
}

