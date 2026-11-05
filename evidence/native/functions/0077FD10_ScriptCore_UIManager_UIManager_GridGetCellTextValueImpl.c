/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fd0 (original PC 1.67 TS3W.exe).
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
  int iStack_64;
  uint uStack_60;
  undefined **appuStack_54 [2];
  ushort uStack_4c;
  undefined2 uStack_4a;
  undefined **appuStack_3c [2];
  undefined **appuStack_34 [2];
  undefined2 uStack_2c;
  undefined2 uStack_2a;
  short *psStack_10;
  undefined2 *puStack_4;
  
  uStack_60 = 0x77fd1a;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_60 = param_1;
    iStack_64 = 0x77fd41;
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))();
    if (piVar2 != (int *)0x0) {
      iStack_64 = -0x50e116fe;
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))();
      if (piVar2 != (int *)0x0) {
        puStack_4 = &DAT_00fba6c4;
        (**(code **)(*piVar2 + 0x1d8))(unaff_retaddr,param_1,&puStack_4);
        iStack_64 = 0;
        uStack_60 = 0;
        FUN_0040b590(&iStack_64,psStack_10);
        appuStack_54[0] = &PTR_FUN_00fba6f4;
        uStack_4c = 0;
        uStack_4a = 0;
        FUN_004f59c0(appuStack_54,0x13,9,&iStack_64,0x10,1);
        appuStack_34[0] = &PTR_FUN_00fba6f4;
        uStack_2c = 0;
        uStack_2a = 0;
        FUN_004f64b0(appuStack_34,(int)appuStack_54);
        appuStack_54[0] = &PTR_FUN_00fba6f4;
        if ((uStack_4c & 4) != 0) {
          FUN_004f5760(appuStack_54,'\0');
        }
        if ((2 < (int)(-iStack_64 & 0xfffffffeU)) && (iStack_64 != 0)) {
          FUN_004e44e0(iStack_64);
        }
        (**(code **)(*piVar1 + 0x50))(appuStack_34,&stack0xffffff98);
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

