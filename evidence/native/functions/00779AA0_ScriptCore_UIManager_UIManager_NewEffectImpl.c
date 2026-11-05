/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163018 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_NewEffectImpl [assembly=ScriptCore token=0x06000E3E; effectType:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Additional bounded Effects comparison: the existing defined function body is one byte with zero
   selected Listing instructions; retained 368-byte raw window is not a complete function. Original
   managed kind forwarding is unchanged UInt32; incoming MOV EAX,[ESP+4], CMP EAX,6, unsigned JA has
   no SUB/LEA normalization before seven-way dispatch. Kind 7 reaches observed zero route; kind 6
   constructs 00516460. It obtains whole+0x10 interface, invokes +0 before global +0xC8 type-0x30
   registration. Constructor/vtable-adjustment/physical shared count increment establish this
   selected acquire path; registry retention and all native class identities remain bounded. */

undefined4 ScriptCore_UIManager__UIManager_NewEffectImpl(undefined4 param_1)

{
  uint *puVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 uVar4;
  
  switch(param_1) {
  case 0:
    puVar1 = FUN_005050b0(0x78,4,"Scripting/UIHost/FadeEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_00522a00(puVar1);
    break;
  case 1:
    puVar1 = FUN_005050b0(0x80,4,"Scripting/UIHost/GlideEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_00523b50(puVar1);
    break;
  case 2:
    puVar1 = FUN_005050b0(0xcc,4,"Scripting/UIHost/InflateEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_00532f30(puVar1);
    break;
  case 3:
    puVar1 = FUN_005050b0(0x7c,4,"Scripting/UIHost/ModulateEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_00534cd0(puVar1);
    break;
  case 4:
    puVar1 = FUN_005050b0(0xa0,0x10,"Scripting/UIHost/RotateEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_00535e30(puVar1);
    break;
  case 5:
    puVar1 = FUN_005050b0(0x88,4,"Scripting/UIHost/GrowEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = FUN_007e4660(puVar1);
    break;
  case 6:
    puVar1 = FUN_005050b0(0x28,4,"Scripting/UIHost/ControllerEffect",(int *)0x0);
    if (puVar1 == (uint *)0x0) {
      return 0;
    }
    puVar2 = (undefined4 *)UiEffectKind6_InitializeInterfaces(puVar1);
    break;
  default:
    goto switchD_00779aaf_default;
  }
  if ((puVar2 != (undefined4 *)0x0) && (puVar2 = puVar2 + 4, puVar2 != (undefined4 *)0x0)) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    (**(code **)*puVar2)();
    uVar4 = (**(code **)(*piVar3 + 200))(puVar2,0x30);
    return uVar4;
  }
switchD_00779aaf_default:
  return 0;
}

