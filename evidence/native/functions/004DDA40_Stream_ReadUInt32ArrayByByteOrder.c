/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 Room old-array join: exact-address read confirmed an existing function
   body4DDA40..4DDA44,5bytes/1instruction, genuine thunk=true with target4DD9D0. Preserve inherited
   Stream_ReadUInt32ArrayByByteOrder name/namespace. Selected C07BA2 caller physically supplies
   stream,output,UInt32unitCount,endian and cleans10hex. The thunk inherits the target's corrected
   four-word cdecl signature; it is a distinct5byte address, not110byte target duplication. No
   function definition, bounds, byte or foreign-helper change.
   
   Actual Ghidra thunk-C rendering limit, verified after the target-local ABI correction:
   decompiling this5byte JMP thunk expands the target body but does not inherit that target
   function's callsite-local indirect-read pop8 override. It still displays an output-pointer
   comparison with1 where physical target instructions test fourth stackDWORD endianFlag. This is a
   decompiler-context artifact, not the executed thunk or byte-order rule. The unchanged five
   original bytes only JMP to 004dd9d0. Its complete current annotated target C correctly tests
   endianFlag!=1 after the separately proven local override at 4DD9ED; target Listing/caller-clean
   four-word ABI govern. Preserve this actual unedited tool C with this note. No thunk-local
   override outside its5byte body, foreign callee/vtable type, original byte, function definition or
   prototype is changed. */

undefined4 __cdecl
Stream_ReadUInt32ArrayByByteOrder(int *param_1,uint *param_2,uint unitCount,uint endianFlag)

{
  uint uVar1;
  uint uVar2;
  
  uVar2 = (**(code **)(*param_1 + 0x30))(param_2,unitCount * 4);
  if (uVar2 != unitCount * 4) {
    return uVar2 & 0xffffff00;
  }
  if (param_2 != (uint *)0x1) {
    for (; unitCount != 0; unitCount = unitCount - 1) {
      uVar1 = *param_2;
      uVar2 = uVar1 << 0x10;
      *param_2 = (uVar1 & 0xff0000 | uVar1 >> 0x10) >> 8 | (uVar1 & 0xff00 | uVar2) << 8;
      param_2 = param_2 + 1;
    }
  }
  return CONCAT31((int3)(uVar2 >> 8),1);
}

