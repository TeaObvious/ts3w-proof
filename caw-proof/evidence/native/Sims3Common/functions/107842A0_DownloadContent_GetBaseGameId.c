/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetBaseGameId. Export ordinal(s):
   370. Entry VA: 0x107842a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060011CF. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl DownloadContent_GetBaseGameId(longlong *param_1,longlong *param_2)

{
  longlong lVar1;
  undefined4 local_10 [4];
  
                    /* 0x7842a0  370  DownloadContent_GetBaseGameId */
  FUN_10788500(local_10);
  lVar1 = FUN_10933370(local_10,0);
  *param_1 = lVar1;
  lVar1 = FUN_10933370(local_10,1);
  *param_2 = lVar1;
  return;
}

