/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_GenerateTravelSimThumbnail.
   Export ordinal(s): 1045. Entry VA: 0x10569bd0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000388. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint ThumbnailManager_GenerateTravelSimThumbnail(void)

{
  void *this;
  uint in_EAX;
  uint uVar1;
  undefined4 local_10 [4];
  
  this = DAT_10c71150;
                    /* 0x569bd0  1045  ThumbnailManager_GenerateTravelSimThumbnail */
  if (DAT_10c71150 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  FUN_1055dbb0(&stack0x00000004,local_10);
  uVar1 = FUN_10325a70(this);
  return uVar1;
}

