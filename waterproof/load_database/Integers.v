(** * [Subsets.v]
Authors: 
    - Jim Portegies
Creation date: 25 Oct 2021

Importing this file adds the integer related databases 
to the set of databases used by automated tactics
(i.e. tactics that rely on [waterprove]).

--------------------------------------------------------------------------------

This file is part of Waterproof-lib.

Waterproof-lib is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Waterproof-lib is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Waterproof-lib.  If not, see <https://www.gnu.org/licenses/>.
*)

From Ltac2 Require Import Ltac2.
Require Import Waterproof.selected_databases.


Ltac2 Set global_database_selection as old_selection :=
    fun () => combine_ident_lists ((load_db_of_label WaterproofDBIntegers)::(old_selection ())::[]).
Ltac2 Set global_negation_database_selection as old_selection :=
    fun () => combine_ident_lists ((load_db_of_label WaterproofNegationDBIntegers)::(old_selection ())::[]).
