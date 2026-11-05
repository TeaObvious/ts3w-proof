/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX Host, one IWindow stack word/RET 4. Guard handle
   service, current fourth callback Host +34 and servicevirtual 0x34AL false. Translate IWindow with
   service 0xC8(kind30), build UInt32 variant, call service virtual
   0x134(currentcallback,oneargument,count1). Destroy returned variant, release created handle
   through service 0xD8, then destroy argument variant. No ordinary receiver virtual 0 acquire here,
   no source/destination payload. Called synchronously from742320 after optional4097 event and
   before native registry retirement. No FIFO or thread marker. */

void __thiscall UiHost_NotifyWindowShutdown(void *this,void *windowInterface)

{
  char cVar1;
  int *piVar2;
  undefined **ppuStack_5c;
  undefined **appuStack_38 [2];
  byte bStack_30;
  undefined1 auStack_28 [40];
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar2 != (int *)0x0) && (*(int *)((int)this + 0x34) != 0)) {
    cVar1 = (**(code **)(*piVar2 + 0x34))();
    if (cVar1 == '\0') {
      (**(code **)(*piVar2 + 200))();
      ppuStack_5c = (undefined **)0x77ec1c;
      Variant_AssignUInt32(&stack0xffffffb8,(uint *)&stack0xffffffb4);
      ppuStack_5c = (undefined **)&stack0xffffffb8;
      (**(code **)(*piVar2 + 0x134))(auStack_28,*(undefined4 *)((int)this + 0x34));
      appuStack_38[0] = &PTR_FUN_00fba6f4;
      if ((bStack_30 & 4) != 0) {
        FUN_004f5760(appuStack_38,'\0');
      }
      (**(code **)(*piVar2 + 0xd8))(ppuStack_5c);
      ppuStack_5c = &PTR_FUN_00fba6f4;
      if (((uint)windowInterface & 4) != 0) {
        FUN_004f5760(&ppuStack_5c,'\0');
      }
    }
  }
  return;
}

