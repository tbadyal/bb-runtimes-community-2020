------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                        S Y S T E M . E X P L L I                         --
--                                                                          --
--                                 B o d y                                  --
--                                                                          --
--          Copyright (C) 1992-2020, Free Software Foundation, Inc.         --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

package body System.Exp_LLI is

   ---------------------------
   -- Exp_Long_Long_Integer --
   ---------------------------

   --  Note that negative exponents get a constraint error because the
   --  subtype of the Right argument (the exponent) is Natural.

   function Exp_Long_Long_Integer
     (Left  : Long_Long_Integer;
      Right : Natural)
      return  Long_Long_Integer
   is
      Result : Long_Long_Integer := 1;
      Factor : Long_Long_Integer := Left;
      Exp    : Natural := Right;

   begin
      --  We use the standard logarithmic approach, Exp gets shifted right
      --  testing successive low order bits and Factor is the value of the
      --  base raised to the next power of 2.

      --  Note: it is not worth special casing base values -1, 0, +1 since
      --  the expander does this when the base is a literal, and other cases
      --  will be extremely rare.

      if Exp /= 0 then
         loop
            if Exp rem 2 /= 0 then
               declare
                  pragma Unsuppress (All_Checks);
               begin
                  Result := Result * Factor;
               end;
            end if;

            Exp := Exp / 2;
            exit when Exp = 0;

            declare
               pragma Unsuppress (All_Checks);
            begin
               Factor := Factor * Factor;
            end;
         end loop;
      end if;

      return Result;
   end Exp_Long_Long_Integer;

end System.Exp_LLI;
