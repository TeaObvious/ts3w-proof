/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physical ECX provider plus five DWORD stack arguments: codec, payload offset, stored size,
   memory size, output address; both exits RET14; only AL result established. Caller4A97E0 pushes
   all five at4A99DA and4A9AD1. First guard tests second word payloadOffset!=0. Allocates storedSize
   scratch, raw-reads4A8100, dispatches4A7730, always frees allocated scratch, returns dispatcher
   AL. Opaque uint32 types retain unproven foreign type details; allocation failure returns false.
   Physical indirect allocator callsites:4A86C3 uses ECX receiver and three opaque DWORDs (stored
   size, label address,0), return EAX scratch address; caller has no stack adjustment and later
   stack loads require callee pop12.4A8702 uses ECX receiver and two DWORDs (scratch address,0),
   callee pop8, return ignored. Callsite-specific types correct local stack propagation only; global
   allocator/vtable types stay unchanged. Earlier unaff register expressions were decompiler
   artifacts, not external inputs. Physical ASM remains authoritative. */

bool __thiscall
PackedFile_ReadAndDecodePayload
          (void *this,uint codecWord,uint payloadOffset,uint storedSize,uint memorySize,
          uint outputAddress)

{
  bool bVar1;
  void *word1;
  uint uVar2;
  undefined1 uVar3;
  
  uVar3 = false;
  if (payloadOffset != 0) {
    word1 = (void *)(**(code **)(**(int **)((int)this + 0x10) + 8))
                              (*(int **)((int)this + 0x10),storedSize,0xfb35e4,0);
    if (word1 != (void *)0x0) {
      bVar1 = PackedFile_ReadRawPayload(this,word1,payloadOffset,storedSize);
      uVar3 = 0;
      if (bVar1) {
        uVar2 = PackedFile_DecodeResourceBuffer
                          (this,codecWord,word1,storedSize,memorySize,outputAddress);
        uVar3 = (undefined1)uVar2;
      }
      (**(code **)(**(int **)((int)this + 0x10) + 0xc))(*(int **)((int)this + 0x10),(uint)word1,0);
    }
    return (bool)uVar3;
  }
  return (bool)uVar3;
}

