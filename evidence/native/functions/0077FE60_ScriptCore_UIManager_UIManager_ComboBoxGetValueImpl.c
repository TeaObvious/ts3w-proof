/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162ff0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_ComboBoxGetValueImpl [assembly=ScriptCore token=0x06000E39;
   winHandle: System.UInt32, index: System.Int32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC1.67 original combo-control comparison; no execution. PC1.67 static combo value
   boundary. Physical cdecl reads handle/index from two incoming stack words; retained inferred C
   has one parameter and is not repaired. After high-byte30 handle admission and interface2F5528D9
   query, invokes slot+34, constructs temporary UTF16/variant state through retained helpers and
   global-interface+50 projection, with selected cleanup branches. Invalid admission returns0.
   ScriptCore import returns String through StringFromVariantMarshaler; lower
   conversion/null/allocator/ref ownership is not recovered here. Full actual body308bytes101Listing
   is distinct from retained320-byte canonical raw window. No source ABI/type/body/flow change is
   authorized. */

undefined4 __cdecl ScriptCore.UIManager::UIManager_ComboBoxGetValueImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  short *psVar3;
  undefined4 unaff_retaddr;
  void *pvStack_5c;
  undefined **appuStack_4c [2];
  ushort uStack_44;
  undefined2 uStack_42;
  undefined **appuStack_34 [2];
  undefined **appuStack_2c [2];
  undefined2 uStack_24;
  undefined2 uStack_22;
  undefined4 uStack_10;
  undefined1 auStack_8 [8];
  
  pvStack_5c = (void *)0x77fe6a;
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    pvStack_5c = (void *)param_1;
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))();
    if (piVar2 != (int *)0x0) {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0x2f5528d9);
      if (piVar2 != (int *)0x0) {
        psVar3 = (short *)(**(code **)(*piVar2 + 0x34))(unaff_retaddr);
        pvStack_5c = (void *)0x0;
        FUN_0040b590(&pvStack_5c,psVar3);
        appuStack_4c[0] = &PTR_FUN_00fba6f4;
        uStack_44 = 0;
        uStack_42 = 0;
        FUN_004f59c0(appuStack_4c,0x13,9,&pvStack_5c,0x10,1);
        appuStack_2c[0] = &PTR_FUN_00fba6f4;
        uStack_24 = 0;
        uStack_22 = 0;
        FUN_004f64b0(appuStack_2c,(int)appuStack_4c);
        appuStack_4c[0] = &PTR_FUN_00fba6f4;
        if ((uStack_44 & 4) != 0) {
          FUN_004f5760(appuStack_4c,'\0');
        }
        if ((2 < (int)(-(int)pvStack_5c & 0xfffffffeU)) && (pvStack_5c != (void *)0x0)) {
          Memory_FreeIfNonNull(pvStack_5c);
        }
        (**(code **)(*piVar1 + 0x50))(appuStack_2c,auStack_8);
        appuStack_34[0] = &PTR_FUN_00fba6f4;
        if (((uint)appuStack_2c[0] & 4) != 0) {
          FUN_004f5760(appuStack_34,'\0');
        }
        return uStack_10;
      }
    }
  }
  return 0;
}

