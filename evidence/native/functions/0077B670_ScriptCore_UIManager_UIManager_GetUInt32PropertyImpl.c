/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f70 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetUInt32PropertyImpl [assembly=ScriptCore token=0x06000E29;
   winHandle: System.UInt32, propID: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   Complete stored body: 227 bytes, 73 actual Listing instructions. After object/interface
   admission, descriptor lookup 00511CA0 and value read 00511AA0 (AL success) select a DWORD payload
   returned in EAX. Selected failure exits return EAX zero. Physical handle/property arguments are
   stack inputs despite the narrower inferred stored prototype. The inspected instructions require
   handle high byte 0x30, resolve the handle through global UI interface virtual+0xCC, and request
   property interface 0xEEC58382. Descriptor lookup/read/write calls and virtual child effects
   remain separate boundaries; current CLR stores are not an inferred native representation.
   
   Analyst note, original PC1.67 static. Actual genuine GetUInt32Property physical inputs are two
   stack DWORDs, UInt32 handle/property; caller-clean plain RET. Prior one-argument metadata omitted
   propertyId. Resolve kind30 and query EEC58382, GetPropertyContext virtual10, FindDescriptor511CA0
   and Read511AA0(AL success), then DWORD payload/EAX or0. Original context and indirect-call stack
   aliases may remain in actual C; preserve all prior binding names/plates and do not change foreign
   virtual callees just to beautify decompilation. */

uint __cdecl
ScriptCore.UIManager::UIManager_GetUInt32PropertyImpl(uint windowHandle,uint propertyId)

{
  uint uVar1;
  bool bVar2;
  int *piVar3;
  void *this;
  undefined4 uStack_5c;
  uint uStack_58;
  undefined1 auStack_50 [4];
  uint *puStack_4c;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [12];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [40];
  uint uStack_4;
  
  uStack_58 = 0x77b679;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    uStack_58 = windowHandle;
    uStack_5c = 0x77b69e;
    piVar3 = (int *)(**(code **)(*piVar3 + 0xcc))();
    if (piVar3 != (int *)0x0) {
      uStack_5c = 0xeec58382;
      piVar3 = (int *)(**(code **)(*piVar3 + 0xc))();
      if (piVar3 != (int *)0x0) {
        ppuStack_30 = &PTR_LAB_0100eea8;
        FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
        (**(code **)(*piVar3 + 0x10))(auStack_40);
        this = NativePropertyContext_FindDescriptor(auStack_44,&uStack_5c,uStack_4,&ppuStack_34);
        if (this != (void *)0x0) {
          bVar2 = NativePropertyDescriptor_Read(this,auStack_50,&uStack_5c,&ppuStack_34);
          if (bVar2) {
            uVar1 = *puStack_4c;
            ppuStack_34 = &PTR_LAB_0100eea8;
            FUN_004e8da0(&ppuStack_30);
            return uVar1;
          }
        }
        ppuStack_34 = &PTR_LAB_0100eea8;
        FUN_004e8da0(&ppuStack_30);
      }
    }
  }
  return 0;
}

