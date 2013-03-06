buildHMM <- function(states, obs, initProbs, trans, em){
  
  #construct the parameters for HMM's model
  
  States <- states
  Obs <- obs
  names(initProbs) <- states
  colnames(trans) <- states
  rownames(trans) <- states
  rownames(em) <- states
  colnames(em) <- obs
  hmm_list <- list(States=States,Symbols=Obs, 
                   InitProbs=initProbs, 
                   Transition=trans, 
                   Emission=em)
  return(hmm_list)
  
}

################
# Test example #
################

states = c("Healthy", "Fever")
symbols = c('normal', 'cold', 'dizzy')
initProbs = c(0.6,0.4)
transProbs = matrix(c(0.7,0.4, 0.3,0.6), 2)
emissionProbs = matrix(c(0.5,0.1,0.4,0.3,0.1,0.6),2)

buildHMM(states=states, obs=symbols, 
         initProbs=initProbs,
         trans=transProbs,em = emissionProbs)