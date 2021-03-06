rm(list = ls())

# Best case scenario
alpha <- 0.50      
# Worst case scenario
epsilon <- 0.05  

# Sum of beta, gamma, and delta
mid_percentages <- 1 - (alpha + epsilon)           

percentages <- seq(0, mid_percentages, .01)

# Create mid-range probabilities  
# beta
for(beta in percentages){
  # gamma
  for(gamma in percentages){
    # delta 
    for(delta in percentages){
      if(beta + gamma + delta == 0.45){
        print(paste0(beta, " ", gamma, " ", delta))
      }
    }
  }
}


