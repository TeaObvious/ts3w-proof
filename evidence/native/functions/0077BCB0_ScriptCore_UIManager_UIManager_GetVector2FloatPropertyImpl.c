/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162fa0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetVector2FloatPropertyImpl [assembly=ScriptCore
   token=0x06000E2F; handle: System.UInt32, propID: System.UInt32, outValue:
   Sims3.SimIFace.Vector2&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   BOUNDARY LIMIT: stored function body remains one byte at 0077BCB0 and actual function Listing
   contains ZERO instructions. The separately authenticated 224-byte original PE linear window is
   bounded evidence, not a complete function/body claim; no body or analysis repair was made. Within
   that window, descriptor/value success precedes copying both Vector2 components to the supplied
   output. There is no unconditional output initialization and no successful-write null-output gate
   in the selected window. Original managed GetVector2FloatProperty initializes its own local
   Vector2 to zero before passing its address, which differs from an arbitrary prefilled direct
   native output buffer. The inspected instructions require handle high byte 0x30, resolve the
   handle through global UI interface virtual+0xCC, and request property interface 0xEEC58382.
   Descriptor lookup/read/write calls and virtual child effects remain separate boundaries; current
   CLR stores are not an inferred native representation. */

void ScriptCore_UIManager__UIManager_GetVector2FloatPropertyImpl(uint param_1)

{
  bool bVar1;
  int *piVar2;
  void *this;
  undefined4 *unaff_retaddr;
  undefined4 uStack_5c;
  undefined1 auStack_50 [4];
  undefined4 *puStack_4c;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [12];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [40];
  uint uStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(), piVar2 != (int *)0x0)) {
    uStack_5c = 0xeec58382;
    piVar2 = (int *)(**(code **)(*piVar2 + 0xc))();
    if (piVar2 != (int *)0x0) {
      ppuStack_30 = &PTR_LAB_0100eea8;
      FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar2 + 0x10))(auStack_40);
      this = NativePropertyContext_FindDescriptor(auStack_44,&uStack_5c,uStack_4,&ppuStack_34);
      if ((this != (void *)0x0) &&
         (bVar1 = NativePropertyDescriptor_Read(this,auStack_50,&uStack_5c,&ppuStack_34), bVar1)) {
        *unaff_retaddr = *puStack_4c;
        unaff_retaddr[1] = puStack_4c[1];
      }
      ppuStack_34 = &PTR_LAB_0100eea8;
      FUN_004e8da0(&ppuStack_30);
    }
  }
  return;
}

