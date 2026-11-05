/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fc0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetImagePropertyImpl [assembly=ScriptCore token=0x06000E33;
   winHandle: System.UInt32, imagePropID: System.UInt32, componentID: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Physical three caller-clean DWORD arguments,
   plainRET/fullEAX; prior two-argument C inference omitted property/component separation.
   Complete260byte body ends77C143. Handle at savedESP+5C, property at+60, component at+64. Resolve
   kind30 target and QueryEEC58382, obtain descriptor/read; AL success and unsigned component<count
   required. Nonnull selected image primary virtual0 retains BEFORE serviceC8(image,30hex) handle
   publication, followed by local7794F0 cleanup. Failure givesEAX0. No arbitrary property or host
   placeholder behavior is proved by this bridge.
   
   Analyst clarification, PC1.67 instructions versus actual decompiler: Decompiler defect remains in
   actual exported C: it passes windowHandle as FindDescriptor property and prints propertyIdentity
   in the selected index while component appears unused. Physical77C0B6 loads the second stack
   word(property) and77C0EC the third(component). Do not implement those shifted C expressions;
   complete instructions govern. Foreign helper/indirect stack annotations were not guessed to make
   this C look clean. */

uint __cdecl
ScriptCore.UIManager::UIManager_GetImagePropertyImpl
          (uint windowHandle,uint propertyIdentity,uint component)

{
  undefined4 *puVar1;
  bool bVar2;
  int *piVar3;
  int *piVar4;
  void *this;
  uint uVar5;
  int iStack_50;
  uint uStack_4c;
  undefined1 auStack_48 [12];
  undefined1 auStack_3c [8];
  undefined4 auStack_34 [2];
  undefined **ppuStack_2c;
  undefined **local_28;
  undefined1 local_24 [36];
  
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    local_28 = &PTR_LAB_0100eea8;
    FUN_004e8cb0(local_24,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    piVar4 = (int *)(**(code **)(*piVar3 + 0xcc))(windowHandle);
    if (piVar4 != (int *)0x0) {
      piVar4 = (int *)(**(code **)(*piVar4 + 0xc))(0xeec58382);
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 0x10))(auStack_3c);
        this = NativePropertyContext_FindDescriptor(auStack_3c,auStack_48,windowHandle,&ppuStack_2c)
        ;
        if (this != (void *)0x0) {
          bVar2 = NativePropertyDescriptor_Read(this,&stack0xffffffac,auStack_48,&ppuStack_2c);
          if (((bVar2) && (propertyIdentity < uStack_4c)) &&
             (puVar1 = *(undefined4 **)(iStack_50 + propertyIdentity * 4),
             puVar1 != (undefined4 *)0x0)) {
            (**(code **)*puVar1)();
            uVar5 = (**(code **)(*piVar3 + 200))(puVar1,0x30);
            FUN_007794f0(auStack_34);
            return uVar5;
          }
        }
      }
    }
    ppuStack_2c = &PTR_LAB_0100eea8;
    FUN_004e8da0(&local_28);
  }
  return 0;
}

