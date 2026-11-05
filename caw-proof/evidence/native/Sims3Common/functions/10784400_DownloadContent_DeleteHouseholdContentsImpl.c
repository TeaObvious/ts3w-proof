/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_DeleteHouseholdContentsImpl.
   Export ordinal(s): 359. Entry VA: 0x10784400. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001181. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl DownloadContent_DeleteHouseholdContentsImpl(ushort *param_1,ushort *param_2)

{
  void *this;
  uint in_EAX;
  undefined4 uVar1;
  uint local_18 [6];
  
                    /* 0x784400  359  DownloadContent_DeleteHouseholdContentsImpl */
  this = DAT_10c8de94;
  if (DAT_10c6e9d8 != 0) {
    FUN_105ca870(local_18);
    uVar1 = FUN_10790830(this,local_18);
    if ((char)uVar1 != '\0') {
      FUN_1009b0a0(param_1,param_2,local_18);
      uVar1 = FUN_105ca900((int)local_18);
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
    in_EAX = FUN_105ca900((int)local_18);
  }
  return in_EAX & 0xffffff00;
}

