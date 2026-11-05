/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetInstalledPackagesCount. Export
   ordinal(s): 1783. Entry VA: 0x10983100. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EF7. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int ContentManager_GetInstalledPackagesCount(void)

{
  void *this;
  int iVar1;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  char *local_4;
  
                    /* 0x983100  1783  ContentManager_GetInstalledPackagesCount */
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "CSHost/GetInstalledPackagesCount/packages";
  this = (void *)FUN_107744c0();
  if (this != (void *)0x0) {
    FUN_1077eec0(this,&local_10);
  }
  iVar1 = local_c - local_10;
  FUN_10670280(local_10,local_c);
  if (local_10 != 0) {
    FUN_10918e90(local_10);
  }
  return iVar1 / 0x30;
}

