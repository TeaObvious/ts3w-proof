/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162928 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_Create [assembly=ScriptCore token=0x06001037; ;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 metadata limit: the existing Ghidra body is one byte at00775870, not the
   canonical128-byte bounded window or a complete creation body. No
   body/instruction/prototype/storage repair. Bounded original instructions allocate0x2C with
   Scripting/MemoryStream label, call004DF460 and004DEE40, pass the stream and literal0x60 to
   script-interface virtual+0xC8, and make virtual+0x4/+0x8 lifetime calls. Visible normal failures
   return zero; concrete allocator/configuration/registration/reference-count and exception
   semantics remain separate. Stored inferred stdcall/int projection is preserved; bounded visible
   exits use plain RET. */

int ScriptCore_StreamHost__StreamHost_Create(void)

{
  void *this;
  int *this_00;
  int *piVar1;
  int iVar2;
  
  this = (void *)FUN_004e4500(0x2c,"Scripting/MemoryStream",0);
  if (this != (void *)0x0) {
    this_00 = FUN_004df460(this,0,0,0);
    if (this_00 != (int *)0x0) {
      (**(code **)(*this_00 + 4))();
      FUN_004dee40(this_00,1,1.0);
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      iVar2 = (**(code **)(*piVar1 + 200))(this_00,0x60);
      if (iVar2 != 0) {
        (**(code **)(*this_00 + 4))();
      }
      (**(code **)(*this_00 + 8))();
      return iVar2;
    }
  }
  return 0;
}

