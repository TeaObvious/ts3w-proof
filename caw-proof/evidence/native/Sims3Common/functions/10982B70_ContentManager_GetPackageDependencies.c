/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x10982c7c) */
/* WARNING: Removing unreachable block (ram,0x10982c0a) */
/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetPackageDependencies. Export
   ordinal(s): 1785. Entry VA: 0x10982b70. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EFB. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl ContentManager_GetPackageDependencies(ushort *param_1)

{
  char cVar1;
  void *this;
  int iVar2;
  int iVar3;
  int unaff_EBX;
  undefined1 auStack_ac [4];
  undefined4 uStack_a8;
  undefined4 local_70 [28];
  
                    /* 0x982b70  1785  ContentManager_GetPackageDependencies */
  this = (void *)FUN_107744c0();
  if (this != (void *)0x0) {
    FUN_10934a30(local_70,param_1,0x10);
    FUN_109335c0(auStack_ac,local_70);
    cVar1 = FUN_10779e10(this);
    if (cVar1 != '\0') {
      uStack_a8 = 0x10982bea;
      iVar2 = Ordinal_411();
      if ((iVar2 != 0) && (iVar3 = Ordinal_21(), -1 < iVar3)) {
        Ordinal_22();
        if (unaff_EBX != 0) {
          FUN_10918e90(unaff_EBX);
        }
        return iVar2;
      }
    }
  }
  return 0;
}

