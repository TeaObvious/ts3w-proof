/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_SetPackageEnabledImpl. Export
   ordinal(s): 407. Entry VA: 0x10784510. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001190. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 DownloadContent_SetPackageEnabledImpl(void)

{
  void *this;
  undefined4 uVar1;
  undefined1 auStack_28 [12];
  undefined4 uStack_1c;
  undefined4 local_10 [4];
  
                    /* 0x784510  407  DownloadContent_SetPackageEnabledImpl */
  uStack_1c = 0x10784522;
  FUN_1055dac0(&stack0x00000004,local_10);
  this = (void *)FUN_107744c0();
  if (this != (void *)0x0) {
    FUN_109335c0(auStack_28,local_10);
    uVar1 = FUN_10779be0(this);
    return uVar1;
  }
  return 1;
}

