/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_IsCustomContentImpl. Export
   ordinal(s): 398. Entry VA: 0x107843a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600117B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 DownloadContent_IsCustomContentImpl(void)

{
  byte bVar1;
  undefined4 *puVar2;
  undefined3 extraout_var;
  undefined4 local_10 [4];
  int iVar3;
  
                    /* 0x7843a0  398  DownloadContent_IsCustomContentImpl */
  puVar2 = (undefined4 *)FUN_1055dbb0(&stack0x00000004,local_10);
  bVar1 = FUN_10782290(puVar2);
  iVar3 = CONCAT31(extraout_var,bVar1);
  if (((iVar3 != 3) && (iVar3 != 2)) && (iVar3 != 0)) {
    return 0;
  }
  return 1;
}

