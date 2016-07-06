-------------------------------------------------------------------------------
--  Copyright (c) 2016 Daniel King
--
--  Permission is hereby granted, free of charge, to any person obtaining a
--  copy of this software and associated documentation files (the "Software"),
--  to deal in the Software without restriction, including without limitation
--  the rights to use, copy, modify, merge, publish, distribute, sublicense,
--  and/or sell copies of the Software, and to permit persons to whom the
--  Software is furnished to do so, subject to the following conditions:
--
--  The above copyright notice and this permission notice shall be included in
--  all copies or substantial portions of the Software.
--
--  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
--  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
--  DEALINGS IN THE SOFTWARE.
-------------------------------------------------------------------------------

with Ada.Interrupts.Names;
with System;

--  @summary
--  Configuration options for the DecaDriver.
package DecaDriver_Config
is

   DW1000_IRQ_Id : constant Ada.Interrupts.Interrupt_ID
     := Ada.Interrupts.Names.EXTI9_5_Interrupt;
   --  The interrupt ID for the DW1000 IRQ line.

   Driver_Priority : constant System.Interrupt_Priority
     := System.Interrupt_Priority'Last;
   --  The interrupt priority used for the DecaDriver's protected objects.

   Receiver_Queue_Size : constant Positive := 2;
   --  The length of the receiver queue used to hold received packets
   --  on the host MCU side.
   --
   --  The minimum value for this configuration parameter is 2.
   --
   --  Larger values for this configuration parameter make it less likely for
   --  a packet to be missed (overrun condition). However, larger values will
   --  use more memory.

end DecaDriver_Config;
