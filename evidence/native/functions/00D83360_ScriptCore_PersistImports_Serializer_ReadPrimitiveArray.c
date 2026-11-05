/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0108d130 (original PC 1.67 TS3W.exe).
   ScriptCore.PersistImports::Serializer_ReadPrimitiveArray [assembly=ScriptCore token=0x06000CAB;
   dst: System.Array, fastStreamHandle: System.UInt32, ptc: System.Byte; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1
ScriptCore_PersistImports__Serializer_ReadPrimitiveArray
          (int param_1,uint param_2,undefined1 param_3)

{
  int iVar1;
  int *piVar2;
  undefined1 auStack_18 [20];
  undefined1 uStack_4;
  
  piVar2 = (int *)FUN_00774e80(param_2);
  if (piVar2 == (int *)0x0) {
    return 0;
  }
  FUN_007d93e0(auStack_18,piVar2,1);
  iVar1 = *(int *)(param_1 + 8);
  switch(param_3) {
  case 2:
  case 3:
  case 0xb:
    FUN_005bd2c0(auStack_18,param_1 + 0x10,iVar1);
    FUN_007d7990((int)auStack_18);
    return uStack_4;
  default:
    FUN_007d7990((int)auStack_18);
    return 0;
  case 7:
  case 10:
  case 0xf:
    FUN_0076b8b0(auStack_18,(uint *)(param_1 + 0x10),iVar1);
    FUN_007d7990((int)auStack_18);
    return uStack_4;
  case 8:
  case 0xd:
    FUN_005a2fb0(auStack_18,(ushort *)(param_1 + 0x10),iVar1);
    FUN_007d7990((int)auStack_18);
    return uStack_4;
  case 9:
  case 0xc:
  case 0xe:
    FUN_005a3010(auStack_18,(uint *)(param_1 + 0x10),iVar1);
    FUN_007d7990((int)auStack_18);
    return uStack_4;
  }
}

