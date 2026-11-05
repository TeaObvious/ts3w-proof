/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10982e75) */
/* WARNING: Removing unreachable block (ram,0x10982e8e) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetContentSourceByTypeAndInstance.
   Export ordinal(s): 1780. Entry VA: 0x10982de0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000F01. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl
ContentManager_GetContentSourceByTypeAndInstance
          (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  byte bVar1;
  int *piVar2;
  int iVar3;
  undefined3 extraout_var;
  undefined4 *puVar4;
  undefined4 *unaff_EDI;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  char *local_14;
  undefined **local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x982de0  1780  ContentManager_GetContentSourceByTypeAndInstance */
  piVar2 = (int *)FUN_108e50d0();
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  local_c = param_1;
  local_4 = param_3;
  local_8 = param_2;
  local_10 = &PTR_LAB_10b592d4;
  local_20 = 0;
  local_1c = 0;
  local_18 = 0;
  local_14 = "Scratch/ContentManager_GetContentSourceByTypeAndInstance/tableKeys";
  iVar3 = (**(code **)(*piVar2 + 0x20))(&local_20,&local_10);
  puVar4 = (undefined4 *)0x0;
  if ((iVar3 != 0) && (unaff_EDI != (undefined4 *)0x0)) {
    do {
      bVar1 = FUN_10782290(puVar4);
      if (CONCAT31(extraout_var,bVar1) != 0) {
        return CONCAT31(extraout_var,bVar1);
      }
      puVar4 = puVar4 + 4;
    } while (puVar4 != unaff_EDI);
  }
  return 0;
}

