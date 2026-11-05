/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Verified PC 1.67 registration table at 0x01162960 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_CopyStream [assembly=ScriptCore token=0x0600103E; handle:
   System.UInt32, srcHandle: System.UInt32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body00775B40..00775C58:281 original bytes/107instructions; two stack
   handles,0x1000-byte stack allocation and plain RET. Destination lookup precedes source, either
   null returns-2. Source virtual+0x1C sizeFFFFFFFF fails-3; virtual+0x28(0,0) must return nonzero
   AL even for zero size. Loop requests min(remaining,0x1000), requires exact source+0x30 read count
   and nonzero destination+0x38 AL write result; failure-3 preserves earlier mutations, completion0.
   Both buffer LEAs refer to the same local block after physical stack accounting; differing
   decompiler stack labels are artifacts. No CLR whole-array snapshot/monitor or safe
   self-copy/concurrent/transaction/exception promise follows. Concrete virtuals and source
   lookup00774E80 remain separate. */

undefined4 __cdecl ScriptCore.StreamHost::StreamHost_CopyStream(uint param_1,uint param_2)

{
  char cVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  int *piVar5;
  uint uVar6;
  undefined1 auStack_ffe [4094];
  
  if (param_1 == DAT_011d7838) {
    piVar5 = DAT_011d783c;
  }
  else if ((param_1 & 0xff000000) == 0x60000000) {
    piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar5 = (int *)(**(code **)(*piVar5 + 0xcc))();
    if (piVar5 != (int *)0x0) {
      DAT_011d7838 = param_1;
      DAT_011d783c = piVar5;
    }
  }
  else {
    piVar5 = (int *)0x0;
  }
  if (piVar5 == (int *)0x0) {
    return 0xfffffffe;
  }
  if (param_2 == DAT_011d7838) {
    piVar2 = DAT_011d783c;
  }
  else {
    piVar2 = (int *)StreamHost_ResolveTaggedStreamAndCache(param_2);
  }
  if (piVar2 == (int *)0x0) {
    return 0xfffffffe;
  }
  uVar3 = (**(code **)(*piVar2 + 0x1c))();
  if ((uVar3 != 0xffffffff) && (cVar1 = (**(code **)(*piVar2 + 0x28))(0,0), cVar1 != '\0')) {
    while( true ) {
      if (uVar3 == 0) {
        return 0;
      }
      uVar6 = 0x1000;
      if (uVar3 < 0x1001) {
        uVar6 = uVar3;
      }
      uVar4 = (**(code **)(*piVar2 + 0x30))(auStack_ffe + -10,uVar6);
      if ((uVar6 != uVar4) ||
         (cVar1 = (**(code **)(*piVar5 + 0x38))(auStack_ffe + -0x12,uVar6), cVar1 == '\0')) break;
      uVar3 = uVar3 - uVar6;
    }
  }
  return 0xfffffffd;
}

