library verilog;
use verilog.vl_types.all;
entity traffic_controller is
    generic(
        PHASE1          : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi0);
        PHASE2          : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi1);
        PHASE3          : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi0);
        RED             : vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi0);
        YELLOW          : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi0);
        GREEN           : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi1);
        RED_YELLOW      : vl_logic_vector(2 downto 0) := (Hi1, Hi1, Hi0);
        RY              : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        G               : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        Y               : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        R               : vl_logic_vector(1 downto 0) := (Hi1, Hi1)
    );
    port(
        w_to_e          : out    vl_logic_vector(2 downto 0);
        w_to_n          : out    vl_logic_vector(2 downto 0);
        e_to_w          : out    vl_logic_vector(2 downto 0);
        e_to_n          : out    vl_logic_vector(2 downto 0);
        n_to_e          : out    vl_logic_vector(2 downto 0);
        n_to_w          : out    vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PHASE1 : constant is 2;
    attribute mti_svvh_generic_type of PHASE2 : constant is 2;
    attribute mti_svvh_generic_type of PHASE3 : constant is 2;
    attribute mti_svvh_generic_type of RED : constant is 2;
    attribute mti_svvh_generic_type of YELLOW : constant is 2;
    attribute mti_svvh_generic_type of GREEN : constant is 2;
    attribute mti_svvh_generic_type of RED_YELLOW : constant is 2;
    attribute mti_svvh_generic_type of RY : constant is 2;
    attribute mti_svvh_generic_type of G : constant is 2;
    attribute mti_svvh_generic_type of Y : constant is 2;
    attribute mti_svvh_generic_type of R : constant is 2;
end traffic_controller;
