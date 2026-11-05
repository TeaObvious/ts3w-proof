/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst description; PC 1.67. Read count * 4 bytes through the input stream virtual + 0x30 into
   the destination. A byte-count mismatch returns AL = 0. On exact read, the fourth stack DWORD is
   compared with 1: value 1 skips conversion; any other value byte-swaps each destination UInt32
   before returning AL = 1. On this x86 little-endian input, literal 1 therefore preserves
   little-endian words; the authenticated reader constructor/attach passes its stored order to this
   argument. Actual cdecl four stack arguments/caller cleanup, despite inferred three-parameter
   metadata. Upper EAX is not a Boolean value contract. This is the bounded word-reader rule, not an
   image codec or complete resource-provider error contract.
   
   PC1.67 physical UInt32-array ABI refresh: previous three-formal inference is now corrected to
   FOUR cdecl stackDWORDs: stream entryESP04,output08,UInt32unitCount0C,UInt32endianFlag10. Genuine
   name, first two pointer names/types/storage and original undefined4 return/storage retained.
   PlainRET leaves caller cleanup; selected C07BA2 caller ADD ESP10 confirms four physical words.
   LEAEBX count*4 at4DD9E4 requests exact raw32 byteCount; CMP EAX,EBX at4DD9EF establishes
   success;4DD9F3 compares the fourth input at currentESP1C against1. Endian1 preserves
   little-endian units; otherwise swap each DWORD. Only AL is Boolean success, XORAL at4DDA38
   failure leaves unrelated upper EAX bits. Local indirect call4DD9ED has ECX stream and two pushed
   words output/count*4; no callerADD and three saved-register POPs then plainRET prove target pop8.
   Only this callsite receives __thiscall UInt32 ByteStream_ReadBytes(opaque receiver,opaque
   output,UInt32byteCount) override to restore stack propagation; no global vtable/callee/other
   callsite type is changed. Verify final actual C endianFlag test against4DD9F3;
   instructions/body110bytes/47ins and all original bytes are unchanged. */

undefined4 __cdecl
Stream_ReadUInt32ArrayByByteOrder(int *param_1,uint *param_2,uint unitCount,uint endianFlag)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = (**(code **)(*param_1 + 0x30))(param_1,param_2,unitCount * 4);
  if (uVar2 != unitCount * 4) {
    return uVar2 & 0xffffff00;
  }
  if (endianFlag != 1) {
    for (; unitCount != 0; unitCount = unitCount - 1) {
      uVar1 = *param_2;
      uVar2 = uVar1 << 0x10;
      *param_2 = (uVar1 & 0xff0000 | uVar1 >> 0x10) >> 8 | (uVar1 & 0xff00 | uVar2) << 8;
      param_2 = param_2 + 1;
    }
  }
  return CONCAT31((int3)(uVar2 >> 8),1);
}

