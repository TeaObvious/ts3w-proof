/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fb8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetImagePropertyImpl [assembly=ScriptCore token=0x06000E32;
   winHandle: System.UInt32, imagePropID: System.UInt32, componentID: System.UInt32, imageHandle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Physical complete324byte setter,77BEF0 through77C033;
   twelve followingINT3 bytes are unowned. Previous one-byte function and three-DWORD stdcall
   metadata were defects. Genuine managed binding is four caller-clean
   DWORDs(handle,property,component,image), plainRET/void. After SUB60/pushedESI/EDI the first word
   is ESP+6C; after pushedEBX property is+74, image is+7C; after pushedEBP component is+7C. Resolve
   kind30 target/property interface; actual descriptor/read success and unsigned component<count
   admit update. Resolve image kind30 or use null, write selected temporary pointer, call511D40
   typed writer, then actual target notification. Native typed image writers retain/release pointers
   independently; current raw host link replacement is not full native callback equivalence.
   Preserve all original binding annotations; no neighbor/padding ownership.
   
   Analyst clarification, PC1.67 instructions versus actual decompiler: Decompiler defect remains in
   actual exported C: despite corrected four-word prototype it prints windowHandle as FindDescriptor
   property, component as the image handle and propertyIdentity as the array index. Those shifted
   formal expressions are NOT the original argument roles. Physical
   loads77BF69(property),77BFA5(image) and77BFCF(component), with saved EBX/EBP stack changes,
   establish property/image/component respectively. Full ASM is authoritative. No foreign
   helper/indirect prototype was changed merely to cosmetically clean C. */

void __cdecl
ScriptCore_UIManager__UIManager_SetImagePropertyImpl
          (uint windowHandle,uint propertyIdentity,uint component,uint imageHandle)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  void *this;
  undefined4 uVar5;
  int iStack_60;
  uint uStack_5c;
  undefined1 auStack_58 [8];
  int iStack_50;
  undefined4 auStack_4c [4];
  undefined1 auStack_3c [16];
  undefined **ppuStack_2c;
  undefined **ppuStack_28;
  undefined1 auStack_24 [36];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    ppuStack_28 = &PTR_LAB_0100eea8;
    FUN_004e8cb0(auStack_24,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(windowHandle);
    if ((piVar3 != (int *)0x0) &&
       (piVar4 = (int *)(**(code **)(*piVar3 + 0xc))(0xeec58382), piVar4 != (int *)0x0)) {
      (**(code **)(*piVar4 + 0x10))(auStack_3c);
      this = NativePropertyContext_FindDescriptor(auStack_3c,auStack_58,windowHandle,&ppuStack_2c);
      if ((this != (void *)0x0) &&
         (bVar1 = NativePropertyDescriptor_Read(this,&stack0xffffff9c,auStack_58,&ppuStack_2c),
         bVar1)) {
        if ((component & 0xff000000) == 0x30000000) {
          uVar5 = (**(code **)(*piVar2 + 0xcc))(component);
        }
        else {
          uVar5 = 0;
        }
        if (propertyIdentity < uStack_5c) {
          *(undefined4 *)(iStack_60 + propertyIdentity * 4) = uVar5;
          NativePropertyDescriptor_Write(this,auStack_58,&stack0xffffff9c,&ppuStack_2c);
          piVar2 = (int *)FUN_0050e9b0(piVar3);
          (**(code **)(*piVar2 + 0x10))(auStack_4c);
          (**(code **)(iStack_50 + 0x1c))(auStack_4c[0]);
        }
      }
    }
    ppuStack_2c = &PTR_LAB_0100eea8;
    FUN_004e8da0(&ppuStack_28);
  }
  return;
}

