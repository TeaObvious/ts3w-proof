/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentTransferManager_Login. Export ordinal(s):
   1795. Entry VA: 0x109855f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000914. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ContentTransferManager_Login(int *param_1,char *param_2)

{
  void *this;
  
                    /* 0x9855f0  1795  ContentTransferManager_Login */
  if (DAT_10c788dc == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)(DAT_10c788dc + -8);
  }
  FUN_1067d960(this,param_1,param_2,*(int **)((int)this + 0x11c));
  return;
}

