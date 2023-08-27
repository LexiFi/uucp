(*---------------------------------------------------------------------------
   Copyright (c) 2014 The uucp programmers. All rights reserved.
   SPDX-License-Identifier: ISC
  ---------------------------------------------------------------------------*)

let pp_props ppf ucd =
  let prop = Gen.pp_prop_tmapbool_ucd ppf ucd in
  prop Uucd.ideographic "ideographic";
  prop Uucd.ids_binary_operator "ids_bin_op";
  prop Uucd.ids_trinary_operator "ids_tri_op";
  prop Uucd.radical "radical";
  prop Uucd.unified_ideograph "unified_ideograph";
  ()

let pp_mod ppf ucd = Gen.pp_mod pp_props ppf ucd
