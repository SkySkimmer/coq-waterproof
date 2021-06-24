(** * [DisableWildcard.v]
Authors: 
    - Lulof Pirée (1363638)
Creation date: 15 June 2021

Importing this file sets the global flag [global_use_all_databases]
to [false].
As a result, [waterprove] will use the databases
specified in [global_database_selection],
instead of using [*] as database argument.

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
Require Import Waterproof.waterprove.waterprove.

Ltac2 Set global_use_all_databases := false.


