/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical thiscall ECX catalog
   plus3stack words(bank,full16-byte key pointer,low-byte allowDefault), all3exitsRET0C; EAX
   borrowed product pointer/null. Bank arithmetic selects array header at
   receiver+30hex+20decimal*bank and end at+34hex+20*bank. No bank range/null/key guard appears.
   Calls C8DB20 with8-byte out range. Equal returned endpoints select header end; exact row returns
   pointer atrow+10hex. Missing with low-byte flag0 returnsnull; nonzero returns per-bank default
   pointer atreceiver+94hex+4*bank, which may itself be null. Native actual structure is sorted
   contiguous24-byte rows, not an inferred tree/hash. Full-key comparison is unsigned word
   order0,1,3,2 through C8C950/C8DB20; no group-ignoring or package-filename/name-score fallback.
   Existing original bridge CE61D0 calls bank4 with fallback1 in productType19hex case and
   retains/wraps nonnull result separately. Lookup itself does not AddRef or load a package; source
   population/default producer and display order are separate contracts. */

void * __thiscall
PatternCatalog_LookupBankProduct(void *this,int bank,void *productKey,uchar allowDefault)

{
  int local_8;
  int local_4;
  
  ProductCatalogKeyArray_FindExact((void *)((int)this + bank * 0x14 + 0x30),&local_8,productKey);
  if (local_8 == local_4) {
    local_8 = *(int *)((int)this + bank * 0x14 + 0x34);
  }
  if (local_8 == *(int *)((int)this + bank * 0x14 + 0x34)) {
    if (allowDefault == '\0') {
      return (void *)0x0;
    }
    return *(void **)((int)this + bank * 4 + 0x94);
  }
  return *(void **)(local_8 + 0x10);
}

