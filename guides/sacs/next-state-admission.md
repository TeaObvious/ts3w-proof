# SACS NextState admission and pending publication

Static PC1.67 `/TS3W.exe`, original instructions and table01020828. Analyst names
are roles, not recovered symbols. Four complete canonical pairs conserve219
original bytes/83instructions; original bytes and existing signatures/locals
were not changed. The node body is78bytes with CC margins and no other function overlap;
its boundaries follow all original reachable return paths.

## Node admission

[ASM 007F60F0](../../evidence/native/functions/007F60F0_SacsNextStateNode_TrySchedulePendingState.asm) ([annotated Ghidra C](../../evidence/native/functions/007F60F0_SacsNextStateNode_TrySchedulePendingState.c)).

ECX node; target pointer at+30. First physical stack word is walker; RET10 consumes
four words. Stored zero-argument/unknown convention and C's `in_ECX` are inference
artifacts. Null target or walker returns; leaving byte walker+72 rejects.
Otherwise admit when current pointer+10 is absent, or retained loop+18 exists
and current equals target, or target occurs in current outbound pointer range
[+3C,+40). Retained-loop presence alone and target-current equality alone do not
admit. Accepted targets call the pending setter; no next graph runs here.

[ASM 007F6070](../../evidence/native/functions/007F6070_StatePointerRange_FindIdentity.asm) ([annotated Ghidra C](../../evidence/native/functions/007F6070_StatePointerRange_FindIdentity.c)).

Three caller-popped words: start,end,address-of-target. EAX is first matching
entry address or end; empty range returns end. Entries are4-byte exact pointer
identities. Caller adds ESP,0C and compares EAX/end. Stored/decompiled void return
does not describe this physical result. No name/hash comparison is performed.

## Pending state and dirty propagation

[ASM 007FFDF0](../../evidence/native/functions/007FFDF0_SacsWalker_SetPendingState.asm) ([annotated Ghidra C](../../evidence/native/functions/007FFDF0_SacsWalker_SetPendingState.c)).

ECX walker, target word, RET4 or tail-jump preserving cleanup. Equal pending+1C
returns unchanged. Otherwise store pointer first, forward low byte target!=null
to dirty propagation. Other bits of the forwarded word are incidental. Clearing
pending does not clear an already-dirty walker/driver.

[ASM 007FFD90](../../evidence/native/functions/007FFD90_SacsWalker_PropagateDirtyState.asm) ([annotated Ghidra C](../../evidence/native/functions/007FFD90_SacsWalker_PropagateDirtyState.c)).

ECX walker, Boolean low byte of one physical word, RET4. OR with walker dirty+C,
then driver dirty+146. A dirty driver with nonnull manager invokes the existing
[ASM 007FCF80](../../evidence/native/functions/007FCF80_SACS_QueueOrRevisitDriver_7FCF80.asm) ([annotated Ghidra C](../../evidence/native/functions/007FCF80_SACS_QueueOrRevisitDriver_7FCF80.c)):
coalesce current-driver revisit or pending driver pointer, not immediate graph
execution and not a concurrent worker queue. Dirty byte stores are ordinary writes.

## Five-condition projection and limits

For bit positions leaving1,current2,retained4,target-is-current8,outbound16, the
accepted input rows are0,4,8,12,14,16,18,20,22,24,26,28,30. All odd rows reject.
These rows presuppose valid target and walker; native null guards are separate.
Current graph parent resolves authored chunk identities and suppresses duplicate
pending writes; native uses pointers. Resource resolution/failure, complete graph
stepping, pending replacement lifetime and arbitrary thread scheduling are not
established by this Boolean projection. No original game execution or performance
test was performed. Database was saved clean after annotations.
