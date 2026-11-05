/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162f88 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetRectFloatPropertyImpl [assembly=ScriptCore token=0x06000E2C;
   winHandle: System.UInt32, propID: System.UInt32, value: Sims3.SimIFace.Rect&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst note, PC1.67 static. Registered original ScriptCore.UIManager SetRectFloatProperty
   boundary; retain original registration name. Physical cdecl has winHandle DWORD, propID DWORD and
   pointer to four binary32 words; RET without argument cleanup, void. First get global interface,
   then admit only handle high byte30 and nonnull pointer. Window lookup global virtualCC consumes
   handle; EDI loaded at77B98C is physical second argument propID. CMP EDI,EEC1B005 at77B990 selects
   Area, NOT winHandle despite the decompiler's aliased comparison/descriptor arguments. Special
   Area requires nonnull window and interfaceEEEE8218; if present copy all16 supplied bytes using
   MOVSS (no normalization/conversion) to local rectangle before virtual64 and return. Missing
   special interface falls through generic descriptor path, not unconditional failure. Generic path
   requests interfaceEEC58382, resolves descriptor511CA0 using EDI propID, selects value type
   through maskedFFF descriptor index, invokes511D40 with original rectangle pointer, then
   property-context virtual1C without a write-return test; clean up local variant. Concrete
   descriptor, queried-interface identities, virtual64 producer and callback effects remain
   separately scoped: do not label unjoined candidate513EF0 as the full Area setter from a matching
   slot alone. This body has no framebuffer dimension memoization, C# override dictionary,
   virtual-control refresh or forced HUD layering rule. Actual annotated Ghidra C may retain
   indirect-call stack aliasing; original ASM and this physical argument provenance govern the
   contract. */

void __cdecl
ScriptCore.UIManager::UIManager_SetRectFloatPropertyImpl
          (uint winHandle,uint propID,float *rectFloat4)

{
  int *piVar1;
  int *piVar2;
  void *this;
  undefined1 auStack_54 [2];
  undefined1 auStack_52 [6];
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float afStack_40 [3];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [44];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((winHandle & 0xff000000) == 0x30000000) && (rectFloat4 != (float *)0x0)) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(winHandle);
                    /* Analyst: EDI is physical propID (second cdecl argument), loaded from current
                       ESP+68 at77B98C. This compares propertyEEC1B005, not winHandle. Decompiler
                       aliasing of handle/property is a defect. */
    if (winHandle == 0xeec1b005) {
      if (piVar1 == (int *)0x0) {
        return;
      }
      piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
      if (piVar2 != (int *)0x0) {
        fStack_4c = *rectFloat4;
        fStack_48 = rectFloat4[1];
        fStack_44 = rectFloat4[2];
        afStack_40[0] = rectFloat4[3];
        (**(code **)(*piVar2 + 100))(&fStack_4c);
        return;
      }
    }
    if ((piVar1 != (int *)0x0) &&
       (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382), piVar1 != (int *)0x0)) {
      ppuStack_30 = &PTR_LAB_0100eea8;
      FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar1 + 0x10))(afStack_40);
      this = NativePropertyContext_FindDescriptor(&fStack_44,auStack_54,winHandle,&ppuStack_34);
      if (this != (void *)0x0) {
        NativePropertyDescriptor_Write(this,auStack_54,auStack_54 + -0xc,&ppuStack_34);
        (**(code **)((int)fStack_44 + 0x1c))(afStack_40[0]);
      }
      ppuStack_34 = &PTR_LAB_0100eea8;
      FUN_004e8da0(&ppuStack_30);
    }
  }
  return;
}

