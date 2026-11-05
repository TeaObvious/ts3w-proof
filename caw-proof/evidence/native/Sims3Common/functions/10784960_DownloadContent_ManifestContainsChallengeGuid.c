/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_ManifestContainsChallengeGuid.
   Export ordinal(s): 401. Entry VA: 0x10784960. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060011D5. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl DownloadContent_ManifestContainsChallengeGuid(undefined4 param_1)

{
  int *piVar1;
  ushort *puVar2;
  uint uVar3;
  
                    /* 0x784960  401  DownloadContent_ManifestContainsChallengeGuid */
  piVar1 = (int *)FUN_1055b120();
  puVar2 = (ushort *)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((DAT_10c788dc != 0) && (DAT_10c788dc != 8)) {
    uVar3 = FUN_10673740(puVar2);
    return uVar3;
  }
  return (uint)puVar2 & 0xffffff00;
}

