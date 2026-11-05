/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115edb8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CommandSystem::Command_UnregisterCommandImpl [assembly=ScriptCore token=0x0600011A;
   cmdName: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CommandSystem::Command_UnregisterCommandImpl(int param_1)

{
  int iVar1;
  int *piVar2;
  wint_t *pwVar3;
  void *pvVar4;
  void *unaff_EBX;
  void *this;
  undefined1 uStack00000000;
  undefined4 uStack_8;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (param_1 != 0) {
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    iVar1 = DAT_011d4ef8;
    this = (void *)(DAT_011d4ef8 + 0x18);
    FUN_007d0020(pwVar3);
    UInt32PairMap_Find(this,(void *)((int)register0x00000010 + -0xc),(uint *)&uStack00000000);
    if (unaff_EBX != *(void **)(*(int *)(iVar1 + 0x1c) + *(int *)(iVar1 + 0x20) * 4)) {
      pvVar4 = (void *)FUN_00589aa0();
      if (pvVar4 != (void *)0x0) {
        FUN_0058a210(pvVar4);
      }
      pvVar4 = *(void **)((int)unaff_EBX + 4);
      if (pvVar4 != (void *)0x0) {
        Memory_FreeIfNonNull(*(void **)((int)pvVar4 + 0xc));
        Memory_FreeIfNonNull(*(void **)((int)pvVar4 + 0x10));
        Memory_FreeIfNonNull(pvVar4);
      }
      UInt32PairMap_EraseIterator(this,(void *)((int)register0x00000010 + -0xc),unaff_EBX,uStack_8);
    }
  }
  return;
}

