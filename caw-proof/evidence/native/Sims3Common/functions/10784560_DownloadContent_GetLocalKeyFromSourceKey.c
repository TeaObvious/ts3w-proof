/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: DownloadContent_GetLocalKeyFromSourceKey. Export
   ordinal(s): 380. Entry VA: 0x10784560. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001192. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint DownloadContent_GetLocalKeyFromSourceKey(void)

{
  undefined4 uVar1;
  char cVar2;
  void *this;
  undefined3 extraout_var;
  undefined4 *puVar4;
  undefined4 *in_stack_00000024;
  undefined1 auStack_60 [12];
  undefined4 uStack_54;
  undefined4 local_40 [4];
  undefined4 local_30 [4];
  undefined4 local_20 [4];
  undefined4 local_10 [4];
  uint uVar3;
  
                    /* 0x784560  380  DownloadContent_GetLocalKeyFromSourceKey */
  this = (void *)FUN_107744c0();
  uVar3 = 0;
  if (this != (void *)0x0) {
    FUN_1055dbb0(&stack0x00000014,local_30);
    FUN_1055dbb0(in_stack_00000024,local_40);
    FUN_1055dac0(&stack0x00000004,local_20);
    FUN_109335c0(auStack_60,local_20);
    cVar2 = FUN_10779d30(this);
    uVar3 = CONCAT31(extraout_var,cVar2);
    if (cVar2 != '\0') {
      uStack_54 = 0x107845d3;
      puVar4 = (undefined4 *)FUN_1055daa0(local_10,local_40);
      *in_stack_00000024 = *puVar4;
      in_stack_00000024[1] = puVar4[1];
      in_stack_00000024[2] = puVar4[2];
      uVar1 = puVar4[3];
      in_stack_00000024[3] = uVar1;
      return CONCAT31((int3)((uint)uVar1 >> 8),1);
    }
  }
  return uVar3 & 0xffffff00;
}

