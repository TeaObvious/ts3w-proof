/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Sim component reference writer, selected by original vtable01045088 slot+C. ECX
   component; stack4 writer, stack8 resource context, RET8, sticky status in AL. Registers stored
   keys at component+10 and+20 via context+10 service and emits each low UInt16 handle, accumulating
   primitive status. Then obtains an opaque service and conditionally invokes5EE440 for the
   corresponding key when DWORD+18 or+28 is nonzero. These children and full cache/provider/lifetime
   semantics are not inferred. This entry is a writer, not the Sim constructor. Original
   bytes/targets and child annotations remain unchanged. */

byte __thiscall SimComponent_WriteOutfitReferences(void *this,void *writer,void *keyContext)

{
  byte bVar1;
  uint uVar2;
  void *this_00;
  
  uVar2 = ResourceReferences_RegisterKey
                    (*(void **)((int)keyContext + 0x10),(uint *)((int)this + 0x10),0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar2,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar1);
  uVar2 = ResourceReferences_RegisterKey
                    (*(void **)((int)keyContext + 0x10),(uint *)((int)this + 0x20),0);
  bVar1 = Stream_WriteUInt16(*(void **)((int)writer + 8),(ushort)uVar2,*(uint *)((int)writer + 0x10)
                            );
  StreamReader_AccumulateStatus(writer,bVar1);
  this_00 = (void *)FUN_005ebac0();
  if (*(int *)((int)this + 0x18) != 0) {
    FUN_005ee440(this_00,(uint *)((int)this + 0x10));
  }
  if (*(int *)((int)this + 0x28) != 0) {
    FUN_005ee440(this_00,(uint *)((int)this + 0x20));
  }
  return *(byte *)((int)writer + 0x14);
}

