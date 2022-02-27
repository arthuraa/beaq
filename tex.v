From mathcomp Require Import all_ssreflect.
Require Import Coq.Strings.Ascii.
Require Import Coq.Strings.String.
From deriving Require Import deriving.
From extructures Require Import ord fset fmap.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Inductive primitive :=
| ExpandAfter.

Definition primitive_indDef :=
  [indDef for primitive_rect].
Canonical primitive_indType :=
  IndType primitive primitive_indDef.
Definition primitive_eqMixin :=
  [derive eqMixin for primitive].
Canonical primitive_eqType :=
  EqType primitive primitive_eqMixin.
Definition primitive_choiceMixin :=
  [derive choiceMixin for primitive].
Canonical primitive_choiceType :=
  Eval hnf in ChoiceType primitive primitive_choiceMixin.
Definition primitive_ordMixin :=
  [derive ordMixin for primitive].
Canonical primitive_ordType :=
  Eval hnf in OrdType primitive primitive_ordMixin.

Inductive token :=
| Prim of primitive
| CS   of string
| Char of ascii.

Definition token_indDef :=
  [indDef for token_rect].
Canonical token_indType :=
  IndType token token_indDef.
Definition token_eqMixin :=
  [derive eqMixin for token].
Canonical token_eqType :=
  EqType token token_eqMixin.
Definition token_choiceMixin :=
  [derive choiceMixin for token].
Canonical token_choiceType :=
  Eval hnf in ChoiceType token token_choiceMixin.
Definition token_ordMixin :=
  [derive ordMixin for token].
Canonical token_ordType :=
  Eval hnf in OrdType token token_ordMixin.
