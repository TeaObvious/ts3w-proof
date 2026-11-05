/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0115ec18 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CacheManager::CacheManager_ReadDatabaseChecksum [assembly=ScriptCore token=0x06000DA2;
   databaseName: System.String, checksum: System.UInt64&, dataSize: System.UInt64&, recordCount:
   System.Int32&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.CacheManager::CacheManager_ReadDatabaseChecksum
          (undefined4 param_1,uint *param_2,uint *param_3,uint *param_4)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  ushort *wideName;
  uint uVar4;
  void *stream;
  undefined4 extraout_EAX;
  undefined4 uVar5;
  void *unaff_EBP;
  ulonglong uVar6;
  undefined1 uStack00000000;
  undefined4 uStack_28;
  int *piStack_18;
  
  *param_2 = 0;
  param_2[1] = 0;
  *param_3 = 0;
  param_3[1] = 0;
  *param_4 = 0;
  piVar2 = (int *)FUN_004afe80();
  uVar4 = 0;
  if (piVar2 != (int *)0x0) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    wideName = (ushort *)(**(code **)(*piVar3 + 0x58))(param_1);
    uVar6 = NameHash64_Utf16Z(wideName);
    piVar2 = (int *)(**(code **)(*piVar2 + 0x44))((int)register0x00000010 + -0x2c);
    uVar4 = 0;
    if (piVar2 != (int *)0x0) {
      uVar4 = (**(code **)(*piVar2 + 0x34))((int)register0x00000010 + -0x30,&uStack00000000,1,6,1,0)
      ;
      if ((char)uVar4 != '\0') {
        uVar4 = 1;
        stream = (void *)(**(code **)(*piStack_18 + 0x18))();
        StreamReader_Construct((void *)((int)register0x00000010 + -0x38),stream,uVar4);
        uStack_28 = (uint)(uVar6 >> 0x20);
        bVar1 = Stream_ReadUInt64(unaff_EBP,(ulonglong *)param_2,uStack_28);
        StreamReader_AccumulateStatus((void *)((int)register0x00000010 + -0x38),bVar1);
        bVar1 = Stream_ReadUInt64(unaff_EBP,(ulonglong *)param_3,uStack_28);
        StreamReader_AccumulateStatus((void *)((int)register0x00000010 + -0x38),bVar1);
        bVar1 = Stream_ReadUInt32(unaff_EBP,param_4,uStack_28);
        StreamReader_AccumulateStatus((void *)((int)register0x00000010 + -0x38),bVar1);
        (**(code **)(*piStack_18 + 0x20))();
        StreamReader_ReleaseAuxiliary((void *)((int)register0x00000010 + -0x38));
        uVar5 = extraout_EAX;
        if (piStack_18 != (int *)0x0) {
          uVar5 = (**(code **)(*piStack_18 + 8))();
        }
        return CONCAT31((int3)((uint)uVar5 >> 8),0x84);
      }
      if (piStack_18 != (int *)0x0) {
        uVar4 = (**(code **)(*piStack_18 + 8))();
      }
    }
  }
  return uVar4 & 0xffffff00;
}

