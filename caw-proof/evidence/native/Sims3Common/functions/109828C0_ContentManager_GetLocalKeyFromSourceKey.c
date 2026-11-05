/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ContentManager_GetLocalKeyFromSourceKey. Export
   ordinal(s): 1784. Entry VA: 0x109828c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EFE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ContentManager_GetLocalKeyFromSourceKey(ushort *param_1)

{
  char cVar1;
  void *this;
  undefined3 extraout_var;
  undefined4 uVar3;
  undefined4 *in_stack_00000018;
  undefined1 auStack_60 [12];
  undefined4 uStack_54;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20 [4];
  undefined4 local_10 [4];
  uint uVar2;
  
                    /* 0x9828c0  1784  ContentManager_GetLocalKeyFromSourceKey */
  this = (void *)FUN_107744c0();
  uVar2 = 0;
  if (this != (void *)0x0) {
    uStack_54 = 0x109828e6;
    FUN_10934a30(local_20,param_1,0x10);
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = 0;
    uStack_54 = 0x10982915;
    FUN_1055daa0(local_10,(undefined4 *)&stack0x00000008);
    FUN_109335c0(auStack_60,local_20);
    cVar1 = FUN_10779d30(this);
    uVar2 = CONCAT31(extraout_var,cVar1);
    if (cVar1 != '\0') {
      uStack_54 = 0x10982966;
      uVar3 = FUN_10989d40(&local_30,in_stack_00000018);
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  return uVar2 & 0xffffff00;
}

