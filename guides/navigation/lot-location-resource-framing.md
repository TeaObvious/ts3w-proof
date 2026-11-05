# LotLocation routing resource framing

Static original PC1.67 GhidrAssist comparison. Analyst names are descriptive,
not recovered symbols. All8 function bodies are complete canonical pairs;2343
instructions/6980bytes independently match the pristine executable. Actual
annotations and physical thiscall signatures are in the exported Ghidra C. The
database is saved clean; no original bytes were changed. No game execution.

The current geometry helper admits only resource/payload/header5/2/7 and bounded
buffer sections. Original header versions1..11 and writer11 prove that capability
is narrower than the original grammar. Inherited rectangular byte-scanner
matches cannot establish original typed routing surfaces or wall ownership.

## Original writer, reader and consumers

- [LotRouting_WriteLotDataResources ASM](../../evidence/native/functions/0082C2B0_LotRouting_WriteLotDataResources.asm) ([C](../../evidence/native/functions/0082C2B0_LotRouting_WriteLotDataResources.c)): Analyst name. ECX routing owner; four stack slots RET10, AL status. Low byte of final slot gates all writing. Routing critical section owner+918 surrounds lookup and serialization. When enabled, resource046A7235/group0/supplied64-bit lot ID writes UInt32version5 then63CEB0 and657930, accumulating failures; separate07CD07EC/group0 writes version5 and662E70 when the retained lot record exists. Caller/global routing availability gates remain visible. No geometric byte-pattern scanning occurs.
- [LotRouting_ReadLotDataResources ASM](../../evidence/native/functions/0082C4A0_LotRouting_ReadLotDataResources.asm) ([C](../../evidence/native/functions/0082C4A0_LotRouting_ReadLotDataResources.c)): Analyst name. ECX routing owner; four stack slots RET10, AL status. Routing critical section owner+918 surrounds both resource reads. Optional07CD07EC requires exactversion5;046A7235/group0 exact suppliedlotID rejects versions>5, closes/disables below5, and exact5 invokes63D100 then656780 while sticky status permits. Managed pointer-looking lot/version expressions are inferred decompiler types; unsigned32 comparisons and low/high ID words are original instruction facts.
- [LotRouting_WriteLotLocationPayload ASM](../../evidence/native/functions/0063CEB0_LotRouting_WriteLotLocationPayload.asm) ([C](../../evidence/native/functions/0063CEB0_LotRouting_WriteLotLocationPayload.c)): Analyst name. ECX routing owner; three stack slots RET0C, AL status. For admitted lot state/availability writeUInt32payload version2, call621C00(stream,routingowner) on per-lot record, then sized-block begin/finish/backpatch around footprint/object records and key table. Reject/fallback helper63CE40 owns cleanup/status cases. It does not establish arbitrary scanner rectangle/coordinate meanings.
- [LotRouting_ReadLotLocationPayload ASM](../../evidence/native/functions/0063D100_LotRouting_ReadLotLocationPayload.asm) ([C](../../evidence/native/functions/0063D100_LotRouting_ReadLotLocationPayload.c)): Analyst name. ECX routing owner; four stack slots RET10, AL status. ReadUInt32payload version; unsigned>2 fails; <2 enters63CE40 fallback. For2 retain supplied context at lot record+170 and low16+4 at+16C, then623EC0(stream,routingowner). Read sized blocks/object count, invoke per-object reader667230, seek declared relative remaining length, then63CE40 finalization. Version/context pointer expressions in C are type-propagation artifacts.
- [LotRouting_WriteLotIndexPairs ASM](../../evidence/native/functions/00657930_LotRouting_WriteLotIndexPairs.asm) ([C](../../evidence/native/functions/00657930_LotRouting_WriteLotIndexPairs.c)): Analyst name. ECX secondary routing owner; three stack slots RET0C, AL status. Require good stream and owner dependencies. For selected lot, derive indexed UInt32 key/value pairs; writeUInt32version1,count and UInt32key/value rows, missing required lookup fails sticky status. Encoded key combines low10 index bits and neighborhood offsets relative to owner grid. Broader topology semantics remain unresolved; complete original body retained.
- [LotRouting_ReadLotIndexPairs ASM](../../evidence/native/functions/00656780_LotRouting_ReadLotIndexPairs.asm) ([C](../../evidence/native/functions/00656780_LotRouting_ReadLotIndexPairs.c)): Analyst name. ECX secondary routing owner; three physical stack slots RET0C, AL status; only stream slot consumed in body, twoID slots retained for caller ABI. Require stream/dependencies; version>1 returnsfalse; version0 clears sticky status and returnsfalse; version1 readsUInt32count and key/value rows, inserting/updating map+ A0. Original counted comparison unsigned; sticky read failures do not independently stop loop.
- [LotRouting_WriteLotRecordHeader ASM](../../evidence/native/functions/00621C00_LotRouting_WriteLotRecordHeader.asm) ([C](../../evidence/native/functions/00621C00_LotRouting_WriteLotRecordHeader.c)): Analyst name. ECX per-lot record; two physical stack slots RET8, AL status. Complete original body621C00..6221F6; former621C18 was only conditional continuation from621C0D, not independent function. Missing footprint+84 givesAL0. Writer emitsUInt32header version11, two length placeholders, identities/flags/transforms/footprints/connectivity/maps, then backpatches header and external key-table sizes while restoring stream position. C decompiler aliases/indirect calls do not establish additional arguments or signed numeric semantics.
- [LotRouting_ReadLotRecordHeader ASM](../../evidence/native/functions/00623EC0_LotRouting_ReadLotRecordHeader.asm) ([C](../../evidence/native/functions/00623EC0_LotRouting_ReadLotRecordHeader.c)): Analyst name. ECX per-lot record; two stack slots RET8, AL status. Original unsigned header version1..11 admitted. Reads declared block length, imports scoped table via62CF90, reads second relative size and versioned state including identity, flags,transforms,footprint(s),connectivity/maps, then seeks remaining declared bytes. Writer621C00 emits11; current geometry bounds5/2/7 capability is narrower and is not original format completeness. Complete original body retained; type-propagation warning/pointer-cast comparisons are artifacts, instruction widths/branches authoritative.

## Limits

621C00 formerly had a false interior function621C18 at its sole conditional
continuation. The two original instruction bodies were merged through the final
RET8 at6221F4..F6; no instruction or byte changed, and existing comments remain.
The corrected physical header writer includes two stack arguments. Likewise
656780 has three physical slots despite consuming only its stream argument.

Header writer indirect calls and inferred stream vtables still cause decompiler
alias artifacts, including apparent unaffiliated registers. The original PUSH,
RET, UInt32 calls, unsigned gates and backpatch instructions establish the stated
facts; the actual C has not been replaced with hand-reconstructed pseudocode.
Native shape semantics, every malformed stream outcome, external tables and
whole routing manager lifetime remain separate work. Current diagnostic size
fitting and guessed graph coordinates are not certified by this framing proof.
