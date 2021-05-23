--
--  Copyright (C) 2021, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAMG55J19.svd


with System;

--  Nested Vectored Interrupt Controller (NVIC)
package Interfaces.SAM.NVIC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype NVICSTIR_INTID_Field is Interfaces.SAM.UInt9;
   --  NVICSTIR_RESERVED array element
   subtype NVICSTIR_RESERVED_Element is Interfaces.SAM.Bit;

   --  NVICSTIR_RESERVED array
   type NVICSTIR_RESERVED_Field_Array is array (1 .. 23)
     of NVICSTIR_RESERVED_Element
     with Component_Size => 1, Size => 23;

   --  Type definition for NVICSTIR_RESERVED
   type NVICSTIR_RESERVED_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RESERVED as a value
            Val : Interfaces.SAM.UInt23;
         when True =>
            --  RESERVED as an array
            Arr : NVICSTIR_RESERVED_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 23;

   for NVICSTIR_RESERVED_Field use record
      Val at 0 range 0 .. 22;
      Arr at 0 range 0 .. 22;
   end record;

   --  Software Trigger Interrupt Register
   type NVICSTIR_Register is record
      --  Interrupt ID of the interrupt to trigger, in the range 0-239. For
      --  example, a value of 0x03 specifies interrupt IRQ3.
      INTID    : NVICSTIR_INTID_Field := 16#0#;
      --  no description available
      RESERVED : NVICSTIR_RESERVED_Field := (As_Array => False, Val => 16#0#);
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NVICSTIR_Register use record
      INTID    at 0 range 0 .. 8;
      RESERVED at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  Nested Vectored Interrupt Controller (NVIC)
   type NVIC_Peripheral is record
      --  Interrupt Set Enable Register n
      NVICISER0 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Set Enable Register n
      NVICISER1 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER0 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Clear Enable Register n
      NVICICER1 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR0 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Set Pending Register n
      NVICISPR1 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR0 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Clear Pending Register n
      NVICICPR1 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR0 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Active bit Register n
      NVICIABR1 : aliased Interfaces.SAM.UInt32;
      --  Interrupt Priority Register n
      NVICIP0   : aliased Interfaces.SAM.Byte;
      --  Interrupt Priority Register n
      NVICIP1   : aliased Interfaces.SAM.Byte;
      --  Interrupt Priority Register n
      NVICIP2   : aliased Interfaces.SAM.Byte;
      --  Interrupt Priority Register n
      NVICIP3   : aliased Interfaces.SAM.Byte;
      --  Interrupt Priority Register n
      NVICIP4   : aliased Interfaces.SAM.Byte;
      --  Interrupt Priority Register n
      NVICIP5   : aliased Interfaces.SAM.Byte;
      --  Interrupt Priority Register n
      NVICIP6   : aliased Interfaces.SAM.Byte;
      --  Interrupt Priority Register n
      NVICIP7   : aliased Interfaces.SAM.Byte;
      --  Software Trigger Interrupt Register
      NVICSTIR  : aliased NVICSTIR_Register;
   end record
     with Volatile;

   for NVIC_Peripheral use record
      NVICISER0 at   16#0# range 0 .. 31;
      NVICISER1 at   16#4# range 0 .. 31;
      NVICICER0 at  16#80# range 0 .. 31;
      NVICICER1 at  16#84# range 0 .. 31;
      NVICISPR0 at 16#100# range 0 .. 31;
      NVICISPR1 at 16#104# range 0 .. 31;
      NVICICPR0 at 16#180# range 0 .. 31;
      NVICICPR1 at 16#184# range 0 .. 31;
      NVICIABR0 at 16#200# range 0 .. 31;
      NVICIABR1 at 16#204# range 0 .. 31;
      NVICIP0   at 16#300# range 0 .. 7;
      NVICIP1   at 16#301# range 0 .. 7;
      NVICIP2   at 16#302# range 0 .. 7;
      NVICIP3   at 16#303# range 0 .. 7;
      NVICIP4   at 16#304# range 0 .. 7;
      NVICIP5   at 16#305# range 0 .. 7;
      NVICIP6   at 16#306# range 0 .. 7;
      NVICIP7   at 16#307# range 0 .. 7;
      NVICSTIR  at 16#E00# range 0 .. 31;
   end record;

   --  Nested Vectored Interrupt Controller (NVIC)
   NVIC_Periph : aliased NVIC_Peripheral
     with Import, Address => NVIC_Base;

end Interfaces.SAM.NVIC;
