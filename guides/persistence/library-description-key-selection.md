# Library lot description: candidate instance versus requested full key

This extends the Library lifecycle, household/bin and construction-reference
guides. Original PC1.67 executable identity is central; no original process ran.
Two newly needed complete existing-function pairs were retained read-only:

- [9B1780 original ASM](../../evidence/native/functions/009B1780_FUN_009b1780.asm) ([actual C](../../evidence/native/functions/009B1780_FUN_009b1780.c)):165bytes/56instructions.
- [9B1280 original ASM](../../evidence/native/functions/009B1280_FUN_009b1280.asm) ([actual C](../../evidence/native/functions/009B1280_FUN_009b1280.c)):1276bytes/446instructions.

Both listings have complete contiguous original-byte coverage, including both
normal/failure RET paths. No body/byte/prototype mutation, DB annotation or save
was needed. Actual C stack aliases are qualified inline; instruction operands
determine the key contract. Full metadata arithmetic/version semantics are not
proved merely by retaining a full body.

## Query producer and bounded predicate read

9B1780 receives metadata receiverECX and one context stackword, returnsAL/RET4.
It constructs a predicate with vtableFD92B0 and typeD063545B at+4. The context's
database interface virtual+30 receives predicate and output-vector addresses.
The first returned entry's first twoDWORDs are stored in metadata+18/+1C and
passed as instance low/high with context to9B1280. No candidate group/type word
is forwarded. Empty vector returnsAL0. The C rendering reuses predicate/vector
stack names around indirect dispatch; local_18/local_14 are not extra ABI inputs.

Fresh explicit /TS3W.exe MCP read atFD92B0 contains little-endian pointers
EC5720 and5954F0. EC5720's bounded bytes are deleting-destructor-shaped (flag
test, vtable assignment, optional free, RET4), not a key predicate.5954F0's
32-byte read matches pristine bytes; the selected18-byte instruction contract is:

```text
5954F0  8B442404      MOV EAX,[ESP+4]
5954F4  8B5008        MOV EDX,[EAX+8]
5954F7  33C0          XOR EAX,EAX
5954F9  3B5104        CMP EDX,[ECX+4]
5954FC  0F94C0        SETE AL
5954FF  C20400        RET4
```

Thus this candidate comparator reads only native key+8 (type) and predicate+4;
there is no group or instance check in these six instructions. Both address-based
MCP decompiler requests reported Function not found and were collected terminal.
No defined-function body, synthetic decompilation, new DB function or complete
resource-query implementation is claimed for these bounded reads. Concrete
virtual dispatch/iteration order, deletion filtering and provider rules remain
at the database+30 implementation, not established by the comparator alone.

## Reader requests group zero

9B1280 receives receiverECX plus context/instance-low/instance-high, RET0C andAL.
9B12A0/99 write supplied instance words;9B12A4 writes D063545B;9B12AC writes
group0.9B12B4 passes that key and modeBit0 to7D84C0. It then readsUInt16 and
version-gated metadata fields, closes context and returns accumulated status.
Open failure takes9B1772 AL0. The selected candidate's group is not this request.

[7D84C0 existing ASM](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.asm)
([qualified C](../../evidence/native/functions/007D84C0_ResourceStreamContext_OpenWrite.c)) releases previous
resource context, checks status and calls the service from72F140 via virtual+4
with key,outContext,context-field0,(mode!=0)+1,6. OpenWrite is its historical
analyst label, not proof this mode0 reader writes resources. The concrete
resource-service/source-database dispatch, fallback and lifetime must still be
joined before declaring whole-service admission of nonzero-group packages.

This proves the native requested-key identity, not a host policy decision that
group1 descriptions are valid. A host that carries its selected full TGI and
reopens that exact group has a real request difference for nonzero groups.
Its source-selection/failure semantics need the named original resource/provider
path; do not repair this by guessed group0 filtering, skipping to a later
candidate, generic fallback or assuming physical index order equals native order.

## Actual callers, writer and source replacement limits

Existing Library object-import and construction-reference guides retain the
registered996670 ->9A2EB0 ->AD5B30 source/import boundary and AC5A40/ACA430
description read/write with explicit group0 identities. Complete AD5B30, the
selected package/database acquisition, every alias/remap and native file-replace
behavior remain open; a wrapper call does not prove the host filesystem model.

The host currently selects the first live D063545B physical row, reads it from
the open package and carries actual T/G/I through package metadata, imported
content and placement. Companion0611B0E7/34E5247C/94EC4B54 remain group0 at the
selected description instance; staging uses the target's group0 description.
Those host facts belong in the product contract, together with the source stamp,
package reopen and private generated-record/getter boundaries. File path plus
length/time stamp is not an atomic content-generation lease. No package fixture,
gameplay placement, write/reload or race acceptance was executed here.
