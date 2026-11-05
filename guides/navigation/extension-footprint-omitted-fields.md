# Extension-footprint omitted fields

The PC1.67 table reader0062D190 chooses tag1 through constructor6269B0, which
installs vtableFED018. Its +9C slot points to writer8068A0; +A0 to reader806940.
The necessary exact constant, vtable and instruction excerpts are retained in
[decoder contract data](../../evidence/native/decoder-contract-data.tsv).
They are bounded evidence, not invented complete Ghidra function definitions.

| Condition or field | Original behavior |
| --- | --- |
| First field | Read UInt32 reference. A positive value is registered as pending kind2 through629570; registration failure returns false. |
| Subversion<=4 | CMP/JBE at806998 selects8069F7. The reader directly writes float bits3DFBE76D at receiver+10, UInt64FFFFFFFFFFFFFFFF at+18/+1C, and byte0 at+20. No optional13-byte payload is consumed. |
| Subversion>4 | Read four bytes into+10, eight into+18 and one into+20, in order, accumulating stream status. |
| Matching writer |8068A0 writes mapped reference, float+10, UInt64+18 and byte+20. Its table-level version selection is separate. |
| Mask use |806A50 intersects the two words with624970's result and checks all requested bits; all ones is not a Private-footprint owner identity. |
| Scalar use |806AA0 forwards float+10 to the referenced footprint's virtual+78. |

The scalar source10214F4 contains bytes6D E7 FB3D: little-endian binary32
3DFBE76D, approximately0.1230000034. The allocation path80701F..807053 writes
the same scalar/mask/byte into the same receiver, but the reader's own old-version
branch is decisive. A similarly valued field in a different object constructor
would not establish this contract.

Independent expectations: version4 consumes the reference only and yields those
defaults; version5 additionally consumes13 bytes and uses their values. These
are instruction-derived expectations, not old-save, routing or persistence tests.

The inspected Ghidra database has no defined function at806940; its pseudocode
request failed. No function was fabricated, boundary changed or C success
claimed. Memory bytes, the vtable and original-file instruction decoding support
the bounded findings. Complete pending-reference resolution, species taxonomy,
writer-version dispatch and original runtime effects remain separate.
