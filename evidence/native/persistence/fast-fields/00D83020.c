/* Final Ghidra decompilation after semantic annotation readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records exact ownership; generated C is not a callable replacement.
   This generated projection follows success continuation D83038 beyond its own 24-byte body.
   The saved decompiler transport omits EOL comments; the instruction notes below
   are copied consistently from the saved Ghidra comment readback. */

/* Verified PC 1.67 registration table at 0x0108d120 (TS3W.exe; centralized identity in references/pc-167.md).
   ScriptCore.PersistImports::Serializer_ReadFastFields [assembly=ScriptCore token=0x06000CAE; obj:
   System.Object, fastFields: ScriptCore.PersistFastField[], fastStreamHandle: System.UInt32;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.

   PC1.67 registered entry 0108D120, ScriptCore MethodDef06000CAE. Three cdecl stack inputs are
   managed object, PersistFastField array, tagged stream handle. Owned body is only D83020..D83037;
   JNE D83032 enters separately defined D83038 with EAX=resolved stream and this entry's allocated
   0x2C-byte frame. No body merge is implied. Failed resolver returns EAX=0. Success continuation
   returns zero-extended reader status byte via MOVZX EAX,BL at D831E4, so native result is never
   negative; original managed LoadObject checks only result<0 (IL0296). Decompiler undefined1 return
   is not the managed Int32 signature. See fast-field-reading guide; all observations static. */

undefined1 __cdecl
ScriptCore_PersistImports__Serializer_ReadFastFields(int param_1,int param_2,uint param_3)

{
  int iVar1;
  bool bVar2;
  void *stream;
  int iVar3;
  undefined4 *puVar4;
  byte bStack_29;
  ushort auStack_28 [2];
  uint uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined1 auStack_18 [8];
  void *pvStack_10;
  uint uStack_8;
  undefined1 uStack_4;

  stream = (void *)StreamHost_ResolveTaggedStreamAndCache(param_3);
  if (stream == (void *)0x0) {
    return 0;
  }
  /* D83032: nonnull EAX branches to separately owned D83038 with the 0x2C frame. */
  StreamReader_Construct(auStack_18,stream,1);
  iVar3 = *(int *)(param_2 + 8);
  if (param_1 == 0) {
    if (0 < iVar3) {
      puVar4 = (undefined4 *)(param_2 + 0x10);
      do {
        if ((int)puVar4[1] < 0) goto switchD_00d83167_caseD_4;
        switch(*puVar4) {
        case 2:
        case 3:
        case 0xb:
          bVar2 = Stream_ReadByte(pvStack_10,&bStack_29);
          break;
        default:
          goto switchD_00d83167_caseD_4;
        case 7:
        case 10:
        case 0xf:
          bVar2 = Stream_ReadUInt64(pvStack_10,(ulonglong *)&uStack_20,uStack_8);
          break;
        case 8:
        case 0xd:
          ReadUInt16AndAccumulateStatus(auStack_18,auStack_28);
          goto switchD_00d83167_caseD_4;
        case 9:
        case 0xc:
        case 0xe:
          bVar2 = Stream_ReadUInt32(pvStack_10,&uStack_24,uStack_8);
        }
        StreamReader_AccumulateStatus(auStack_18,bVar2);
switchD_00d83167_caseD_4:
        puVar4 = puVar4 + 2;
        iVar3 = iVar3 + -1;
      } while (iVar3 != 0);
    }
  }
  else if (0 < iVar3) {
    puVar4 = (undefined4 *)(param_2 + 0x10);
    do {
      iVar1 = puVar4[1];
      if (-1 < iVar1) {
        switch(*puVar4) {
        case 2:
        case 3:
        case 0xb:
          bVar2 = Stream_ReadByte(pvStack_10,&bStack_29);
          StreamReader_AccumulateStatus(auStack_18,bVar2);
          /* D830B7: store is not guarded by the read status; partial/uninitialized output is possible. */
          *(byte *)(iVar1 + param_1) = bStack_29;
          break;
        case 7:
        case 10:
        case 0xf:
          bVar2 = Stream_ReadUInt64(pvStack_10,(ulonglong *)&uStack_20,uStack_8);
          StreamReader_AccumulateStatus(auStack_18,bVar2);
          *(undefined4 *)(iVar1 + param_1) = uStack_20;
          *(undefined4 *)(iVar1 + 4 + param_1) = uStack_1c;
          break;
        case 8:
        case 0xd:
          ReadUInt16AndAccumulateStatus(auStack_18,auStack_28);
          *(ushort *)(iVar1 + param_1) = auStack_28[0];
          break;
        case 9:
        case 0xc:
        case 0xe:
          bVar2 = Stream_ReadUInt32(pvStack_10,&uStack_24,uStack_8);
          StreamReader_AccumulateStatus(auStack_18,bVar2);
          *(uint *)(iVar1 + param_1) = uStack_24;
        }
      }
      puVar4 = puVar4 + 2;
      iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
  }
  StreamReader_ReleaseAuxiliary(auStack_18);
  /* D831E4 in continuation: actual EAX = zero-extended saved status byte, never negative. */
  return uStack_4;
}
