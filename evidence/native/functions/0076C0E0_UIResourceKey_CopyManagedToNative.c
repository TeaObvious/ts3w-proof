/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned role for prior generic FUN_0076c0e0, original PC1.67. Complete
   actual29-byte/10instruction body76C0E0..76C0FC. Physical thiscall: ECX points to managed
   ResourceKey input, one stackDWORD output-key pointer, RET4. MOV EAX,[ESP+4] retains that same
   output pointer through every following instruction and return; actual frontend783090 uses EAX
   immediately to copy four outputDWORDs into779200 descriptor arguments, so former void return
   inference is disproved by the producer AND consumer. Pristine SimIFace sequential ResourceKey
   fields are TypeId,GroupId,InstanceId. Input offsets0/4/8/C are
   TypeId,GroupId,InstanceLow,InstanceHigh; stores reorder native output0/4/8/C to
   InstanceLow,InstanceHigh,TypeId,GroupId. Raw DWORD copy only; no numeric conversion, checks,
   allocations, owned resource or shared state. Actual caller7830C1 supplies input address
   EBP+8;7830C0 supplies independent stack-local16-byte output;779200 stores converted words
   atdescriptor78/7C/80/84. D4C440 then D4BBA0 consume native key lanes, including type+8/group+C.
   No null/bounds/overlap guard; caller valid separate buffers are a precondition, and this
   instruction order does not promise alias-safe copying. Return pointer type and argument storage
   are physical facts; no guessed global struct or foreign-helper metadata changed. Registered
   frontend name/managed13formal ABI remains its separate owner. */

undefined4 * __thiscall UIResourceKey_CopyManagedToNative(void *this,undefined4 *outputKey)

{
  undefined4 uVar1;
  
  *outputKey = *(undefined4 *)((int)this + 8);
  outputKey[1] = *(undefined4 *)((int)this + 0xc);
  uVar1 = *(undefined4 *)((int)this + 4);
  outputKey[2] = *(undefined4 *)this;
  outputKey[3] = uVar1;
  return outputKey;
}

