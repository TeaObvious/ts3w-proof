/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 custom-light-rig key contract. thiscall ECX component, one stack DWORD key bit
   pattern, RET4. CMP component+10,key; equality returns without store/event. Otherwise store+10
   before ObjectEvents_Dispatch009356C0(event1F, component+4 object, address of live stack key);
   dispatcher stack cleaned by caller. No geometry upload/buffer copy here. Original bridge0078CF80
   resolves object/component mask011EA2A8; null string supplies key0, nonnull string interface+58
   then007D0020 only invokes this helper after nonzero resolution. Other caller005A9BE6 remains a
   separate producer. No native downstream event1F-consumer completion asserted. Existing prototype
   retained. */

void __thiscall ObjectLightRig_StoreCustomKeyAndNotify(void *this,int param_1)

{
  if (*(int *)((int)this + 0x10) != param_1) {
    *(int *)((int)this + 0x10) = param_1;
    ObjectEvents_Dispatch(0x1f,*(void **)((int)this + 4),&param_1);
  }
  return;
}

