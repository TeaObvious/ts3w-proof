/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX registry, two stack words/RET 8. Lookup window key,
   verify actual stored procedure pointer equals second word before erase7F20B0. On match clear
   procedure +3C registry and+38Host and release procedure virtual 4. A reentrant callback
   replacement under the same key must not be retired by key-only guessing. No erase for absent key
   or changed identity. */

void __thiscall
UiScriptEventRegistry_RetireProcedure(void *this,void *windowInterface,void *procedure)

{
  void *pvVar1;
  void *local_8;
  void *local_4;
  
  UInt32PairMap_Find((void *)((int)this + 4),&local_8,(uint *)&windowInterface);
  pvVar1 = procedure;
  if ((local_8 != *(void **)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) &&
     (*(void **)((int)local_8 + 4) == procedure)) {
    UInt32PairMap_EraseIterator((void *)((int)this + 4),&local_8,local_8,local_4);
    *(undefined4 *)((int)pvVar1 + 0x3c) = 0;
    *(undefined4 *)((int)pvVar1 + 0x38) = 0;
    (**(code **)(*(int *)pvVar1 + 4))();
  }
  return;
}

