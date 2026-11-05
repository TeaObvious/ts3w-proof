/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162fb0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetStringPropertyImpl [assembly=ScriptCore token=0x06000E31;
   winHandle: System.UInt32, propID: System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   BOUNDARY LIMIT: stored function body remains one byte at 0077FB50 and actual function Listing
   contains ZERO instructions. The separately authenticated 448-byte original PE linear window is
   bounded evidence, not a complete function/body claim; no body or analysis repair was made. Within
   that window, descriptor/value success passes selected native string/variant helpers 0040B880,
   004F6630 and 004F64B0, then global UI interface virtual+0x50 writes a local returned through
   ESI/EAX. Selected failures return EAX zero; a constant-looking decompiler return is not the
   physical output rule. Concrete conversion/allocation/runtime marshaling remains unproved. The
   original ScriptCore custom StringFromVariantMarshaler managed conversion is a null-return stub,
   not evidence of the runtime implementation. The inspected instructions require handle high byte
   0x30, resolve the handle through global UI interface virtual+0xCC, and request property interface
   0xEEC58382. Descriptor lookup/read/write calls and virtual child effects remain separate
   boundaries; current CLR stores are not an inferred native representation. */

undefined4 ScriptCore_UIManager__UIManager_GetStringPropertyImpl(uint param_1)

{
  char cVar1;
  int *piVar2;
  int *piVar3;
  void *pvVar4;
  undefined1 auStack_90 [4];
  undefined **ppuStack_8c;
  undefined **ppuStack_88;
  undefined1 auStack_84 [32];
  void *apvStack_64 [2];
  int iStack_5c;
  undefined4 uStack_54;
  undefined4 *puStack_50;
  undefined4 auStack_48 [3];
  undefined **appuStack_3c [2];
  byte bStack_34;
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [20];
  int iStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar3 = (int *)(**(code **)(*piVar2 + 0xcc))(param_1), piVar3 != (int *)0x0)) &&
     (piVar3 = (int *)(**(code **)(*piVar3 + 0xc))(), piVar3 != (int *)0x0)) {
    ppuStack_88 = &PTR_LAB_0100eea8;
    FUN_004e8cb0(auStack_84,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    (**(code **)(*piVar3 + 0x10))(auStack_18);
    pvVar4 = (void *)FUN_00511ca0(auStack_1c,auStack_48,iStack_4,&ppuStack_8c);
    if ((pvVar4 != (void *)0x0) &&
       (cVar1 = FUN_00511aa0(pvVar4,&uStack_54,(int)auStack_48,&ppuStack_8c), cVar1 != '\0')) {
      pvVar4 = FUN_0040b880(apvStack_64,(short *)*puStack_50,(undefined4 *)&stack0xffffff50);
      pvVar4 = FUN_004f6630(appuStack_3c,pvVar4);
      FUN_004f64b0(&stack0xffffff54,(int)pvVar4);
      appuStack_3c[0] = &PTR_FUN_00fba6f4;
      if ((bStack_34 & 4) != 0) {
        FUN_004f5760(appuStack_3c,'\0');
      }
      if ((2 < (int)(iStack_5c - (int)apvStack_64[0] & 0xfffffffeU)) &&
         (apvStack_64[0] != (void *)0x0)) {
        Memory_FreeIfNonNull(apvStack_64[0]);
      }
      (**(code **)(*piVar2 + 0x50))(&stack0xffffff54,&stack0xffffff4c);
      FUN_004f5760(&stack0xffffff4c,'\0');
      FUN_004e8da0(auStack_90);
      return 0xeec58382;
    }
    ppuStack_8c = &PTR_LAB_0100eea8;
    FUN_004e8da0(&ppuStack_88);
  }
  return 0;
}

