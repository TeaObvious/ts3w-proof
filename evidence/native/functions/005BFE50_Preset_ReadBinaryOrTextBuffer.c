/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */


/* Analyst note (PC1.67 SACS migration contract): ECX preset plus buffer,length,UTF16 flag RET0C,
   corrected physical prototype. Test firstBYTE42 when length>=2, then construct reader and005BF6C0;
   otherwise parse text or retain/convert text using low-byte encoding flag. LPCWSTR inferred by a
   text branch must not make binary byte payloads Unicode. */

byte __thiscall Preset_ReadBinaryOrTextBuffer(void *this,undefined *arg0,uint arg1,byte arg2)

{
  undefined4 *this_00;
  undefined4 uVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined3 in_stack_0000000d;
  byte local_45;
  undefined1 local_44 [24];
  undefined **local_2c;
  undefined4 *local_28;
  int local_20;
  
  FUN_005bfb40((int)this);
  uVar1 = _arg2;
  local_45 = 1;
  if ((arg1 < 2) || (*arg0 != 'B')) {
    uVar2 = FUN_005bf140(this,arg0,arg1);
    if ((char)uVar2 == '\0') {
      if ((char)uVar1 == '\0') {
        this_00 = (undefined4 *)((int)this + 0x2c);
        FUN_0040c640(this_00,arg1);
        uVar3 = Utf_ConvertEncodingUnits((LPCWSTR)arg0,arg1,8,(LPWSTR)*this_00,&arg1,0x10);
        FUN_0040c640(this_00,uVar3);
      }
      else {
        FUN_00408d60((void *)((int)this + 0x2c),arg0,(undefined2 *)(arg0 + (arg1 & 0xfffffffe)));
      }
    }
  }
  else {
    FUN_004df4c0(&local_2c,arg0,arg1,'\x01',0,(int *)0x0,0);
    local_20 = local_20 + 1;
    StreamReader_Construct(local_44,&local_2c,1);
    local_45 = Preset_ReadBinaryBlock(this,local_44,(int *)0x0);
    StreamReader_ReleaseAuxiliary(local_44);
    local_2c = &PTR_FUN_00fb6c00;
    if (local_28 != (undefined4 *)0x0) {
      MemoryBacking_ReleaseReference(local_28);
    }
  }
  iVar5 = 0x60;
  if (*(int *)((int)this + 0x2c) != *(int *)((int)this + 0x30)) {
    iVar5 = (*(int *)((int)this + 0x30) - *(int *)((int)this + 0x2c) >> 1) * 2 + 0x62;
  }
  if (*(int *)((int)this + 0x28) != 0) {
    iVar4 = FUN_005c09e0(*(int *)((int)this + 0x28));
    iVar5 = iVar5 + iVar4;
  }
  FUN_00731be0(this,iVar5);
  return local_45;
}

