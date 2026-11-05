/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0108d130 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.PersistImports::Serializer_ReadPrimitiveArray [assembly=ScriptCore token=0x06000CAB;
   dst: System.Array, fastStreamHandle: System.UInt32, ptc: System.Byte; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1
ScriptCore_PersistImports__Serializer_ReadPrimitiveArray
          (int param_1,uint param_2,undefined1 param_3)

{
  uint byteCount;
  void *stream;
  undefined1 auStack_18 [20];
  undefined1 uStack_4;
  
  stream = (void *)StreamHost_ResolveTaggedStreamAndCache(param_2);
  if (stream == (void *)0x0) {
    return 0;
  }
  StreamReader_Construct(auStack_18,stream,1);
  byteCount = *(uint *)(param_1 + 8);
  switch(param_3) {
  case 2:
  case 3:
  case 0xb:
    StreamReader_ReadBytesInto(auStack_18,(void *)(param_1 + 0x10),byteCount);
    StreamReader_ReleaseAuxiliary(auStack_18);
    return uStack_4;
  default:
    StreamReader_ReleaseAuxiliary(auStack_18);
    return 0;
  case 7:
  case 10:
  case 0xf:
    FUN_0076b8b0(auStack_18,(uint *)(param_1 + 0x10),byteCount);
    StreamReader_ReleaseAuxiliary(auStack_18);
    return uStack_4;
  case 8:
  case 0xd:
    BlendGeometry_ReadUInt16Bank(auStack_18,(ushort *)(param_1 + 0x10),byteCount);
    StreamReader_ReleaseAuxiliary(auStack_18);
    return uStack_4;
  case 9:
  case 0xc:
  case 0xe:
    BlendGeometry_ReadUInt32Bank(auStack_18,(uint *)(param_1 + 0x10),byteCount);
    StreamReader_ReleaseAuxiliary(auStack_18);
    return uStack_4;
  }
}

