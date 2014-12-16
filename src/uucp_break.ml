(*---------------------------------------------------------------------------
   Copyright (c) 2014 Daniel C. Bünzli. All rights reserved.
   Distributed under the BSD3 license, see license at the end of the file.
   %%NAME%% release %%VERSION%%
  ---------------------------------------------------------------------------*)

include Uucp_break_base

module Low = struct
  let line u = Uucp_tmapbyte.get Uucp_break_data.line_break_map u
  let line_max = line_max
  let line_of_int = line_of_byte

  let grapheme_cluster u =
    Uucp_tmapbyte.get Uucp_break_data.grapheme_cluster_break_map u

  let grapheme_cluster_max = grapheme_cluster_max
  let grapheme_cluster_of_int = grapheme_cluster_of_byte

  let word u = Uucp_tmapbyte.get Uucp_break_data.word_break_map u
  let word_max = word_max
  let word_of_int = word_of_byte

  let sentence u = Uucp_tmapbyte.get Uucp_break_data.sentence_break_map u
  let sentence_max = sentence_max
  let sentence_of_int = sentence_of_byte
end

let line u = Array.unsafe_get Low.line_of_int (Low.line u)
let grapheme_cluster u = Array.unsafe_get Low.grapheme_cluster_of_int
    (Low.grapheme_cluster u)

let word u = Array.unsafe_get Low.word_of_int (Low.word u)
let sentence u = Array.unsafe_get Low.sentence_of_int (Low.sentence u)

(*---------------------------------------------------------------------------
   Copyright (c) 2014 Daniel C. Bünzli.
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions
   are met:

   1. Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.

   3. Neither the name of Daniel C. Bünzli nor the names of
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
   OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  ---------------------------------------------------------------------------*)