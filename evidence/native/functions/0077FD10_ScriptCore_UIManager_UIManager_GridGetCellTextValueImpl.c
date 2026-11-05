/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162fd0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GridGetCellTextValueImpl [assembly=ScriptCore token=0x06000E35;
   winHandle: System.UInt32, column: System.Int32, row: System.Int32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.UIManager::UIManager_GridGetCellTextValueImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 unaff_retaddr;
  void *pvStack_64;
  undefined **ppuStack_60;
  undefined **appuStack_54 [2];
  ushort uStack_4c;
  undefined2 uStack_4a;
  undefined **appuStack_3c [2];
  undefined **appuStack_34 [2];
  undefined2 uStack_2c;
  undefined2 uStack_2a;
  short *psStack_10;
  undefined2 *puStack_4;
  
  ppuStack_60 = (undefined **)0x77fd1a;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    ppuStack_60 = (undefined **)param_1;
    pvStack_64 = (void *)0x77fd41;
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))();
    if (piVar2 != (int *)0x0) {
      pvStack_64 = (void *)0xaf1ee902;
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))();
      if (piVar2 != (int *)0x0) {
        puStack_4 = &DAT_00fba6c4;
        (**(code **)(*piVar2 + 0x1d8))(unaff_retaddr,param_1,&puStack_4);
        pvStack_64 = (void *)0x0;
        ppuStack_60 = (undefined **)0x0;
        FUN_0040b590(&pvStack_64,psStack_10);
        appuStack_54[0] = &PTR_FUN_00fba6f4;
        uStack_4c = 0;
        uStack_4a = 0;
        FUN_004f59c0(appuStack_54,0x13,9,&pvStack_64,0x10,1);
        appuStack_34[0] = &PTR_FUN_00fba6f4;
        uStack_2c = 0;
        uStack_2a = 0;
        FUN_004f64b0(appuStack_34,(int)appuStack_54);
        appuStack_54[0] = &PTR_FUN_00fba6f4;
        if ((uStack_4c & 4) != 0) {
          FUN_004f5760(appuStack_54,'\0');
        }
        if ((2 < (int)(-(int)pvStack_64 & 0xfffffffeU)) && (pvStack_64 != (void *)0x0)) {
          Memory_FreeIfNonNull(pvStack_64);
        }
        (**(code **)(*piVar1 + 0x50))(appuStack_34,appuStack_54 + -5);
        appuStack_3c[0] = &PTR_FUN_00fba6f4;
        if (((uint)appuStack_34[0] & 4) != 0) {
          FUN_004f5760(appuStack_3c,'\0');
        }
        return param_1;
      }
    }
  }
  return 0;
}

