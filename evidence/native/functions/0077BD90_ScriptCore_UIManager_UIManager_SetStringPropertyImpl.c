/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fa8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetStringPropertyImpl [assembly=ScriptCore token=0x06000E30;
   winHandle: System.UInt32, propID: System.UInt32, value: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   Complete stored body: 351 bytes, 122 actual Listing instructions. Null input text exits. After
   handle lookup, the property argument loaded into EBP is compared with 0xEEC1B00A; it is not the
   handle argument. Caption dispatch first requests interface 0xEEEE8218. If present it converts
   text through global UI virtual+0x58 and invokes caption setter virtual+0x78; if absent it falls
   back to the generic descriptor path, as do other properties. That path requests interface
   0xEEC58382, looks up the descriptor, uses converted text in generic write 00511D40, then invokes
   callback virtual+0x1C. This does not establish the current runtime-caption marker map or
   null-to-empty normalization. */

void __cdecl
ScriptCore.UIManager::UIManager_SetStringPropertyImpl(uint param_1,undefined4 param_2,int param_3)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  undefined4 uVar4;
  void *this;
  undefined4 unaff_retaddr;
  undefined4 auStack_50 [2];
  int iStack_48;
  undefined4 uStack_44;
  undefined1 auStack_40 [8];
  undefined1 auStack_38 [4];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [32];
  undefined4 uStack_c;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((param_1 & 0xff000000) == 0x30000000) && (param_3 != 0)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (param_1 == 0xeec1b00a) {
      if (piVar2 == (int *)0x0) {
        return;
      }
      piVar3 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
      if (piVar3 != (int *)0x0) {
        uVar4 = (**(code **)(*piVar1 + 0x58))(param_2);
        (**(code **)(*piVar3 + 0x78))(uVar4);
        return;
      }
    }
    if ((piVar2 != (int *)0x0) &&
       (piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeec58382), piVar2 != (int *)0x0)) {
      ppuStack_30 = &PTR_LAB_0100eea8;
      FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
      (**(code **)(*piVar2 + 0x10))(auStack_40);
      this = (void *)FUN_00511ca0(&uStack_44,auStack_50,param_1,&ppuStack_34);
      if (this != (void *)0x0) {
        uStack_c = (**(code **)(*piVar1 + 0x58))(unaff_retaddr);
        FUN_00511d40(this,(int)&stack0xffffffac,(undefined4 *)&stack0xffffffa0,auStack_38);
        (**(code **)(iStack_48 + 0x1c))(uStack_44);
      }
      ppuStack_34 = &PTR_LAB_0100eea8;
      FUN_004e8da0(&ppuStack_30);
    }
  }
  return;
}

