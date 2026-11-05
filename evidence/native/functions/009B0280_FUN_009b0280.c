/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, existing FUN_009b0280; analyst description only, no Ghidra rename.
   ECX inventory-store receiver, one source-stream pointer stackword, RET4. Full220-byte
   existing body /76 instructions checked; both exits preserved. Gets content database,
   obtains ID from9B0100, opens B4DD716B/group0 under that ID, seeks source to0, copies,
   closes destination then compares copied count with source length and context status.
   Success returns allocated UInt64 EDX:EAX; failures zero both words. The shown
   ResourceStreamContext_Close(&local_20) is a decompiler stack-local artifact: actual
   ECX at9B0310 is the stream context (ESP+20 with temporary EBP push). Keep instructions
   authoritative. 9B0100 collision policy and complete transitive IO semantics are open. */
ulonglong __thiscall FUN_009b0280(void *this,int *param_1)

{
  bool bVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  ulonglong uVar5;
  ulonglong local_28;
  undefined4 local_20;
  undefined4 local_1c;
  int *local_18 [5];
  char cStack_4;
  
  FUN_007d7900(local_18);
  if (DAT_011ea6a4 != (void *)0x0) {
    uVar2 = FUN_009a16e0(DAT_011ea6a4,local_18);
    if ((char)uVar2 != '\0') {
      uVar5 = FUN_009b0100((void *)((int)this + 0x10),local_18[0]);
      local_20 = 0xb4dd716b;
      local_1c = 0;
      local_28 = uVar5;
      bVar1 = ResourceStreamContext_OpenWrite(local_18,&local_28,1);
      if (bVar1) {
        (**(code **)(*param_1 + 0x28))(0,0);
        iVar3 = FUN_004dd7b0(param_1,local_18[0],0xffffffff);
        ResourceStreamContext_Close(&local_20);
        iVar4 = (**(code **)(*param_1 + 0x1c))();
        if ((iVar3 == iVar4) && (cStack_4 != '\0')) {
          StreamReader_ReleaseAuxiliary(local_18);
          return uVar5;
        }
      }
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return 0;
}

