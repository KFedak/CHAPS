
#_______base LF model (no exposure metrics)______________________________
mod_base <- function(df){
    lm(value ~ age_months + height_cm^2 + weight_kg + sex + race_cat + asthma_ever, 
       data = df)
}
#________________________________________________________________________


#_______lifetime average exposure LF model______________________________
mod_lifetime_exp <- function(df){
  lm(value ~ exp_avg_lifetime + age_months + height_cm^2 + weight_kg + sex + race_cat + asthma_ever,
     data = df)
}
#________________________________________________________________________


#_______prior year average exposure LF model______________________________
mod_lastyear_exp <- function(df){
  lm(value ~ exp_avg_lastyear + age_months + height_cm^2 + weight_kg + sex + race_cat + asthma_ever,
     data = df)
}
#________________________________________________________________________

#_______prior months average exposure LF model______________________________
mod_priormonths_exp <- function(df){
  lm(value ~ val + age_months + height_cm^2 + weight_kg + sex + race_cat + asthma_ever,
     data = df)
}
#________________________________________________________________________