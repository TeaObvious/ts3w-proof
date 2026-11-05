/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f90 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_GetRectFloatPropertyImpl [assembly=ScriptCore token=0x06000E2D;
   winHandle: System.UInt32, propID: System.UInt32, outValue: Sims3.SimIFace.Rect&;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.UIManager::UIManager_GetRectFloatPropertyImpl(uint param_1)

{
  char cVar1;
  int *piVar2;
  void *this;
  undefined4 *unaff_retaddr;
  undefined4 uStack_5c;
  undefined4 uStack_50;
  undefined4 *puStack_4c;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [12];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [40];
  int iStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((param_1 & 0xff000000) == 0x30000000) &&
     (piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(), piVar2 != (int *)0x0)) {
    uStack_5c = 0xeec58382;
    piVar2 = (int *)(**(code **)(*piVar2 + 0xc))();
    if (piVar2 != (int *)0x0) {
      ppuStack_30 = &PTR_LAB_0100eea8;
      FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar2 + 0x10))(auStack_40);
      this = (void *)FUN_00511ca0(auStack_44,&uStack_5c,iStack_4,&ppuStack_34);
      if ((this != (void *)0x0) &&
         (cVar1 = FUN_00511aa0(this,&uStack_50,(int)&uStack_5c,&ppuStack_34), cVar1 != '\0')) {
        *unaff_retaddr = *puStack_4c;
        unaff_retaddr[1] = puStack_4c[1];
        unaff_retaddr[2] = puStack_4c[2];
        unaff_retaddr[3] = puStack_4c[3];
      }
      ppuStack_34 = &PTR_LAB_0100eea8;
      FUN_004e8da0(&ppuStack_30);
    }
  }
  return;
}

