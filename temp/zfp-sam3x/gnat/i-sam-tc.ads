--
--  Copyright (C) 2020, AdaCore
--

pragma Style_Checks (Off);

--  This spec has been automatically generated from ATSAM3X8E.svd


with System;

package Interfaces.SAM.TC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Channel Control Register (channel = 0)
   type CCR_Register is record
      --  Write-only. Counter Clock Enable Command
      CLKEN         : Boolean := False;
      --  Write-only. Counter Clock Disable Command
      CLKDIS        : Boolean := False;
      --  Write-only. Software Trigger Command
      SWTRG         : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CCR_Register use record
      CLKEN         at 0 range 0 .. 0;
      CLKDIS        at 0 range 1 .. 1;
      SWTRG         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Selection
   type CMR0_TCCLKS_Field is
     (--  Clock selected: TCLK1
      TIMER_CLOCK1,
      --  Clock selected: TCLK2
      TIMER_CLOCK2,
      --  Clock selected: TCLK3
      TIMER_CLOCK3,
      --  Clock selected: TCLK4
      TIMER_CLOCK4,
      --  Clock selected: TCLK5
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR0_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   --  Burst Signal Selection
   type CMR0_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR0_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  External Trigger Edge Selection
   type CMR0_ETRGEDG_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR0_ETRGEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  RA Loading Edge Selection
   type CMR0_LDRA_Field is
     (--  None
      NONE,
      --  Rising edge of TIOA
      RISING,
      --  Falling edge of TIOA
      FALLING,
      --  Each edge of TIOA
      EDGE)
     with Size => 2;
   for CMR0_LDRA_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  RB Loading Edge Selection
   type CMR0_LDRB_Field is
     (--  None
      NONE,
      --  Rising edge of TIOA
      RISING,
      --  Falling edge of TIOA
      FALLING,
      --  Each edge of TIOA
      EDGE)
     with Size => 2;
   for CMR0_LDRB_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  Channel Mode Register (channel = 0)
   type CMR_Register is record
      --  Clock Selection
      TCCLKS         : CMR0_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI           : Boolean := False;
      --  Burst Signal Selection
      BURST          : CMR0_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RB Loading
      LDBSTOP        : Boolean := False;
      --  Counter Clock Disable with RB Loading
      LDBDIS         : Boolean := False;
      --  External Trigger Edge Selection
      ETRGEDG        : CMR0_ETRGEDG_Field := Interfaces.SAM.TC.NONE;
      --  TIOA or TIOB External Trigger Selection
      ABETRG         : Boolean := False;
      --  unspecified
      Reserved_11_13 : Interfaces.SAM.UInt3 := 16#0#;
      --  RC Compare Trigger Enable
      CPCTRG         : Boolean := False;
      --  Waveform Mode
      WAVE           : Boolean := False;
      --  RA Loading Edge Selection
      LDRA           : CMR0_LDRA_Field := Interfaces.SAM.TC.NONE;
      --  RB Loading Edge Selection
      LDRB           : CMR0_LDRB_Field := Interfaces.SAM.TC.NONE;
      --  unspecified
      Reserved_20_31 : Interfaces.SAM.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMR_Register use record
      TCCLKS         at 0 range 0 .. 2;
      CLKI           at 0 range 3 .. 3;
      BURST          at 0 range 4 .. 5;
      LDBSTOP        at 0 range 6 .. 6;
      LDBDIS         at 0 range 7 .. 7;
      ETRGEDG        at 0 range 8 .. 9;
      ABETRG         at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      CPCTRG         at 0 range 14 .. 14;
      WAVE           at 0 range 15 .. 15;
      LDRA           at 0 range 16 .. 17;
      LDRB           at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Clock Selection
   type CMR0_WAVE_EQ_1_TCCLKS_Field is
     (--  Clock selected: TCLK1
      TIMER_CLOCK1,
      --  Clock selected: TCLK2
      TIMER_CLOCK2,
      --  Clock selected: TCLK3
      TIMER_CLOCK3,
      --  Clock selected: TCLK4
      TIMER_CLOCK4,
      --  Clock selected: TCLK5
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR0_WAVE_EQ_1_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   --  Burst Signal Selection
   type CMR0_WAVE_EQ_1_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  External Event Edge Selection
   type CMR0_WAVE_EQ_1_EEVTEDG_Field is
     (--  None
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_EEVTEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  External Event Selection
   type CMR0_WAVE_EQ_1_EEVT_Field is
     (--  TIOB
      TIOB,
      --  XC0
      XC0,
      --  XC1
      XC1,
      --  XC2
      XC2)
     with Size => 2;
   for CMR0_WAVE_EQ_1_EEVT_Field use
     (TIOB => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  Waveform Selection
   type CMR0_WAVE_EQ_1_WAVSEL_Field is
     (--  UP mode without automatic trigger on RC Compare
      UP,
      --  UPDOWN mode without automatic trigger on RC Compare
      UPDOWN,
      --  UP mode with automatic trigger on RC Compare
      UP_RC,
      --  UPDOWN mode with automatic trigger on RC Compare
      UPDOWN_RC)
     with Size => 2;
   for CMR0_WAVE_EQ_1_WAVSEL_Field use
     (UP => 0,
      UPDOWN => 1,
      UP_RC => 2,
      UPDOWN_RC => 3);

   --  RA Compare Effect on TIOA
   type CMR0_WAVE_EQ_1_ACPA_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_ACPA_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOA
   type CMR0_WAVE_EQ_1_ACPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_ACPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOA
   type CMR0_WAVE_EQ_1_AEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_AEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOA
   type CMR0_WAVE_EQ_1_ASWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_ASWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RB Compare Effect on TIOB
   type CMR0_WAVE_EQ_1_BCPB_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BCPB_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOB
   type CMR0_WAVE_EQ_1_BCPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BCPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOB
   type CMR0_WAVE_EQ_1_BEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOB
   type CMR0_WAVE_EQ_1_BSWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR0_WAVE_EQ_1_BSWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Channel Mode Register (channel = 0)
   type TC0_CMR0_WAVE_EQ_1_Register is record
      --  Clock Selection
      TCCLKS  : CMR0_WAVE_EQ_1_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI    : Boolean := False;
      --  Burst Signal Selection
      BURST   : CMR0_WAVE_EQ_1_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : Boolean := False;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : Boolean := False;
      --  External Event Edge Selection
      EEVTEDG : CMR0_WAVE_EQ_1_EEVTEDG_Field := Interfaces.SAM.TC.NONE;
      --  External Event Selection
      EEVT    : CMR0_WAVE_EQ_1_EEVT_Field := Interfaces.SAM.TC.TIOB;
      --  External Event Trigger Enable
      ENETRG  : Boolean := False;
      --  Waveform Selection
      WAVSEL  : CMR0_WAVE_EQ_1_WAVSEL_Field := Interfaces.SAM.TC.UP;
      --  Waveform Mode
      WAVE    : Boolean := False;
      --  RA Compare Effect on TIOA
      ACPA    : CMR0_WAVE_EQ_1_ACPA_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOA
      ACPC    : CMR0_WAVE_EQ_1_ACPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOA
      AEEVT   : CMR0_WAVE_EQ_1_AEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOA
      ASWTRG  : CMR0_WAVE_EQ_1_ASWTRG_Field := Interfaces.SAM.TC.NONE;
      --  RB Compare Effect on TIOB
      BCPB    : CMR0_WAVE_EQ_1_BCPB_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOB
      BCPC    : CMR0_WAVE_EQ_1_BCPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOB
      BEEVT   : CMR0_WAVE_EQ_1_BEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOB
      BSWTRG  : CMR0_WAVE_EQ_1_BSWTRG_Field := Interfaces.SAM.TC.NONE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR0_WAVE_EQ_1_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Stepper Motor Mode Register (channel = 0)
   type SMMR_Register is record
      --  Gray Count Enable
      GCEN          : Boolean := False;
      --  DOWN Count
      DOWN          : Boolean := False;
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SMMR_Register use record
      GCEN          at 0 range 0 .. 0;
      DOWN          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  Status Register (channel = 0)
   type SR_Register is record
      --  Read-only. Counter Overflow Status
      COVFS          : Boolean;
      --  Read-only. Load Overrun Status
      LOVRS          : Boolean;
      --  Read-only. RA Compare Status
      CPAS           : Boolean;
      --  Read-only. RB Compare Status
      CPBS           : Boolean;
      --  Read-only. RC Compare Status
      CPCS           : Boolean;
      --  Read-only. RA Loading Status
      LDRAS          : Boolean;
      --  Read-only. RB Loading Status
      LDRBS          : Boolean;
      --  Read-only. External Trigger Status
      ETRGS          : Boolean;
      --  unspecified
      Reserved_8_15  : Interfaces.SAM.Byte;
      --  Read-only. Clock Enabling Status
      CLKSTA         : Boolean;
      --  Read-only. TIOA Mirror
      MTIOA          : Boolean;
      --  Read-only. TIOB Mirror
      MTIOB          : Boolean;
      --  unspecified
      Reserved_19_31 : Interfaces.SAM.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SR_Register use record
      COVFS          at 0 range 0 .. 0;
      LOVRS          at 0 range 1 .. 1;
      CPAS           at 0 range 2 .. 2;
      CPBS           at 0 range 3 .. 3;
      CPCS           at 0 range 4 .. 4;
      LDRAS          at 0 range 5 .. 5;
      LDRBS          at 0 range 6 .. 6;
      ETRGS          at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CLKSTA         at 0 range 16 .. 16;
      MTIOA          at 0 range 17 .. 17;
      MTIOB          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   --  Interrupt Enable Register (channel = 0)
   type IER_Register is record
      --  Write-only. Counter Overflow
      COVFS         : Boolean := False;
      --  Write-only. Load Overrun
      LOVRS         : Boolean := False;
      --  Write-only. RA Compare
      CPAS          : Boolean := False;
      --  Write-only. RB Compare
      CPBS          : Boolean := False;
      --  Write-only. RC Compare
      CPCS          : Boolean := False;
      --  Write-only. RA Loading
      LDRAS         : Boolean := False;
      --  Write-only. RB Loading
      LDRBS         : Boolean := False;
      --  Write-only. External Trigger
      ETRGS         : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IER_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Disable Register (channel = 0)
   type IDR_Register is record
      --  Write-only. Counter Overflow
      COVFS         : Boolean := False;
      --  Write-only. Load Overrun
      LOVRS         : Boolean := False;
      --  Write-only. RA Compare
      CPAS          : Boolean := False;
      --  Write-only. RB Compare
      CPBS          : Boolean := False;
      --  Write-only. RC Compare
      CPCS          : Boolean := False;
      --  Write-only. RA Loading
      LDRAS         : Boolean := False;
      --  Write-only. RB Loading
      LDRBS         : Boolean := False;
      --  Write-only. External Trigger
      ETRGS         : Boolean := False;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Interrupt Mask Register (channel = 0)
   type IMR_Register is record
      --  Read-only. Counter Overflow
      COVFS         : Boolean;
      --  Read-only. Load Overrun
      LOVRS         : Boolean;
      --  Read-only. RA Compare
      CPAS          : Boolean;
      --  Read-only. RB Compare
      CPBS          : Boolean;
      --  Read-only. RC Compare
      CPCS          : Boolean;
      --  Read-only. RA Loading
      LDRAS         : Boolean;
      --  Read-only. RB Loading
      LDRBS         : Boolean;
      --  Read-only. External Trigger
      ETRGS         : Boolean;
      --  unspecified
      Reserved_8_31 : Interfaces.SAM.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IMR_Register use record
      COVFS         at 0 range 0 .. 0;
      LOVRS         at 0 range 1 .. 1;
      CPAS          at 0 range 2 .. 2;
      CPBS          at 0 range 3 .. 3;
      CPCS          at 0 range 4 .. 4;
      LDRAS         at 0 range 5 .. 5;
      LDRBS         at 0 range 6 .. 6;
      ETRGS         at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Clock Selection
   type CMR1_WAVE_EQ_1_TCCLKS_Field is
     (--  Clock selected: TCLK1
      TIMER_CLOCK1,
      --  Clock selected: TCLK2
      TIMER_CLOCK2,
      --  Clock selected: TCLK3
      TIMER_CLOCK3,
      --  Clock selected: TCLK4
      TIMER_CLOCK4,
      --  Clock selected: TCLK5
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR1_WAVE_EQ_1_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   --  Burst Signal Selection
   type CMR1_WAVE_EQ_1_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  External Event Edge Selection
   type CMR1_WAVE_EQ_1_EEVTEDG_Field is
     (--  None
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_EEVTEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  External Event Selection
   type CMR1_WAVE_EQ_1_EEVT_Field is
     (--  TIOB
      TIOB,
      --  XC0
      XC0,
      --  XC1
      XC1,
      --  XC2
      XC2)
     with Size => 2;
   for CMR1_WAVE_EQ_1_EEVT_Field use
     (TIOB => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  Waveform Selection
   type CMR1_WAVE_EQ_1_WAVSEL_Field is
     (--  UP mode without automatic trigger on RC Compare
      UP,
      --  UPDOWN mode without automatic trigger on RC Compare
      UPDOWN,
      --  UP mode with automatic trigger on RC Compare
      UP_RC,
      --  UPDOWN mode with automatic trigger on RC Compare
      UPDOWN_RC)
     with Size => 2;
   for CMR1_WAVE_EQ_1_WAVSEL_Field use
     (UP => 0,
      UPDOWN => 1,
      UP_RC => 2,
      UPDOWN_RC => 3);

   --  RA Compare Effect on TIOA
   type CMR1_WAVE_EQ_1_ACPA_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_ACPA_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOA
   type CMR1_WAVE_EQ_1_ACPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_ACPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOA
   type CMR1_WAVE_EQ_1_AEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_AEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOA
   type CMR1_WAVE_EQ_1_ASWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_ASWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RB Compare Effect on TIOB
   type CMR1_WAVE_EQ_1_BCPB_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BCPB_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOB
   type CMR1_WAVE_EQ_1_BCPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BCPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOB
   type CMR1_WAVE_EQ_1_BEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOB
   type CMR1_WAVE_EQ_1_BSWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR1_WAVE_EQ_1_BSWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Channel Mode Register (channel = 1)
   type TC0_CMR1_WAVE_EQ_1_Register is record
      --  Clock Selection
      TCCLKS  : CMR1_WAVE_EQ_1_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI    : Boolean := False;
      --  Burst Signal Selection
      BURST   : CMR1_WAVE_EQ_1_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : Boolean := False;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : Boolean := False;
      --  External Event Edge Selection
      EEVTEDG : CMR1_WAVE_EQ_1_EEVTEDG_Field := Interfaces.SAM.TC.NONE;
      --  External Event Selection
      EEVT    : CMR1_WAVE_EQ_1_EEVT_Field := Interfaces.SAM.TC.TIOB;
      --  External Event Trigger Enable
      ENETRG  : Boolean := False;
      --  Waveform Selection
      WAVSEL  : CMR1_WAVE_EQ_1_WAVSEL_Field := Interfaces.SAM.TC.UP;
      --  Waveform Mode
      WAVE    : Boolean := False;
      --  RA Compare Effect on TIOA
      ACPA    : CMR1_WAVE_EQ_1_ACPA_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOA
      ACPC    : CMR1_WAVE_EQ_1_ACPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOA
      AEEVT   : CMR1_WAVE_EQ_1_AEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOA
      ASWTRG  : CMR1_WAVE_EQ_1_ASWTRG_Field := Interfaces.SAM.TC.NONE;
      --  RB Compare Effect on TIOB
      BCPB    : CMR1_WAVE_EQ_1_BCPB_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOB
      BCPC    : CMR1_WAVE_EQ_1_BCPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOB
      BEEVT   : CMR1_WAVE_EQ_1_BEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOB
      BSWTRG  : CMR1_WAVE_EQ_1_BSWTRG_Field := Interfaces.SAM.TC.NONE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR1_WAVE_EQ_1_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Clock Selection
   type CMR2_WAVE_EQ_1_TCCLKS_Field is
     (--  Clock selected: TCLK1
      TIMER_CLOCK1,
      --  Clock selected: TCLK2
      TIMER_CLOCK2,
      --  Clock selected: TCLK3
      TIMER_CLOCK3,
      --  Clock selected: TCLK4
      TIMER_CLOCK4,
      --  Clock selected: TCLK5
      TIMER_CLOCK5,
      --  Clock selected: XC0
      XC0,
      --  Clock selected: XC1
      XC1,
      --  Clock selected: XC2
      XC2)
     with Size => 3;
   for CMR2_WAVE_EQ_1_TCCLKS_Field use
     (TIMER_CLOCK1 => 0,
      TIMER_CLOCK2 => 1,
      TIMER_CLOCK3 => 2,
      TIMER_CLOCK4 => 3,
      TIMER_CLOCK5 => 4,
      XC0 => 5,
      XC1 => 6,
      XC2 => 7);

   --  Burst Signal Selection
   type CMR2_WAVE_EQ_1_BURST_Field is
     (--  The clock is not gated by an external signal.
      NONE,
      --  XC0 is ANDed with the selected clock.
      XC0,
      --  XC1 is ANDed with the selected clock.
      XC1,
      --  XC2 is ANDed with the selected clock.
      XC2)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BURST_Field use
     (NONE => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  External Event Edge Selection
   type CMR2_WAVE_EQ_1_EEVTEDG_Field is
     (--  None
      NONE,
      --  Rising edge
      RISING,
      --  Falling edge
      FALLING,
      --  Each edge
      EDGE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_EEVTEDG_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      EDGE => 3);

   --  External Event Selection
   type CMR2_WAVE_EQ_1_EEVT_Field is
     (--  TIOB
      TIOB,
      --  XC0
      XC0,
      --  XC1
      XC1,
      --  XC2
      XC2)
     with Size => 2;
   for CMR2_WAVE_EQ_1_EEVT_Field use
     (TIOB => 0,
      XC0 => 1,
      XC1 => 2,
      XC2 => 3);

   --  Waveform Selection
   type CMR2_WAVE_EQ_1_WAVSEL_Field is
     (--  UP mode without automatic trigger on RC Compare
      UP,
      --  UPDOWN mode without automatic trigger on RC Compare
      UPDOWN,
      --  UP mode with automatic trigger on RC Compare
      UP_RC,
      --  UPDOWN mode with automatic trigger on RC Compare
      UPDOWN_RC)
     with Size => 2;
   for CMR2_WAVE_EQ_1_WAVSEL_Field use
     (UP => 0,
      UPDOWN => 1,
      UP_RC => 2,
      UPDOWN_RC => 3);

   --  RA Compare Effect on TIOA
   type CMR2_WAVE_EQ_1_ACPA_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_ACPA_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOA
   type CMR2_WAVE_EQ_1_ACPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_ACPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOA
   type CMR2_WAVE_EQ_1_AEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_AEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOA
   type CMR2_WAVE_EQ_1_ASWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_ASWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RB Compare Effect on TIOB
   type CMR2_WAVE_EQ_1_BCPB_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BCPB_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  RC Compare Effect on TIOB
   type CMR2_WAVE_EQ_1_BCPC_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BCPC_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  External Event Effect on TIOB
   type CMR2_WAVE_EQ_1_BEEVT_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BEEVT_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Software Trigger Effect on TIOB
   type CMR2_WAVE_EQ_1_BSWTRG_Field is
     (--  None
      NONE,
      --  Set
      SET,
      --  Clear
      CLEAR,
      --  Toggle
      TOGGLE)
     with Size => 2;
   for CMR2_WAVE_EQ_1_BSWTRG_Field use
     (NONE => 0,
      SET => 1,
      CLEAR => 2,
      TOGGLE => 3);

   --  Channel Mode Register (channel = 2)
   type TC0_CMR2_WAVE_EQ_1_Register is record
      --  Clock Selection
      TCCLKS  : CMR2_WAVE_EQ_1_TCCLKS_Field := Interfaces.SAM.TC.TIMER_CLOCK1;
      --  Clock Invert
      CLKI    : Boolean := False;
      --  Burst Signal Selection
      BURST   : CMR2_WAVE_EQ_1_BURST_Field := Interfaces.SAM.TC.NONE;
      --  Counter Clock Stopped with RC Compare
      CPCSTOP : Boolean := False;
      --  Counter Clock Disable with RC Compare
      CPCDIS  : Boolean := False;
      --  External Event Edge Selection
      EEVTEDG : CMR2_WAVE_EQ_1_EEVTEDG_Field := Interfaces.SAM.TC.NONE;
      --  External Event Selection
      EEVT    : CMR2_WAVE_EQ_1_EEVT_Field := Interfaces.SAM.TC.TIOB;
      --  External Event Trigger Enable
      ENETRG  : Boolean := False;
      --  Waveform Selection
      WAVSEL  : CMR2_WAVE_EQ_1_WAVSEL_Field := Interfaces.SAM.TC.UP;
      --  Waveform Mode
      WAVE    : Boolean := False;
      --  RA Compare Effect on TIOA
      ACPA    : CMR2_WAVE_EQ_1_ACPA_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOA
      ACPC    : CMR2_WAVE_EQ_1_ACPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOA
      AEEVT   : CMR2_WAVE_EQ_1_AEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOA
      ASWTRG  : CMR2_WAVE_EQ_1_ASWTRG_Field := Interfaces.SAM.TC.NONE;
      --  RB Compare Effect on TIOB
      BCPB    : CMR2_WAVE_EQ_1_BCPB_Field := Interfaces.SAM.TC.NONE;
      --  RC Compare Effect on TIOB
      BCPC    : CMR2_WAVE_EQ_1_BCPC_Field := Interfaces.SAM.TC.NONE;
      --  External Event Effect on TIOB
      BEEVT   : CMR2_WAVE_EQ_1_BEEVT_Field := Interfaces.SAM.TC.NONE;
      --  Software Trigger Effect on TIOB
      BSWTRG  : CMR2_WAVE_EQ_1_BSWTRG_Field := Interfaces.SAM.TC.NONE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_CMR2_WAVE_EQ_1_Register use record
      TCCLKS  at 0 range 0 .. 2;
      CLKI    at 0 range 3 .. 3;
      BURST   at 0 range 4 .. 5;
      CPCSTOP at 0 range 6 .. 6;
      CPCDIS  at 0 range 7 .. 7;
      EEVTEDG at 0 range 8 .. 9;
      EEVT    at 0 range 10 .. 11;
      ENETRG  at 0 range 12 .. 12;
      WAVSEL  at 0 range 13 .. 14;
      WAVE    at 0 range 15 .. 15;
      ACPA    at 0 range 16 .. 17;
      ACPC    at 0 range 18 .. 19;
      AEEVT   at 0 range 20 .. 21;
      ASWTRG  at 0 range 22 .. 23;
      BCPB    at 0 range 24 .. 25;
      BCPC    at 0 range 26 .. 27;
      BEEVT   at 0 range 28 .. 29;
      BSWTRG  at 0 range 30 .. 31;
   end record;

   --  Block Control Register
   type TC0_BCR_Register is record
      --  Write-only. Synchro Command
      SYNC          : Boolean := False;
      --  unspecified
      Reserved_1_31 : Interfaces.SAM.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_BCR_Register use record
      SYNC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  External Clock Signal 0 Selection
   type BMR_TC0XC0S_Field is
     (--  Signal connected to XC0: TCLK0
      TCLK0,
      --  Signal connected to XC0: TIOA1
      TIOA1,
      --  Signal connected to XC0: TIOA2
      TIOA2)
     with Size => 2;
   for BMR_TC0XC0S_Field use
     (TCLK0 => 0,
      TIOA1 => 2,
      TIOA2 => 3);

   --  External Clock Signal 1 Selection
   type BMR_TC1XC1S_Field is
     (--  Signal connected to XC1: TCLK1
      TCLK1,
      --  Signal connected to XC1: TIOA0
      TIOA0,
      --  Signal connected to XC1: TIOA2
      TIOA2)
     with Size => 2;
   for BMR_TC1XC1S_Field use
     (TCLK1 => 0,
      TIOA0 => 2,
      TIOA2 => 3);

   --  External Clock Signal 2 Selection
   type BMR_TC2XC2S_Field is
     (--  Signal connected to XC2: TCLK2
      TCLK2,
      --  Signal connected to XC2: TIOA1
      TIOA1,
      --  Signal connected to XC2: TIOA2
      TIOA2)
     with Size => 2;
   for BMR_TC2XC2S_Field use
     (TCLK2 => 0,
      TIOA1 => 2,
      TIOA2 => 3);

   subtype TC0_BMR_MAXFILT_Field is Interfaces.SAM.UInt6;

   --  Block Mode Register
   type TC0_BMR_Register is record
      --  External Clock Signal 0 Selection
      TC0XC0S        : BMR_TC0XC0S_Field := Interfaces.SAM.TC.TCLK0;
      --  External Clock Signal 1 Selection
      TC1XC1S        : BMR_TC1XC1S_Field := Interfaces.SAM.TC.TCLK1;
      --  External Clock Signal 2 Selection
      TC2XC2S        : BMR_TC2XC2S_Field := Interfaces.SAM.TC.TCLK2;
      --  unspecified
      Reserved_6_7   : Interfaces.SAM.UInt2 := 16#0#;
      --  Quadrature Decoder ENabled
      QDEN           : Boolean := False;
      --  POSition ENabled
      POSEN          : Boolean := False;
      --  SPEED ENabled
      SPEEDEN        : Boolean := False;
      --  Quadrature Decoding TRANSparent
      QDTRANS        : Boolean := False;
      --  EDGe on PHA count mode
      EDGPHA         : Boolean := False;
      --  INVerted phA
      INVA           : Boolean := False;
      --  INVerted phB
      INVB           : Boolean := False;
      --  INVerted InDeX
      INVIDX         : Boolean := False;
      --  SWAP PHA and PHB
      SWAP           : Boolean := False;
      --  InDeX pin is PHB pin
      IDXPHB         : Boolean := False;
      --  unspecified
      Reserved_18_18 : Interfaces.SAM.Bit := 16#0#;
      FILTER         : Boolean := False;
      --  MAXimum FILTer
      MAXFILT        : TC0_BMR_MAXFILT_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.SAM.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_BMR_Register use record
      TC0XC0S        at 0 range 0 .. 1;
      TC1XC1S        at 0 range 2 .. 3;
      TC2XC2S        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      QDEN           at 0 range 8 .. 8;
      POSEN          at 0 range 9 .. 9;
      SPEEDEN        at 0 range 10 .. 10;
      QDTRANS        at 0 range 11 .. 11;
      EDGPHA         at 0 range 12 .. 12;
      INVA           at 0 range 13 .. 13;
      INVB           at 0 range 14 .. 14;
      INVIDX         at 0 range 15 .. 15;
      SWAP           at 0 range 16 .. 16;
      IDXPHB         at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      FILTER         at 0 range 19 .. 19;
      MAXFILT        at 0 range 20 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  QDEC Interrupt Enable Register
   type TC0_QIER_Register is record
      --  Write-only. InDeX
      IDX           : Boolean := False;
      --  Write-only. DIRection CHanGe
      DIRCHG        : Boolean := False;
      --  Write-only. Quadrature ERRor
      QERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QIER_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Disable Register
   type TC0_QIDR_Register is record
      --  Write-only. InDeX
      IDX           : Boolean := False;
      --  Write-only. DIRection CHanGe
      DIRCHG        : Boolean := False;
      --  Write-only. Quadrature ERRor
      QERR          : Boolean := False;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QIDR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Mask Register
   type TC0_QIMR_Register is record
      --  Read-only. InDeX
      IDX           : Boolean;
      --  Read-only. DIRection CHanGe
      DIRCHG        : Boolean;
      --  Read-only. Quadrature ERRor
      QERR          : Boolean;
      --  unspecified
      Reserved_3_31 : Interfaces.SAM.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QIMR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  QDEC Interrupt Status Register
   type TC0_QISR_Register is record
      --  Read-only. InDeX
      IDX           : Boolean;
      --  Read-only. DIRection CHanGe
      DIRCHG        : Boolean;
      --  Read-only. Quadrature ERRor
      QERR          : Boolean;
      --  unspecified
      Reserved_3_7  : Interfaces.SAM.UInt5;
      --  Read-only. DIRection
      DIR           : Boolean;
      --  unspecified
      Reserved_9_31 : Interfaces.SAM.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_QISR_Register use record
      IDX           at 0 range 0 .. 0;
      DIRCHG        at 0 range 1 .. 1;
      QERR          at 0 range 2 .. 2;
      Reserved_3_7  at 0 range 3 .. 7;
      DIR           at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  TC0_FMR_ENCF array
   type TC0_FMR_ENCF_Field_Array is array (0 .. 1) of Boolean
     with Component_Size => 1, Size => 2;

   --  Type definition for TC0_FMR_ENCF
   type TC0_FMR_ENCF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ENCF as a value
            Val : Interfaces.SAM.UInt2;
         when True =>
            --  ENCF as an array
            Arr : TC0_FMR_ENCF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for TC0_FMR_ENCF_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Fault Mode Register
   type TC0_FMR_Register is record
      --  ENable Compare Fault Channel 0
      ENCF          : TC0_FMR_ENCF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_2_31 : Interfaces.SAM.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_FMR_Register use record
      ENCF          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype TC0_WPMR_WPKEY_Field is Interfaces.SAM.UInt24;

   --  Write Protect Mode Register
   type TC0_WPMR_Register is record
      --  Write Protect Enable
      WPEN         : Boolean := False;
      --  unspecified
      Reserved_1_7 : Interfaces.SAM.UInt7 := 16#0#;
      --  Write Protect KEY
      WPKEY        : TC0_WPMR_WPKEY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TC0_WPMR_Register use record
      WPEN         at 0 range 0 .. 0;
      Reserved_1_7 at 0 range 1 .. 7;
      WPKEY        at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type TC0_Disc is
     (Default,
      WAVE_EQ_1);

   --  Timer Counter 0
   type TC_Peripheral
     (Discriminent : TC0_Disc := Default)
   is record
      --  Channel Control Register (channel = 0)
      CCR0           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 0)
      SMMR0          : aliased SMMR_Register;
      --  Counter Value (channel = 0)
      CV0            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 0)
      RA0            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 0)
      RB0            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 0)
      RC0            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 0)
      SR0            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 0)
      IER0           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 0)
      IDR0           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 0)
      IMR0           : aliased IMR_Register;
      --  Channel Control Register (channel = 1)
      CCR1           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 1)
      SMMR1          : aliased SMMR_Register;
      --  Counter Value (channel = 1)
      CV1            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 1)
      RA1            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 1)
      RB1            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 1)
      RC1            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 1)
      SR1            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 1)
      IER1           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 1)
      IDR1           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 1)
      IMR1           : aliased IMR_Register;
      --  Channel Control Register (channel = 2)
      CCR2           : aliased CCR_Register;
      --  Stepper Motor Mode Register (channel = 2)
      SMMR2          : aliased SMMR_Register;
      --  Counter Value (channel = 2)
      CV2            : aliased Interfaces.SAM.UInt32;
      --  Register A (channel = 2)
      RA2            : aliased Interfaces.SAM.UInt32;
      --  Register B (channel = 2)
      RB2            : aliased Interfaces.SAM.UInt32;
      --  Register C (channel = 2)
      RC2            : aliased Interfaces.SAM.UInt32;
      --  Status Register (channel = 2)
      SR2            : aliased SR_Register;
      --  Interrupt Enable Register (channel = 2)
      IER2           : aliased IER_Register;
      --  Interrupt Disable Register (channel = 2)
      IDR2           : aliased IDR_Register;
      --  Interrupt Mask Register (channel = 2)
      IMR2           : aliased IMR_Register;
      --  Block Control Register
      BCR            : aliased TC0_BCR_Register;
      --  Block Mode Register
      BMR            : aliased TC0_BMR_Register;
      --  QDEC Interrupt Enable Register
      QIER           : aliased TC0_QIER_Register;
      --  QDEC Interrupt Disable Register
      QIDR           : aliased TC0_QIDR_Register;
      --  QDEC Interrupt Mask Register
      QIMR           : aliased TC0_QIMR_Register;
      --  QDEC Interrupt Status Register
      QISR           : aliased TC0_QISR_Register;
      --  Fault Mode Register
      FMR            : aliased TC0_FMR_Register;
      --  Write Protect Mode Register
      WPMR           : aliased TC0_WPMR_Register;
      case Discriminent is
         when Default =>
            --  Channel Mode Register (channel = 0)
            CMR0 : aliased CMR_Register;
            --  Channel Mode Register (channel = 1)
            CMR1 : aliased CMR_Register;
            --  Channel Mode Register (channel = 2)
            CMR2 : aliased CMR_Register;
         when WAVE_EQ_1 =>
            --  Channel Mode Register (channel = 0)
            CMR0_WAVE_EQ_1 : aliased TC0_CMR0_WAVE_EQ_1_Register;
            --  Channel Mode Register (channel = 1)
            CMR1_WAVE_EQ_1 : aliased TC0_CMR1_WAVE_EQ_1_Register;
            --  Channel Mode Register (channel = 2)
            CMR2_WAVE_EQ_1 : aliased TC0_CMR2_WAVE_EQ_1_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for TC_Peripheral use record
      CCR0           at 16#0# range 0 .. 31;
      SMMR0          at 16#8# range 0 .. 31;
      CV0            at 16#10# range 0 .. 31;
      RA0            at 16#14# range 0 .. 31;
      RB0            at 16#18# range 0 .. 31;
      RC0            at 16#1C# range 0 .. 31;
      SR0            at 16#20# range 0 .. 31;
      IER0           at 16#24# range 0 .. 31;
      IDR0           at 16#28# range 0 .. 31;
      IMR0           at 16#2C# range 0 .. 31;
      CCR1           at 16#40# range 0 .. 31;
      SMMR1          at 16#48# range 0 .. 31;
      CV1            at 16#50# range 0 .. 31;
      RA1            at 16#54# range 0 .. 31;
      RB1            at 16#58# range 0 .. 31;
      RC1            at 16#5C# range 0 .. 31;
      SR1            at 16#60# range 0 .. 31;
      IER1           at 16#64# range 0 .. 31;
      IDR1           at 16#68# range 0 .. 31;
      IMR1           at 16#6C# range 0 .. 31;
      CCR2           at 16#80# range 0 .. 31;
      SMMR2          at 16#88# range 0 .. 31;
      CV2            at 16#90# range 0 .. 31;
      RA2            at 16#94# range 0 .. 31;
      RB2            at 16#98# range 0 .. 31;
      RC2            at 16#9C# range 0 .. 31;
      SR2            at 16#A0# range 0 .. 31;
      IER2           at 16#A4# range 0 .. 31;
      IDR2           at 16#A8# range 0 .. 31;
      IMR2           at 16#AC# range 0 .. 31;
      BCR            at 16#C0# range 0 .. 31;
      BMR            at 16#C4# range 0 .. 31;
      QIER           at 16#C8# range 0 .. 31;
      QIDR           at 16#CC# range 0 .. 31;
      QIMR           at 16#D0# range 0 .. 31;
      QISR           at 16#D4# range 0 .. 31;
      FMR            at 16#D8# range 0 .. 31;
      WPMR           at 16#E4# range 0 .. 31;
      CMR0           at 16#4# range 0 .. 31;
      CMR1           at 16#44# range 0 .. 31;
      CMR2           at 16#84# range 0 .. 31;
      CMR0_WAVE_EQ_1 at 16#4# range 0 .. 31;
      CMR1_WAVE_EQ_1 at 16#44# range 0 .. 31;
      CMR2_WAVE_EQ_1 at 16#84# range 0 .. 31;
   end record;

   --  Timer Counter 0
   TC0_Periph : aliased TC_Peripheral
     with Import, Address => TC0_Base;

   --  Timer Counter 1
   TC1_Periph : aliased TC_Peripheral
     with Import, Address => TC1_Base;

   --  Timer Counter 2
   TC2_Periph : aliased TC_Peripheral
     with Import, Address => TC2_Base;

end Interfaces.SAM.TC;
