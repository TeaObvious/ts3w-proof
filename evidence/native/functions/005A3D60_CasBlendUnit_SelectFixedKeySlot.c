/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 fixed-key selector. ECX supplies the receiver and one unsigned stack DWORD
   supplies the requested index; both return paths pop4bytes. Unsigned index0 or1 returns
   receiver+28h+index*10h; every index>=2 returns receiver+28h, so no count-based bounds rejection
   occurs here. EAX is the address of the selected16-byte slot; this helper does not copy or
   initialize the key. The observed caller at5A6CB4 passes the lookup result as receiver, then reads
   four DWORDs from the returned address for the original blend-unit key export. Initialization of
   slots absent from a decoded resource and native manager lifetime policy are not established by
   this body. */

int __thiscall CasBlendUnit_SelectFixedKeySlot(void *this,uint param_1)

{
  if (1 < param_1) {
    return (int)this + 0x28;
  }
  return param_1 * 0x10 + 0x28 + (int)this;
}

