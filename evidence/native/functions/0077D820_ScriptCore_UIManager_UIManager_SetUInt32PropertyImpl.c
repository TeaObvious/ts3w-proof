/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162f68 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_SetUInt32PropertyImpl [assembly=ScriptCore token=0x06000E28;
   winHandle: System.UInt32, propID: System.UInt32, value: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static typed-property comparison (PC 1.67 original instructions; no runtime execution):
   Complete stored body: 500 bytes, 181 actual Listing instructions. The physical property argument
   is loaded into EBX. Property 0xEEC1B000 requests interface 0xEEEE8218, reads previous flags
   through virtual+0x28, XORs old/new, isolates each changed bit and calls virtual+0x74 after SETNZ
   CL defines the requested-state low byte in a pushed ECX word; the upper ECX bits are not
   normalized, and concrete child argument interpretation remains unresolved. Shade 0xEEC1B004 and
   Cursor 0xEEC1B009 use virtual+0x60/+0x70. ButtonState 0xEEC1D001 uses selected 0077A070 control
   lookup and virtual+0x24. Remaining/fallback properties use interface 0xEEC58382 and generic
   descriptor write/callback. These dispatch sites do not establish complete concrete virtual side
   effects or current scrollbar/radio policy.
   
   Analyst note, original PC1.67 static. Actual genuine SetUInt32Property has three caller-clean
   stack DWORDs handle/property/value; old two-argument metadata omitted one physical input. EBX is
   actual property ID, value is original ESP+0C (ESP+68 after local/saved-register frame). Original
   special Flags/Shade/Cursor/ButtonState paths retain distinct virtual consumers. Generic
   descriptor write uses actual typed context,value address,count1 then notification callback. Keep
   prior annotations including SETNZ CL upper-bit uncertainty; do not infer canonical full-word
   booleans in virtual child calls or rewrite unrelated function prototypes. */

void __cdecl
ScriptCore.UIManager::UIManager_SetUInt32PropertyImpl(uint windowHandle,uint propertyId,uint value)

{
  int *piVar1;
  int *piVar2;
  uint uVar3;
  uint uVar4;
  void *this;
  undefined1 auStack_50 [12];
  int iStack_44;
  undefined4 auStack_40 [3];
  undefined **ppuStack_34;
  undefined **ppuStack_30;
  undefined1 auStack_2c [44];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((windowHandle & 0xff000000) != 0x30000000) {
    return;
  }
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(windowHandle);
  if (windowHandle == 0xeec1b000) {
    if (piVar1 == (int *)0x0) {
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
    if (piVar2 != (int *)0x0) {
      uVar3 = (**(code **)(*piVar2 + 0x28))();
      uVar3 = uVar3 ^ propertyId;
      if (uVar3 == 0) {
        return;
      }
      do {
        uVar4 = -uVar3 & uVar3;
        uVar3 = uVar3 - uVar4;
        (**(code **)(*piVar2 + 0x74))(uVar4,(propertyId & uVar4) != 0);
      } while (uVar3 != 0);
      return;
    }
  }
  else if (windowHandle == 0xeec1b004) {
    if (piVar1 == (int *)0x0) {
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x60))(propertyId);
      return;
    }
  }
  else if (windowHandle == 0xeec1b009) {
    if (piVar1 == (int *)0x0) {
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x70))(propertyId);
      return;
    }
  }
  else if ((windowHandle == 0xeec1d001) &&
          (piVar2 = (int *)FUN_0077a070(piVar1), piVar2 != (int *)0x0)) {
    (**(code **)(*piVar2 + 0x24))(propertyId);
    return;
  }
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeec58382), piVar1 != (int *)0x0)) {
    ppuStack_30 = &PTR_LAB_0100eea8;
    FUN_004e8cb0(auStack_2c,0,0xffffffff,(undefined1 *)0x0,(undefined *)0x0,0);
    (**(code **)(*piVar1 + 0x10))(auStack_40);
    this = NativePropertyContext_FindDescriptor(&iStack_44,auStack_50,windowHandle,&ppuStack_34);
    if (this != (void *)0x0) {
      NativePropertyDescriptor_Write(this,auStack_50,&stack0xffffffa4,&ppuStack_34);
      (**(code **)(iStack_44 + 0x1c))(auStack_40[0]);
    }
    ppuStack_34 = &PTR_LAB_0100eea8;
    FUN_004e8da0(&ppuStack_30);
  }
  return;
}

