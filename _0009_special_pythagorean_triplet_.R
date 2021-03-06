################################################################################
####################             Project Euler              ####################
####################               Problem 9                ####################
####################      Special Pythagorean triplet       ####################
####################                                        ####################
####################    Solved by R by Lubomir Stepanek     ####################
####################           November 24, 2018            ####################
################################################################################

# A Pythagorean triplet is a set of three natural numbers, a < b < c,
# for which,

#    a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


## -----------------------------------------------------------------------------

################################################################################

## my solution using R ---------------------------------------------------------

n <- 1000
my_output <- NULL

for(a in 1:floor(n / 3)){
    
    for(b in (a + 1):floor((n - a) / 2)){
        
        c <- n - a - b
        
        if(a < b & b < c){
            
            if(a ** 2 + b ** 2 == c ** 2){
                
                my_output <- c(my_output, a * b * c)
                
            }
            
        }
        
    }
    
}

print(
    my_output
)   # 31875000


## -----------------------------------------------------------------------------

################################################################################
################################################################################
################################################################################





