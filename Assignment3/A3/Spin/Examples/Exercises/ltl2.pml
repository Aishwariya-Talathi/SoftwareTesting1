never  {    /* []((tioa_tdma_state = 0) U (tioa_tdma_state = 1)) */
T0_init:
	do
	:: ((tioa_tdma_state = 1)) -> goto accept_S9
	:: ((tioa_tdma_state = 0)) -> goto T0_init
	od;
accept_S9:
	do
	:: ((((tioa_tdma_state = 0)) || ((tioa_tdma_state = 1)))) -> goto T0_init
	od;
}
