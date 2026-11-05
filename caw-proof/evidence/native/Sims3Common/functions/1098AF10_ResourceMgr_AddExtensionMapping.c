/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_AddExtensionMapping. Export
   ordinal(s): 2012. Entry VA: 0x1098af10. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060008A4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
ResourceMgr_AddExtensionMapping(undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  void *pvVar2;
  uint uVar3;
  uint local_8 [2];
  
                    /* 0x98af10  2012  ResourceMgr_AddExtensionMapping */
  pvVar2 = DAT_10cb8078;
  FUN_106a8410(DAT_10cb8078,local_8,&param_1);
  if (local_8[0] != *(uint *)(*(int *)((int)pvVar2 + 4) + *(int *)((int)pvVar2 + 8) * 4)) {
    piVar1 = *(int **)(local_8[0] + 4);
    local_8[0] = (**(code **)(*piVar1 + 0xc))();
    if (local_8[0] == 0x34728492) {
      uVar3 = (**(code **)(*piVar1 + 0x50))(param_3,param_2);
      return uVar3;
    }
  }
  return local_8[0] & 0xffffff00;
}

