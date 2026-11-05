/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fc8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetDrawablePropertyImpl [assembly=ScriptCore token=0x06000E34;
   handle: System.UInt32, drawablePropID: System.UInt32, componentID: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, original PC1.67 static. Physical three caller-clean DWORD arguments,
   plainRET/fullEAX; prior two-argument C inference was a stack-tracking defect. Complete271byte
   body ends77C25E. SavedESP+5C=handle,+60=property,+64=component; descriptor lookup and AL read
   success plus unsigned component<count precede selection. Selected pointer is queried by77A090
   for6EC581FD; only nonnull returned primary is retained through virtual0 BEFORE
   serviceC8(primary,30hex) handle publication. Selected concrete StdDrawable primary slotsFC0840/44
   lead516C20/539560 to complete+8 increment/decrement, zero-only destructor. This proves
   independent script acquisitions, not a cached managed drawable wrapper or thread-safety
   guarantee.
   
   Analyst clarification, PC1.67 instructions versus actual decompiler: Decompiler defect remains in
   actual exported C: FindDescriptor property is printed as windowHandle and selected index as
   propertyIdentity, leaving component apparently unused. Physical77C1C6 loads the second stack
   word(property) and77C1FC the third(component). These actual instruction roles supersede
   decompiler expressions; no foreign helper prototype was cosmetically altered. */

uint __cdecl
ScriptCore.UIManager::UIManager_GetDrawablePropertyImpl
          (uint windowHandle,uint propertyIdentity,uint component)

{
  bool bVar1;
  int *piVar2;
  int *piVar3;
  void *this;
  undefined4 *puVar4;
  uint uVar5;
  int iStack_50;
  uint uStack_4c;
  undefined1 auStack_48 [12];
  undefined1 auStack_3c [8];
  undefined4 auStack_34 [2];
  undefined **ppuStack_2c;
  undefined **local_28;
  undefined1 local_24 [36];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) == 0x30000000) {
    local_28 = &PTR_LAB_0100eea8;
    FUN_004e8cb0(local_24,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(windowHandle);
    if (piVar3 != (int *)0x0) {
      piVar3 = (int *)(**(code **)(*piVar3 + 0xc))(0xeec58382);
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x10))(auStack_3c);
        this = NativePropertyContext_FindDescriptor(auStack_3c,auStack_48,windowHandle,&ppuStack_2c)
        ;
        if (this != (void *)0x0) {
          bVar1 = NativePropertyDescriptor_Read(this,&stack0xffffffac,auStack_48,&ppuStack_2c);
          if ((bVar1) && (propertyIdentity < uStack_4c)) {
            puVar4 = UiDrawable_QueryPrimaryInterface(*(void **)(iStack_50 + propertyIdentity * 4));
            if (puVar4 != (undefined4 *)0x0) {
              (**(code **)*puVar4)();
              uVar5 = (**(code **)(*piVar2 + 200))(puVar4,0x30);
              FUN_007794f0(auStack_34);
              return uVar5;
            }
          }
        }
      }
    }
    ppuStack_2c = &PTR_LAB_0100eea8;
    FUN_004e8da0(&local_28);
  }
  return 0;
}

