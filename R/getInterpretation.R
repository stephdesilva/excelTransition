#' getInterpretation
#'
#' Get a brief, general interpretation of the descriptive statistics
#' generated by the makeDescriptives function.
#'
#' @return interpretation
#' @export
#'
#' @examples
#' getInterpretation()
#'
#'
getInterpretation <- function(){
  interpretation <- tibble(
    Item = c("Variable Name",
             "Variable Type",
             "Factor Levels",
             "Mean",
             "Standard Error of the Mean",
             "Median",
             "Mode",
             "Standard Deviation",
             "Variance",
             "Kurtosis",
             "Skewness",
             "Minimum",
             "Maximum",
             "Sum",
             "Proportion of NA",
             "Number of Observations"),
    Notes = c("The name of the variable",
              "This gives a simplified version of variable type and the way it's intererpreted by this function. It can be date, factor or numeric. This isn't exactly the same as the R type.",
              "The number of levels in a factor variable. 'No Levels' is the response if the variable is not a factor variable. Factors are generally designed to work with just a few levels. This function converts text automatically to factors: if there are many factor levels, consider whether this is a meaningful comparison.",
              "This is the mean you know. Note that for a factor variable, it's not a good way to interpret data and is omitted.",
              "This is simply the standard deviation/square root of sample size. Omitted for factors.",
              "Regular median, omitted for factors.",
              "Most common observation.",
              "Standard deviation, a measure of dispersion in a variable again omitted for factors as not meaningful.",
              "The standard deviation, squared. Measured in units squared of the variable.",
              "This is a measure of 'fat tailedness' - how much of the data is at the outer edges of the distribution? For reference, the normal distribution has kurtosis = 3, so >3 means 'more fat tailed' than the normal distribution. Omited for factors. Note a difference with Excel here: Excel gives kurtosis -3, this calculation just gives kurtosis.",
              "Skewness, a measure of asymmetry. Positive skew, a tail toward the right with the lump of the data to the left. Negative skew, the opposite. Symmetric distribution has skewness = 0. Omitted for factors.",
              "Minimum value, omitted for factors.",
              "Maximum value, omitted for factors.",
              "The sum of all observations, omitted for factors.",
              "Proportion of missing observations.",
              "Total number of observations."
    )

  )

  return(interpretation)
}
