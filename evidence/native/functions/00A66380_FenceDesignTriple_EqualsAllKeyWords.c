/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 COMPLETE111-byte body, incomingECX left48-byte triple, one stackpointer
   right48-byte triple at entryESP+4, both exits RET4. FULL32-bit EAX result is1 after all
   comparisons or0 at first mismatch: MOV EAX,1 / XOR EAX,EAX; not merelyAL. Each of three
   consecutive16-byte keys compares all four rawDWORDs in offset order0,8,C,4, repeated at+10
   and+20. Unsigned word types express raw bits; equality is signedness-independent, no
   ordering/FP/coercion. All12conditionalbranches target mismatchA663EA; no helpercalls or
   allocation. Caller supplies two valid48-byte regions; no nullpointer fallback or special
   absent/default key interpretation. B14910 invokes this predicate while scanning retained triples
   in0x30-byte strides and stops on first match. This establishes complete raw-key equality, NOT
   native map ID allocation, reference counts, host nullable GameResourceKey encoding, Pattern
   normalization, default-product selection or post-height policy. Analyst role name/types, not
   recovered original class layout. Original instructions/functionbody/Listing unchanged; metadata
   only. */

uint __thiscall FenceDesignTriple_EqualsAllKeyWords(void *this,uint *otherTripleWords)

{
                    /* One pointer stackword; ECX is the left triple. No pointer-identity shortcut.
                        */
  if (((((*otherTripleWords == *(uint *)this) && (otherTripleWords[2] == *(uint *)((int)this + 8)))
       && (otherTripleWords[3] == *(uint *)((int)this + 0xc))) &&
      ((((otherTripleWords[1] == *(uint *)((int)this + 4) &&
         (otherTripleWords[4] == *(uint *)((int)this + 0x10))) &&
        ((otherTripleWords[6] == *(uint *)((int)this + 0x18) &&
         ((otherTripleWords[7] == *(uint *)((int)this + 0x1c) &&
          (otherTripleWords[5] == *(uint *)((int)this + 0x14))))))) &&
       (otherTripleWords[8] == *(uint *)((int)this + 0x20))))) &&
     (((otherTripleWords[10] == *(uint *)((int)this + 0x28) &&
       (otherTripleWords[0xb] == *(uint *)((int)this + 0x2c))) &&
      (otherTripleWords[9] == *(uint *)((int)this + 0x24))))) {
                    /* All12 raw DWORDs equal: full EAX=1, not AL-only. */
    return 1;
  }
                    /* Any mismatch: full EAX=0; both returns clean exactly4 stackbytes. */
  return 0;
}

