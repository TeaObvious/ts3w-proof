/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetPackageName. Export ordinal(s):
   1787. Entry VA: 0x10982ad0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000EF9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl ContentManager_GetPackageName(ushort *param_1)

{
  void *this;
  undefined4 uVar1;
  int unaff_ESI;
  undefined1 auStack_38 [8];
  undefined4 uStack_30;
  undefined4 local_10 [4];
  
                    /* 0x982ad0  1787  ContentManager_GetPackageName */
  this = (void *)FUN_107744c0();
  if (this != (void *)0x0) {
    uStack_30 = 0x10982aef;
    FUN_10934a30(local_10,param_1,0x10);
    FUN_109335c0(auStack_38,local_10);
    FUN_1077a070(this);
    uVar1 = Ordinal_2();
    if ((2 < (int)((int)&_Dst_10ca8244 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      uStack_30 = 0x10982b50;
      FUN_10918e90(unaff_ESI);
    }
    return uVar1;
  }
  uVar1 = Ordinal_2();
  return uVar1;
}

