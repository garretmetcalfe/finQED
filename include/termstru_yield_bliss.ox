// file termstru_yield_bliss.cc
// author: Bernt A Oedgaard 

#include <oxstd.h>

term_structure_yield_bliss(decl t, decl gamma0, decl gamma1, decl gamma2,
			decl lambda1, decl lambda2) {
    decl r; 
    decl t1 = t/lambda1; 
    decl t2 = t/lambda2; 
    r = gamma0 
	+ gamma1 * ( (1-exp(-t1)) / t1 ) 
	+ gamma2 * ( ( 1-exp(-t2)) / t2 )  
	+ gamma2 * ( -exp(-t2)); 
    return r;
} 
