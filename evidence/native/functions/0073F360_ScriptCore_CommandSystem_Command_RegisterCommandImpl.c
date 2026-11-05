/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115edb0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CommandSystem::Command_RegisterCommandImpl [assembly=ScriptCore token=0x06000119;
   cmdName: System.String, cmdDesc: System.String, eventHandler: System.Delegate, bHidden:
   System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CommandSystem::Command_RegisterCommandImpl(int param_1,int param_2)

{
  void *allocation;
  int iVar1;
  int *piVar2;
  void *bucket;
  wint_t *pwVar3;
  short *psVar4;
  void *pvVar5;
  undefined4 uVar6;
  uint extraout_EAX;
  uint uVar7;
  void *unaff_EBX;
  void *unaff_EBP;
  void *this;
  undefined1 auStack_16 [2];
  uint auStack_14 [5];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  bucket = (void *)FUN_00589aa0();
  uVar7 = param_1;
  if (((param_1 != 0) && (param_2 != 0)) && (bucket != (void *)0x0)) {
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    psVar4 = (short *)(**(code **)(*piVar2 + 0x58))(param_2);
    pvVar5 = (void *)FUN_004e4500(0x1c,"Scripting/Command/CommandDef",0);
    uVar7 = 0;
    if (pvVar5 != (void *)0x0) {
      pvVar5 = FUN_0073ea90(pvVar5,pwVar3,psVar4,param_1,(char)param_2);
      iVar1 = DAT_011d4ef8;
      uVar7 = 0;
      if (pvVar5 != (void *)0x0) {
        this = (void *)(DAT_011d4ef8 + 0x18);
        if (*(int *)((int)pvVar5 + 0xc) != 0) {
          UInt32PairMap_Find(this,auStack_16 + -6,(uint *)((int)pvVar5 + 8));
          if (unaff_EBX != *(void **)(*(int *)(iVar1 + 0x1c) + *(int *)(iVar1 + 0x20) * 4)) {
            FUN_0058a210(unaff_EBP);
            allocation = *(void **)((int)unaff_EBX + 4);
            if (allocation != (void *)0x0) {
              Memory_FreeIfNonNull(*(void **)((int)allocation + 0xc));
              Memory_FreeIfNonNull(*(void **)((int)allocation + 0x10));
              Memory_FreeIfNonNull(allocation);
            }
            UInt32PairMap_EraseIterator(this,auStack_16 + -6,unaff_EBX,bucket);
          }
          FUN_0073f330(this,auStack_14,(uint *)(auStack_16 + -6));
          uVar6 = FUN_0058a5b0(unaff_EBP,(uint *)((int)pvVar5 + 8));
          return CONCAT31((int3)((uint)uVar6 >> 8),1);
        }
        Memory_FreeIfNonNull(*(void **)((int)pvVar5 + 0xc));
        Memory_FreeIfNonNull(*(void **)((int)pvVar5 + 0x10));
        Memory_FreeIfNonNull(pvVar5);
        uVar7 = extraout_EAX;
      }
    }
  }
  return uVar7 & 0xffffff00;
}

