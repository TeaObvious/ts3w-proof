/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 object IO context instruction contract. ECX context array owner, TWO physical
   stack words opaque ownerArgument and writer; RET8, result low AL raw writer status+14 or0 on
   context callback refusal. Entry saves ECX at entryESP-4, reads writer from entryESP+8 (935E84
   after four pushes), and forwards ownerArgument from entryESP+4 (935F46 after five pushes) to
   context virtual+1C(ownerArgument,writer). C6F340 callsite C6F8DB pushes writerESI then ownerEDI
   and sets ECX context ownerEBX. Writes U16 literal0101 and LOW16 owner+4 count, but loop compares
   full DWORD count; each registered ID gets U32 placeholder size and virtual+1C payload, then
   backpatch position with currentPosition-placeholderPosition-4. After a failed position sentinel
   -1 it marks status0 and continues loop; callback AL0 marks status0 and returns. Disjoint body
   excludes alignment935EDD..EDF. Existing unaff_EBX/unaff_retaddr or lost backpatch operands in
   actual C are decompiler register/stack/callee-model artifacts: raw saved context base is
   entryESP-4, ownerArgument is entryESP+4, writer is entryESP+8. No shared helper signature
   changed, no guessed pointee classes, no atomic save/rollback or complete child/stream failure
   contract established. */

byte __thiscall ObjectIoContexts_WriteSizedEntries(void *this,void *ownerArgument,void *writer)

{
  byte bVar1;
  char cVar2;
  void *this_00;
  uint uVar3;
  int iVar4;
  int unaff_EBX;
  uint uVar5;
  undefined4 unaff_retaddr;
  
                    /* After PUSH ECX/EBX/EBP/ESI, [ESP+18] is entryESP+8: second stack argument
                       writer, held in ESI. */
                    /* Save original ECX context-array owner at entryESP-4. EBX later holds
                       size-placeholder stream position; it is not the context base after935F21. */
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),0x101,*(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
                    /* Serialize owner count LOW UInt16; later loop bound is full DWORD owner+4. */
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),*(ushort *)((int)this + 4),
                             *(uint *)((int)writer + 0x10));
  StreamReader_AccumulateStatus(writer,bVar1);
  this_00 = ObjectRegistry_GetGlobal();
  uVar5 = 0;
  if (*(int *)((int)this + 4) != 0) {
    do {
      FUN_009374a0(this_00,uVar5);
      uVar3 = FUN_009374c0(this_00,1 << ((byte)uVar5 & 0x1f));
      bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),uVar3,*(uint *)((int)writer + 0x10));
      StreamReader_AccumulateStatus(writer,bVar1);
      uVar3 = (**(code **)(**(int **)((int)writer + 8) + 0x24))(0);
      bVar1 = Stream_WriteUInt32(*(void **)((int)writer + 8),0,*(uint *)((int)writer + 0x10));
      StreamReader_AccumulateStatus(writer,bVar1);
                    /* Recover saved original context-array owner from [ESP+10] = entryESP-4, then
                       select pointer array+8[index]. Any lost/unaff base in C is not a native
                       external input. */
                    /* [ESP+18] = entryESP+4: first opaque ownerArgument; push writer then
                       ownerArgument for virtual+1C. */
      cVar2 = (**(code **)(**(int **)(*(int *)(unaff_EBX + 8) + uVar5 * 4) + 0x1c))
                        (unaff_retaddr,writer);
      if (cVar2 == '\0') {
        StreamReader_AccumulateStatus(writer,0);
        *(undefined1 *)((int)writer + 0x14) = 0;
        return 0;
      }
      iVar4 = (**(code **)(**(int **)((int)writer + 8) + 0x24))();
      if (iVar4 == -1) {
        *(undefined1 *)((int)writer + 0x14) = 0;
      }
      else {
                    /* Physical backpatch call: ECX writer plus TWO stack DWORDs: placeholder
                       position, computed payload byte count. Missing operands in C reflect
                       unexpanded shared helper model, not missing pushes. */
        Stream_BackpatchUInt32(writer,uVar3,(iVar4 - uVar3) - 4);
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 < *(uint *)((int)this + 4));
  }
  return *(byte *)((int)writer + 0x14);
}

