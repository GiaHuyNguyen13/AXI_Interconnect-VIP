`include "uvm_macros.svh"

import uvm_pkg::*;

module tb;
  reg clk;
  
  always #10 clk =~ clk;
  vir_interface _if (clk);

  
  initial begin
    clk <= 0;
    uvm_config_db#(virtual vir_interface)::set(null, "uvm_test_top", "vir_interface", _if);
    run_test("");
  end

  initial begin
    $vcdplusfile("wave_wave.vpd");
    $vcdpluson();
  end

  // Instantiate DUT
  
  our_design dut(

  );


endmodule
