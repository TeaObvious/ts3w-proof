/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_IsPackInstalled. Export
   ordinal(s): 512. Entry VA: 0x10537570. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000588. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

char OnlineFeaturesHost_IsPackInstalled(void)

{
  char cVar1;
  void *this;
  int *piVar2;
  ushort *puVar3;
  undefined1 auStack_2c [8];
  undefined4 uStack_24;
  
  this = (void *)FUN_107744c0();
  piVar2 = (int *)FUN_1055b120();
  if ((this != (void *)0x0) && (piVar2 != (int *)0x0)) {
    puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))();
    uStack_24 = 0x10537422;
    FUN_10934a30(&stack0xffffffec,puVar3,0x10);
    FUN_109335c0(auStack_2c,(undefined4 *)&stack0xffffffec);
    cVar1 = FUN_1077bb10(this);
    return cVar1;
  }
  return '\0';
}

