/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Instruction-verified cdecl four stack words
   host,stream,byteCount,scriptOutput; caller00995C42..46 pushes all four and adds10hex after call.
   Allocate byteCount bytes, vtable stream+30 read exact count else free andAL0. Host+80 creates
   output using fourth word; host+98 copies raw bytes, then free andAL1. Previous
   three-argument/unaff_EBX decompilation was wrong ABI; corrected prototype exposes real
   host/output inputs. Caller subtracts script offset from stream length. */

byte __cdecl
Inventory_CopyScriptTail(undefined *host,undefined *stream,uint byteCount,undefined *scriptOutput)

{
  int *arg1;
  uint uVar1;
  
  arg1 = FUN_004e6f20(DAT_011cc864,byteCount,0);
  uVar1 = (**(code **)(*(int *)stream + 0x30))(stream,(undefined *)arg1,byteCount);
  if (uVar1 != byteCount) {
    FUN_004e5e70(DAT_011cc864,(int)arg1);
    return 0;
  }
  (**(code **)(*(int *)host + 0x80))(host,scriptOutput,byteCount);
  (**(code **)(*(int *)host + 0x98))(host,scriptOutput,(undefined *)arg1,0,byteCount);
  FUN_004e5e70(DAT_011cc864,(int)arg1);
  return 1;
}

