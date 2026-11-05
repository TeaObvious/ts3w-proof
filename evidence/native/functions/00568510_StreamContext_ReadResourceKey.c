/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX stream context,one output-key pointer RET4.
   Push stream endian+10, output and raw stream+8 to007D7760, then accumulate Boolean into
   context+14 via007D79F0. Native internal ResourceKey layout differs from stream order; no managed
   object layout inferred.
   
   PC1.67 original static instructions. ECX streamcontext plus1outputpointer stackDWORD/RET4.
   Calls7D7760 with contextstream/endian and accumulates result in context status. Keys use original
   type/group/instance wire order, native reordered storage. */

void __thiscall StreamContext_ReadResourceKey(void *this,uint *param_1)

{
  bool readSucceeded;
  
  readSucceeded =
       Stream_ReadResourceKeyTGI(*(void **)((int)this + 8),param_1,*(uint *)((int)this + 0x10));
  StreamReader_AccumulateStatus(this,readSucceeded);
  return;
}

