/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f80 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetFloatPropertyImpl [assembly=ScriptCore token=0x06000E2B;
   winHandle: System.UInt32, propID: System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   Complete stored body: 233 bytes, 74 actual Listing instructions. Successful descriptor/value read
   loads the Single payload, spills it as binary32, then returns through x87 ST0. Selected failure
   exits use FLDZ. No local finite-value filter is present; The retained inferred float10/ST0
   projection and narrower explicit parameter list do not recover original source types; physical
   x87 return follows the instructions. The inspected instructions require handle high byte 0x30,
   resolve the handle through global UI interface virtual+0xCC, and request property interface
   0xEEC58382. Descriptor lookup/read/write calls and virtual child effects remain separate
   boundaries; current CLR stores are not an inferred native representation. */

float10 __cdecl ScriptCore.UIManager::UIManager_GetFloatPropertyImpl(uint param_1)

{
  char cVar1;
  int *piVar2;
  void *this;
  undefined4 uStack_5c;
  uint uStack_58;
  undefined4 uStack_50;
  float *pfStack_4c;
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [12];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [36];
  float fStack_8;
  int iStack_4;
  
  uStack_58 = 0x77b869;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x30000000) {
    uStack_58 = param_1;
    uStack_5c = 0x77b88e;
    piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))();
    if (piVar2 != (int *)0x0) {
      uStack_5c = 0xeec58382;
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))();
      if (piVar2 != (int *)0x0) {
        ppuStack_30 = &PTR_LAB_0100eea8;
        FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
        (**(code **)(*piVar2 + 0x10))(auStack_40);
        this = (void *)FUN_00511ca0(auStack_44,&uStack_5c,iStack_4,&ppuStack_34);
        if (this != (void *)0x0) {
          cVar1 = FUN_00511aa0(this,&uStack_50,(int)&uStack_5c,&ppuStack_34);
          if (cVar1 != '\0') {
            fStack_8 = *pfStack_4c;
            ppuStack_34 = &PTR_LAB_0100eea8;
            FUN_004e8da0(&ppuStack_30);
            return (float10)fStack_8;
          }
        }
        ppuStack_34 = &PTR_LAB_0100eea8;
        FUN_004e8da0(&ppuStack_30);
      }
    }
  }
  return (float10)0;
}

