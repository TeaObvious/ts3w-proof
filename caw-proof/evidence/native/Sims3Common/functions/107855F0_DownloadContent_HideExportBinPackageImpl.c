/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10785659) */
/* WARNING: Removing unreachable block (ram,0x1078565d) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_HideExportBinPackageImpl. Export
   ordinal(s): 386. Entry VA: 0x107855f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011EA. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl DownloadContent_HideExportBinPackageImpl(undefined4 param_1)

{
  int *piVar1;
  short *psVar2;
  uint uVar3;
  
                    /* 0x7855f0  386  DownloadContent_HideExportBinPackageImpl */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
  FUN_1006a620(&stack0xffffffec,psVar2);
  uVar3 = FUN_10792f60(DAT_10c8de94,(undefined4 *)&stack0xffffffec);
  return uVar3 & 0xff;
}

