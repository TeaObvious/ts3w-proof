/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: GameObject_HasCatalogProductTypeFlag. Export
   ordinal(s): 1830. Entry VA: 0x1097f7d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000BFC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl GameObject_HasCatalogProductTypeFlag(uint param_1,uint param_2)

{
  int iVar1;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x97f7d0  1830  GameObject_HasCatalogProductTypeFlag */
  if ((param_1 != 0) && (DAT_10c70534 != (void *)0x0)) {
    local_10 = *(uint *)(param_1 + 0x18);
    local_c = *(undefined4 *)(param_1 + 0x1c);
    local_4 = *(undefined4 *)(param_1 + 0x24);
    local_8 = 0x319e4f1d;
    iVar1 = FUN_102656d0(DAT_10c70534,&local_10);
    param_1 = 0;
    if (iVar1 != 0) {
      return (uint)((*(uint *)(iVar1 + 0x98) & param_2) != 0);
    }
  }
  return param_1 & 0xffffff00;
}

