/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162f78 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetFloatPropertyImpl [assembly=ScriptCore token=0x06000E2A;
   winHandle: System.UInt32, propID: System.UInt32, value: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   Complete stored body: 245 bytes, 74 actual Listing instructions. Physical stack inputs supply
   handle, property and Single value. Descriptor type index masked by 0xFFF selects the table at
   0114F4F8; the supplied Single stack address feeds generic write 00511D40. The selected
   property-context callback virtual+0x1C follows the write without a tested write return. No local
   finite-value filter is present. The inspected instructions require handle high byte 0x30, resolve
   the handle through global UI interface virtual+0xCC, and request property interface 0xEEC58382.
   Descriptor lookup/read/write calls and virtual child effects remain separate boundaries; current
   CLR stores are not an inferred native representation. */

void __cdecl ScriptCore.UIManager::UIManager_SetFloatPropertyImpl(uint param_1)

{
  int *piVar1;
  void *this;
  undefined4 uStack_5c;
  undefined1 auStack_50 [12];
  int iStack_44;
  undefined4 auStack_40 [3];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [40];
  uint uStack_4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(), piVar1 != (int *)0x0)) {
    uStack_5c = 0xeec58382;
    piVar1 = (int *)(**(code **)(*piVar1 + 0xc))();
    if (piVar1 != (int *)0x0) {
      ppuStack_30 = &PTR_LAB_0100eea8;
      FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar1 + 0x10))(auStack_40);
      this = NativePropertyContext_FindDescriptor(&iStack_44,auStack_50,uStack_4,&ppuStack_34);
      if (this != (void *)0x0) {
        uStack_5c = *(undefined4 *)(&DAT_0114f4f8 + (*(ushort *)((int)this + 0xc) & 0xfff) * 4);
        NativePropertyDescriptor_Write(this,auStack_50,&uStack_5c,&ppuStack_34);
        (**(code **)(iStack_44 + 0x1c))(auStack_40[0]);
      }
      ppuStack_34 = &PTR_LAB_0100eea8;
      FUN_004e8da0(&ppuStack_30);
    }
  }
  return;
}

